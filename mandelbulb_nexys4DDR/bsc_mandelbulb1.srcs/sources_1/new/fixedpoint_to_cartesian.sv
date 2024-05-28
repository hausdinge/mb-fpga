`timescale 1ns / 1ps

// latency: 48 clock cycles
module fixedpoint_to_cartesian (input logic in_valid, input logic clk, input fixedpoint::number theta, input fixedpoint::number phi,
input fixedpoint::number r, output fixedpoint::number x, output fixedpoint::number y, output fixedpoint::number z, output logic out_valid);
  fixedpoint::number phi_reg [0:23];
  fixedpoint::number out_rsin;
  fixedpoint::number out_rcos [0:24];
  logic valid1, valid2;
  
  fixedpoint::number out_rsin_sin;
  fixedpoint::number out_rsin_cos;
  
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      phi_reg[0] <= phi;
      out_rcos[1] <= out_rcos[0];
      for(int i=0; i <23; i++)begin
        phi_reg[i+1] <= phi_reg[i];
        out_rcos[i+2] <= out_rcos[i+1];
      end
    end
  end
  
  fixedpoint_sin_cos sc1 (in_valid, clk, r, theta, out_rsin, out_rcos[0], valid1);
  fixedpoint_sin_cos sc2 (valid1, clk, out_rsin, phi_reg[23], out_rsin_sin, out_rsin_cos, valid2); 
  
  always_comb begin
    x = 1'b0;
    y = 1'b0;
    z = 1'b0;
    out_valid = 1'b0;
    if(valid2) begin
      x = out_rsin_cos;
      y = out_rsin_sin;
      z = out_rcos[24];
      out_valid = 1'b1;
    end
  end
endmodule
















