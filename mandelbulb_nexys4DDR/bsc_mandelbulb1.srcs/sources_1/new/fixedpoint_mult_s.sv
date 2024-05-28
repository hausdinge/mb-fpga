`timescale 1ns / 1ps

//latency: 10 clock cycles
module fixedpoint_mult_s (input logic in_valid, input logic clk, input fixedpoint::number num1, input fixedpoint::number num2, output fixedpoint::number prod, output logic out_valid);
  logic [33:0] out;
  logic [33:0] out_shifted;
  logic[16:0] A;
  logic[16:0] B;
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
  
  fixedpoint_MSB_index msa(in_valid, clk, num1, msb_index_A, msb_index_A_valid);
  fixedpoint_MSB_index msb(in_valid, clk, num2, msb_index_B, msb_index_B_valid);
  
  mult_gen_0 your_instance_name (
    .CLK(clk),  // input wire CLK
    .A(A),      // input wire [16 : 0] A
    .B(B),      // input wire [16 : 0] B
    .CE(in_valid),    // input wire CE
    .P(out)      // output wire [33 : 0] P
  );
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      back_shift[0] <= 62 -(msb_index_A + msb_index_B);
      back_shift[1] <= back_shift[0];
      back_shift[2] <= back_shift[1];
      back_shift[3] <= back_shift[2];
      back_shift[4] <= back_shift[3];
      back_shift[5] <= back_shift[4];
      
      n1[0] <= num1[64] ? ~num1 + 1'b1 : num1;
      n2[0] <= num2[64] ? ~num2 + 1'b1 : num2;
      
      n1[1] <= n1[0];
      n2[1] <= n2[0];
      
      n1[2] <= n1[1] << (63 - msb_index_A);
      n2[2] <= n2[1] << (63 - msb_index_B);
      
      A <= n1[2][63:47];
      B <= n2[2][63:47];
      
      out_shifted <= (out>>2);
      
      sign <= (sign << 1'b1) + ((num1 != 0 && num2 != 0) ? num1[64]^num2[64] : 0);
      
      prod_reg[0] <= (back_shift[5] < 0) ? out_shifted << (~back_shift[5] + 1'b1) : out_shifted >> back_shift[5]; 
      prod_reg[1] <= sign[8] ? ~prod_reg[0] + 1'b1: prod_reg[0];
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