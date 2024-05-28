`timescale 1ns / 1ps

// find index of leading one fast
// latency: 2 clock cycles
module fixedpoint_MSB_index (
input logic in_valid, 
input logic clk, 
input fixedpoint::number n1, 
output logic[5:0] idx, 
output logic out_valid
);

  fixedpoint::number n2;
  logic [5:0] msb_index = 0;
  logic [1:0] out_valid_reg = 0;
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      
      // don't count the sign bit
      n2 <= n1[fixedpoint::total_bits-1] ? -n1 : n1;
      
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-2] == 1) msb_index <= fixedpoint::total_bits-2;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-3] == 1) msb_index <= fixedpoint::total_bits-3;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-4] == 1) msb_index <= fixedpoint::total_bits-4;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-5] == 1) msb_index <= fixedpoint::total_bits-5;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-6] == 1) msb_index <= fixedpoint::total_bits-6;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-7] == 1) msb_index <= fixedpoint::total_bits-7;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-8] == 1) msb_index <= fixedpoint::total_bits-8;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-9] == 1) msb_index <= fixedpoint::total_bits-9;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-10] == 1) msb_index <= fixedpoint::total_bits-10;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-11] == 1) msb_index <= fixedpoint::total_bits-11;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-12] == 1) msb_index <= fixedpoint::total_bits-12;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-13] == 1) msb_index <= fixedpoint::total_bits-13;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-14] == 1) msb_index <= fixedpoint::total_bits-14;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-15] == 1) msb_index <= fixedpoint::total_bits-15;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-16] == 1) msb_index <= fixedpoint::total_bits-16;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-17] == 1) msb_index <= fixedpoint::total_bits-17;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-18] == 1) msb_index <= fixedpoint::total_bits-18;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-19] == 1) msb_index <= fixedpoint::total_bits-19;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-20] == 1) msb_index <= fixedpoint::total_bits-20;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-21] == 1) msb_index <= fixedpoint::total_bits-21;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-22] == 1) msb_index <= fixedpoint::total_bits-22;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-23] == 1) msb_index <= fixedpoint::total_bits-23;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-24] == 1) msb_index <= fixedpoint::total_bits-24;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-25] == 1) msb_index <= fixedpoint::total_bits-25;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-26] == 1) msb_index <= fixedpoint::total_bits-26;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-27] == 1) msb_index <= fixedpoint::total_bits-27;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-28] == 1) msb_index <= fixedpoint::total_bits-28;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-29] == 1) msb_index <= fixedpoint::total_bits-29;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-30] == 1) msb_index <= fixedpoint::total_bits-30;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-31] == 1) msb_index <= fixedpoint::total_bits-31;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-32] == 1) msb_index <= fixedpoint::total_bits-32;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-33] == 1) msb_index <= fixedpoint::total_bits-33;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-34] == 1) msb_index <= fixedpoint::total_bits-34;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-35] == 1) msb_index <= fixedpoint::total_bits-35;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-36] == 1) msb_index <= fixedpoint::total_bits-36;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-37] == 1) msb_index <= fixedpoint::total_bits-37;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-38] == 1) msb_index <= fixedpoint::total_bits-38;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-39] == 1) msb_index <= fixedpoint::total_bits-39;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-40] == 1) msb_index <= fixedpoint::total_bits-40;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-41] == 1) msb_index <= fixedpoint::total_bits-41;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-42] == 1) msb_index <= fixedpoint::total_bits-42;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-43] == 1) msb_index <= fixedpoint::total_bits-43;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-44] == 1) msb_index <= fixedpoint::total_bits-44;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-45] == 1) msb_index <= fixedpoint::total_bits-45;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-46] == 1) msb_index <= fixedpoint::total_bits-46;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-47] == 1) msb_index <= fixedpoint::total_bits-47;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-48] == 1) msb_index <= fixedpoint::total_bits-48;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-49] == 1) msb_index <= fixedpoint::total_bits-49;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-50] == 1) msb_index <= fixedpoint::total_bits-50;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-51] == 1) msb_index <= fixedpoint::total_bits-51;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-52] == 1) msb_index <= fixedpoint::total_bits-52;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-53] == 1) msb_index <= fixedpoint::total_bits-53;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-54] == 1) msb_index <= fixedpoint::total_bits-54;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-55] == 1) msb_index <= fixedpoint::total_bits-55;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-56] == 1) msb_index <= fixedpoint::total_bits-56;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-57] == 1) msb_index <= fixedpoint::total_bits-57;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-58] == 1) msb_index <= fixedpoint::total_bits-58;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-59] == 1) msb_index <= fixedpoint::total_bits-59;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-60] == 1) msb_index <= fixedpoint::total_bits-60;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-61] == 1) msb_index <= fixedpoint::total_bits-61;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-62] == 1) msb_index <= fixedpoint::total_bits-62;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-63] == 1) msb_index <= fixedpoint::total_bits-63;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-64] == 1) msb_index <= fixedpoint::total_bits-64;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-65] == 1) msb_index <= fixedpoint::total_bits-65;
      if(n2[fixedpoint::total_bits-2:fixedpoint::total_bits-65] == 0) msb_index <= fixedpoint::total_bits-65;
      
      out_valid_reg <= (out_valid_reg << 1'b1) + 1'b1;
    end
  end
  
  always_comb begin
    idx = 1'b0;
    out_valid = 1'b0;
    if(out_valid_reg[1]) begin
      idx = msb_index;
      out_valid = 1'b1;
    end
  end 
endmodule










