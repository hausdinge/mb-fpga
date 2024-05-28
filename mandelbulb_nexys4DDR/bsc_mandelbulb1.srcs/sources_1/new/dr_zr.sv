`timescale 1ns / 1ps

//latency: 29 clock cycles
module dr_zr (input logic in_valid, input logic clk, input fixedpoint::number in_r, 
input fixedpoint::number in_dr, output fixedpoint::number out_zr, output fixedpoint::number out_dr, output logic out_valid);
  fixedpoint::number zr_out[0:19];
  fixedpoint::number dr_out;
  fixedpoint::number dr_reg[0:18];
  logic valid1, valid2;
   
  always_ff @(posedge clk) begin
    if(in_valid) begin
      dr_reg[0] <= in_dr;
      zr_out[1] <= zr_out[0];
      for (int i = 0; i <18;i++)begin
        dr_reg[i+1] <= dr_reg[i];
        zr_out[i+2] <= zr_out[i+1];
      end
    end
  end
  
  fixedpoint_pow8 p8 (in_valid, clk, in_r, zr_out[0], valid1);
  fixedpoint_mult_s mm (valid1, clk, zr_out[0] + (zr_out[0]<<3), dr_reg[18], dr_out, valid2);
  
  always_comb begin
    out_zr = 1'b0;
    out_dr = 1'b0;
    out_valid = 1'b0;
    if(valid2) begin
      out_zr = zr_out[10];
      out_dr = dr_out + fixedpoint::fromInt(1);
      out_valid = 1'b1;
    end
  end
endmodule







