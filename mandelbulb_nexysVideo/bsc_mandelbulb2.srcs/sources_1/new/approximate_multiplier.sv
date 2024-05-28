`timescale 1ns / 1ps
`define USE_APPROX_OFF

// latency 9 clock cycles.
// standard fixedpoint multiplication.
// output Q-format: Q(fixedpoint::integer_bits).(fixedpoint::fractional_bits)
module fixedpoint_mult (
input logic in_valid,            // start calc when input is valid.
input logic clk, 
input fixedpoint::number num1,  
input fixedpoint::number num2, 
output fixedpoint::number prod,  // the result in the output Q-format.
output logic out_valid           // true when output is valid.
);
 
  // pipeline stages of multiplier.
  localparam pipe_len = 8;
  
  // unshifted result.
  logic signed [2*fixedpoint::total_bits-1:0] M [pipe_len-1:0] = '{default:0};
  logic [pipe_len:0] reg_out_valid  = 0;
  fixedpoint::number reg_num1 = 0;
  fixedpoint::number reg_num2 = 0;
  fixedpoint::number res;
  
  always_ff @(posedge clk) begin
    if (in_valid) begin 
      reg_num1 <= num1;
      reg_num2 <= num2;
      M[0] <= reg_num1*reg_num2;
      reg_out_valid[0] <= 1;
      reg_out_valid[1] <= reg_out_valid[0];
      for (int i = 0; i < pipe_len-1; i++) begin
        M[i+1] <= M[i];
        reg_out_valid[i+2] <= reg_out_valid[i+1];
      end
    end
  end
  
  always_comb begin
    // backshift to output Q-format: Q(fixedpoint::integer_bits).(fixedpoint::fractional_bits)
    res = M[pipe_len-1][fixedpoint::total_bits + fixedpoint::fractional_bits - 1: fixedpoint::fractional_bits];
    prod = res;
    out_valid = reg_out_valid[pipe_len];
  end
endmodule


// latency: 10 clock cycles.
// approximate multiplier.
// output Q-format: Q(fixedpoint::integer_bits).(fixedpoint::fractional_bits)
module fixedpoint_mult_s (
input logic in_valid, 
input logic clk, 
input fixedpoint::number num1, 
input fixedpoint::number num2, 
output fixedpoint::number prod, 
output logic out_valid
);
  
  // on the nexys video we can use 2 DSP-Slices for the approximate multiplier
  // because we have enough. This parameter defines the maximum width so that
  // only two DSPs are used.
  localparam dsp_input_width = 34;
  
  logic [2*dsp_input_width-1:0] out;
  logic [2*dsp_input_width-1:0] out_shifted;
  logic[dsp_input_width-1:0] A;
  logic[dsp_input_width-1:0] B;
  logic [8:0] sign = 0;
  
  fixedpoint::number n1[2:0];
  fixedpoint::number n2[2:0];
  fixedpoint::number prod_reg[1:0];
  logic [9:0] out_valid_reg = 0;
  
  logic signed [7:0] back_shift [5:0];
  
  logic[5:0] msb_index_A;
  logic msb_index_A_valid;
  
  logic[5:0] msb_index_B;
  logic msb_index_B_valid;
  
  // leading one index of A.
  fixedpoint_MSB_index msa(in_valid, clk, num1, msb_index_A, msb_index_A_valid);
  
  // leading one index of B.
  fixedpoint_MSB_index msb(in_valid, clk, num2, msb_index_B, msb_index_B_valid);
  
  // IP-Core that uses 2 DSPs for multiplication
  mult_gen_0 ndsp (
    .CLK(clk),      // input wire CLK
    .A(A),          // input wire [33 : 0] A
    .B(B),          // input wire [33 : 0] B
    .CE(in_valid),  // input wire CE
    .P(out)         // output wire [67 : 0] P
  );
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      // We need to remember the backshift, so that the product can be backshifted 
      // to the correct result and output Q-format.
      back_shift[0] <= (fixedpoint::total_bits - 3) - (msb_index_A + msb_index_B);
      back_shift[1] <= back_shift[0];
      back_shift[2] <= back_shift[1];
      back_shift[3] <= back_shift[2];
      back_shift[4] <= back_shift[3];
      back_shift[5] <= back_shift[4];
      
      n1[0] <= num1[fixedpoint::total_bits-1] ? -num1 : num1;
      n2[0] <= num2[fixedpoint::total_bits-1] ? -num2 : num2;
      n1[1] <= n1[0];
      n2[1] <= n2[0];
      
      // shift the leading one to the top but behind the sign bit.
      n1[2] <= n1[1] << ((fixedpoint::total_bits - 2) - msb_index_A);
      n2[2] <= n2[1] << ((fixedpoint::total_bits - 2) - msb_index_B);
      
      // take the first k = dsp_input_width = 34 bits as DSP input.
      A <= n1[2][(fixedpoint::total_bits - 2):(fixedpoint::total_bits - 2)-(dsp_input_width-1)];
      B <= n2[2][(fixedpoint::total_bits - 2):(fixedpoint::total_bits - 2)-(dsp_input_width-1)];
      
      // backshift to correct Q-format.
      out_shifted <= (out >> (2*dsp_input_width - fixedpoint::fractional_bits));
      
      // determine the correct sign for the result.
      sign <= (sign << 1'b1) + ((num1 != 0 && num2 != 0) ? num1[fixedpoint::total_bits-1]^num2[fixedpoint::total_bits-1] : 0);
      
      // backshift to correct result.
      prod_reg[0] <= (back_shift[5] < 0) ? out_shifted << (-back_shift[5]) : out_shifted >> back_shift[5]; 
      prod_reg[1] <= sign[8] ? -prod_reg[0]: prod_reg[0];
      out_valid_reg <= (out_valid_reg << 1'b1) + 1'b1; 
    end
  end
  
  always_comb begin
    prod = 1'b0;
    out_valid = 1'b0;
    if(out_valid_reg[9]) begin
      prod = prod_reg[1];
      out_valid = 1'b1;
    end
  end
endmodule

// latency: 10 clock cycles
// This module uses the approximate multiplier or fixedpoint_mult_s. We can also 
// completely disable the approximation if we have sufficient DSPs.
module approximate_multiplier (
input logic in_valid, input logic clk, 
input fixedpoint::number num1, 
input fixedpoint::number num2, 
output fixedpoint::number prod, 
output logic out_valid
);

`ifdef USE_APPROX_ON
  fixedpoint_mult_s approx_mult (.in_valid, .clk, .num1, .num2, .prod, .out_valid);
`elsif USE_APPROX_OFF

  fixedpoint::number ou [0:1];
  logic [0:1] val;
  fixedpoint_mult fm (in_valid, clk, num1, num2, ou[0], val[0]);
  
  always @(posedge clk) begin
    ou[1] <= ou[0];
    val[1] <= val[0];
  end
  
  always_comb begin
    prod = 1'b0;
    out_valid = 1'b0;
    if(val[1]) begin
      prod = ou[1];
      out_valid = 1'b1;
    end
  end

`else
  assign prod = 0;
`endif
endmodule














