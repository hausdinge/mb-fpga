`timescale 1ns / 1ps

//latency: 19 clock cycles
module fixedpoint_pow8 (input logic in_valid, input logic clk, input fixedpoint::number num1, output fixedpoint::number pow8, output logic out_valid);
  logic [18:0] out_valid_reg = 0;
  logic [69:0] nn[2:0];
  localparam shift = 32;
  localparam back_shift = 24;
  fixedpoint::number res;
  
  mult_35_35_core pw2_1 (.CLK(clk), .A(num1>>1), .B(num1>>1), .CE(in_valid), .P(nn[0]));
  mult_35_35_core pw2_2 (.CLK(clk), .A(nn[0]>>shift), .B(nn[0]>>shift), .CE(in_valid), .P(nn[1]));
  mult_35_35_core pw2_3 (.CLK(clk), .A(nn[1]>>shift), .B(nn[1]>>shift), .CE(in_valid), .P(nn[2]));
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      out_valid_reg <= (out_valid_reg << 1'b1) + 1'b1; 
      res <= nn[2]>>back_shift;
    end
  end
  
  always_comb begin
    pow8 = 1'b0;
    out_valid = 1'b0;
    if(out_valid_reg[18]) begin
      pow8 = res;
      out_valid = 1'b1;
    end
  end
endmodule
