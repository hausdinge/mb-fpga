`timescale 1ns / 1ps

//latency: 10 clock cycles
module fixedpoint_cos (input logic in_valid, input logic clk, input fixedpoint::number n1, output fixedpoint::number cos, output logic out_valid);
  //cos(x) = sin(x+pi/2)
  fixedpoint::number res;
  logic out_valid_reg;
  
  //pi/2
  fixedpoint::number offset = fixedpoint::fromfrac #(32)::fp(1, 32'b10010010000111111011010101000101);
  fixedpoint_sin vv(in_valid, clk, n1 + offset, res, out_valid_reg);
  
  always_comb begin
    cos = 1'b0;
    out_valid = 1'b0;
    if(out_valid_reg) begin
      cos = res;
      out_valid = 1'b1;
    end
  end
endmodule
