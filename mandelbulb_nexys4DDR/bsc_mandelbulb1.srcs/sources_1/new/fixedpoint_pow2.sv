`timescale 1ns / 1ps

//latency: 10 clock cycles
module fixedpoint_pow2 (input logic in_valid, input logic clk, input fixedpoint::number num1, output fixedpoint::number pow2, output logic out_valid);
  logic [33:0] out;
  logic [33:0] out_shifted;
  logic[16:0] A;
  
  fixedpoint::number n1[2:0];
  fixedpoint::number prod_reg[1:0];
  logic [9:0] out_valid_reg = 0;
  
  logic signed [7:0] back_shift [5:0];
  
  logic[5:0] msb_index_A;
  logic msb_index_A_valid;
  
  fixedpoint_MSB_index msa(in_valid, clk, num1, msb_index_A, msb_index_A_valid);
  
  mult_gen_0 your_instance_name (
    .CLK(clk),  // input wire CLK
    .A(A),      // input wire [16 : 0] A
    .B(A),      // input wire [16 : 0] B
    .CE(in_valid),    // input wire CE
    .P(out)      // output wire [33 : 0] P
  );
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      back_shift[0] <= 62 -(msb_index_A + msb_index_A);
      back_shift[1] <= back_shift[0];
      back_shift[2] <= back_shift[1];
      back_shift[3] <= back_shift[2];
      back_shift[4] <= back_shift[3];
      back_shift[5] <= back_shift[4];
      
      n1[0] <= num1[64] ? ~num1 + 1'b1 : num1;
      
      n1[1] <= n1[0];
     
      n1[2] <= n1[1] << (63 - msb_index_A);
     
      A <= n1[2][63:47];
     
      out_shifted <= (out>>2);
    
      prod_reg[0] <= (back_shift[5] < 0) ? out_shifted << (~back_shift[5] + 1'b1) : out_shifted >> back_shift[5]; 
      prod_reg[1] <= prod_reg[0];
      out_valid_reg <= (out_valid_reg << 1'b1) + 1'b1; 
    end
  end
  
  always_comb begin
    pow2 = 1'b0;
    out_valid = 1'b0;
    if(out_valid_reg[9]) begin
      pow2 = prod_reg[1];
      out_valid = 1'b1;
    end
  end
endmodule
