`timescale 1ns / 1ps

//latency: 22 clock cycles
module fixedpoint_norm (input logic in_valid, input logic clk, input fixedpoint::number x, input fixedpoint::number y,input fixedpoint::number z,output fixedpoint::number norm, output logic out_valid);
  logic [3:0] iv;
  fixedpoint::number nn[3:0];
  
  fixedpoint_pow2 p1 (in_valid, clk, x, nn[0], iv[0]);
  fixedpoint_pow2 p2 (in_valid, clk, y, nn[1], iv[1]);
  fixedpoint_pow2 p3 (in_valid, clk, z, nn[2], iv[2]);
  
  fixedpoint_sqrt sq1 (iv[2], clk, nn[0]+nn[1]+nn[2] , nn[3], iv[3]);
  
  always_comb begin
    norm = 1'b0;
    out_valid = 1'b0;
    if(iv[3]) begin
      norm = nn[3];
      out_valid = 1'b1;
    end
  end
endmodule
