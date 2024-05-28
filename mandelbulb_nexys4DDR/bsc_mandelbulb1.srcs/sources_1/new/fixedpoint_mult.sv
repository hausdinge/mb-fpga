`timescale 1ns / 1ps

// latency 9 clock cycles
// out_valid must appear at the same time as the first result comes
module fixedpoint_mult (input logic in_valid, input logic clk, input fixedpoint::number num1, input fixedpoint::number num2, output fixedpoint::number prod, output logic out_valid);
  localparam pipe_len = 8;
  
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
    res = M[pipe_len-1][fixedpoint::total_bits + fixedpoint::fractional_bits - 1: fixedpoint::fractional_bits];
    prod = res;
    out_valid = reg_out_valid[pipe_len];
  end
endmodule
