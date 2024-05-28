`timescale 1ns / 1ps

//latency: 7 clock cycles
module fixedpoint_MSB_index2(input logic in_valid, input logic clk, input fixedpoint::number n1, output logic [5:0] idx, output logic out_valid);
  fixedpoint::number n2;
  
  logic [31:0] zres0;
  logic [15:0] zres1;
  logic [7:0] zres2;
  logic [3:0] zres3;
  logic [1:0] zres4;
  
  logic [5:0] accum [0:5] = '{default:0};
  logic [6:0] out_valid_reg = 0;
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      n2 <= n1[64] ? ~n1 + 1'b1 : n1;
      out_valid_reg <= (out_valid_reg << 1'b1) + 1'b1; 
   
      zres0 <= (n2[63:32] != 0) ? n2[63:32] : n2[31:0];
      accum[0] <= (n2[63:32] != 0) ? 6'd32 : 0;
      
      zres1 <= (zres0[31:16] != 0) ? zres0[31:16] : zres0[15:0];
      accum[1] <= (zres0[31:16] != 0) ? 5'd16 + accum[0] : accum[0];
      
      zres2 <= (zres1[15:8] != 0) ? zres1[15:8] : zres1[7:0];
      accum[2] <= (zres1[15:8] != 0) ? 4'd8 + accum[1] : accum[1];
      
      zres3 <= (zres2[7:4] != 0) ? zres2[7:4] : zres2[3:0];
      accum[3] <= (zres2[7:4] != 0) ? 3'd4 + accum[2] : accum[2];
      
      zres4 <= (zres3[3:2] != 0) ? zres3[3:2] : zres3[1:0];
      accum[4] <= (zres3[3:2] != 0) ? 2'd2 + accum[3] : accum[3];
      
      accum[5] <= (zres4[1] != 0) ? 1'd1 + accum[4] : accum[4];
    end
  end
  
  always_comb begin
    idx = 1'b0;
    out_valid = 1'b0;
    if(out_valid_reg[6]) begin
      idx = accum[5];
      out_valid = 1'b1;
    end
  end
endmodule












