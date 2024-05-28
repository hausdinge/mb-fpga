`timescale 1ns / 1ps

// latency: 55 clock cycles
// distance_estimator.
module mb_log_dist (
input logic in_valid, 
input logic clk, 
input fixedpoint::number in_r, 
input fixedpoint::number in_dr, 
output fixedpoint::number logdist, 
output logic out_valid
);
  
  localparam latency_bkmlog_cordicdiv = 35;
  
  fixedpoint::number inv_dr;
  fixedpoint::number log2;
  fixedpoint::number log2_inv_dr;
  fixedpoint::number scaled_r[0:latency_bkmlog_cordicdiv];
  fixedpoint::number log_scale = fixedpoint::fromfrac #(32)::fp(0, 32'b01011000101110010000101111111011);
  fixedpoint::number r_reg;
  fixedpoint::number res;
 
  logic valid1, valid2, valid3, valid4, valid5;
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      scaled_r[1] <= scaled_r[0];
      for(int i=0; i <latency_bkmlog_cordicdiv-1; i++)begin
        scaled_r[i+2] <= scaled_r[i+1];
      end 
    end
  end
  
  // steps of the distance_estimator.
  cordic_inverse_number invn (in_valid, clk, in_dr, inv_dr, valid1);
  bkm_log2 lg2 (in_valid, clk, in_r, log2, valid2);
  approximate_multiplier approxmult_dst1 (valid2 , clk, inv_dr, log2, log2_inv_dr, valid3);
  approximate_multiplier approxmult_dst2 (in_valid , clk, in_r, log_scale, scaled_r[0], valid4);
  approximate_multiplier approxmult_dst3 (valid3, clk, log2_inv_dr, scaled_r[latency_bkmlog_cordicdiv], res, valid5);
  
  always_comb begin
    logdist = 1'b0;
    out_valid = 1'b0;
    if(valid5) begin
      logdist = res;
      out_valid = 1'b1;
    end
  end
endmodule











