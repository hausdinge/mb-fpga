`timescale 1ns / 1ps

//latency: 30 clock cycles
module fixedpoint_pow7(input logic in_valid, input logic clk, input fixedpoint::number num1, output fixedpoint::number pow7, output logic out_valid);
  logic [4:0] iv;
  fixedpoint::number nn[4:0];
  
  fixedpoint::number delayed_num [9:0];
  
  fixedpoint_pow2 p1 (in_valid, clk, num1, nn[0], iv[0]);
  fixedpoint_pow2 p2 (iv[0], clk, nn[0], nn[1], iv[1]);
  
  fixedpoint_pow2 p3 (in_valid, clk, num1, nn[2], iv[2]);
  
  fixedpoint_mult_s p4 (iv[2], clk, delayed_num[9], nn[2] ,nn[3], iv[3]);
  
  fixedpoint_mult_s p5 (iv[3], clk, nn[1], nn[3] ,nn[4], iv[4]);
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      delayed_num[0] <= num1;
      for(int i = 0; i < 9; i++)begin
        delayed_num[i+1] <= delayed_num[i];
      end
    end
  end
  
  always_comb begin
    pow7 = 1'b0;
    out_valid = 1'b0;
    if(iv[4]) begin
      pow7 = nn[4];
      out_valid = 1'b1;
    end
  end
endmodule
