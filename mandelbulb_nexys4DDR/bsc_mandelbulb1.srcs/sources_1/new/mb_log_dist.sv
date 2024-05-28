`timescale 1ns / 1ps

//latency: 27 clock cycles
module mb_log_dist(input logic in_valid, input logic clk, input fixedpoint::number in_r, input fixedpoint::number in_dr, 
output fixedpoint::number logdist, output logic out_valid);
  fixedpoint::number inv_dr;
  fixedpoint::number log2;
  fixedpoint::number log2_inv_dr;
  fixedpoint::number scaled_r[0:7];
  fixedpoint::number log_scale = fixedpoint::fromfrac #(32)::fp(0, 32'b01011000101110010000101111111011);
  fixedpoint::number r_reg;
  fixedpoint::number res;
  logic [5:0] steps_reg [0:26];
  logic valid1, valid2, valid3, valid4, valid5;
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      scaled_r[1] <= scaled_r[0];
      for(int i=0; i <6; i++)begin
        scaled_r[i+2] <= scaled_r[i+1];
      end 
    end
  end
  
  fixedpoint_inverse_number invn (in_valid, clk, in_dr, inv_dr, valid1);
  fixedpoint_log2 lg2 (in_valid, clk, in_r, log2, valid2);
  fixedpoint_mult_s m1 (valid2 , clk, inv_dr, log2, log2_inv_dr, valid3);
  fixedpoint_mult_s m2 (in_valid , clk, in_r, log_scale, scaled_r[0], valid4);
  fixedpoint_mult_s m3 (valid3, clk, log2_inv_dr, scaled_r[7], res, valid5);
  
  always_comb begin
    logdist = 1'b0;
    out_valid = 1'b0;
    if(valid5) begin
      logdist = res;
      out_valid = 1'b1;
    end
  end
endmodule











