`timescale 1ns / 1ps

//latency: 12 clock cycles
module fixedpoint_sqrt (input logic in_valid, input logic clk, input fixedpoint::number n1, output fixedpoint::number sqrt, output logic out_valid);
  /*logic[31:0] x[0:2] = '{
    32'b10000000000000000000000000000000,
    32'b10111001000101000001001101111010,
    32'b10000000000000000000000000000000
  };
  
  logic[31:0] b[0:1] = '{
    32'b01100001110000000000100101000001,
    32'b01110111011000010100101111010010
  };*/
  
  fixedpoint::number n2;
  fixedpoint::number res;
  fixedpoint::number n3;
  fixedpoint::number d;
  fixedpoint::number pow_half[0:5];
  fixedpoint::number delayed_sq[0:5];
  fixedpoint::number sq = 0;
  fixedpoint::number shifted_num;
  fixedpoint::number m[0:7];
 
  logic [11:0] out_valid_reg = 0;
  logic [5:0] msb_index = 0;
  logic [5:0] msb_reg[2:0];
  logic  signed [7:0] back_shift [0:6];
  logic [11:0] addr;
 
  always_ff @(posedge clk) begin
    if(in_valid) begin
      n2 <= n1[64] ? ~n1 + 1'b1 : n1;
      n3 <= n2;
    
      if(n2[63:63] == 1) msb_index <= 63;
      if(n2[63:62] == 1) msb_index <= 62;
      if(n2[63:61] == 1) msb_index <= 61;
      if(n2[63:60] == 1) msb_index <= 60;
      if(n2[63:59] == 1) msb_index <= 59;
      if(n2[63:58] == 1) msb_index <= 58;
      if(n2[63:57] == 1) msb_index <= 57;
      if(n2[63:56] == 1) msb_index <= 56;
      if(n2[63:55] == 1) msb_index <= 55;
      if(n2[63:54] == 1) msb_index <= 54;
      if(n2[63:53] == 1) msb_index <= 53;
      if(n2[63:52] == 1) msb_index <= 52;
      if(n2[63:51] == 1) msb_index <= 51;
      if(n2[63:50] == 1) msb_index <= 50;
      if(n2[63:49] == 1) msb_index <= 49;
      if(n2[63:48] == 1) msb_index <= 48;
      if(n2[63:47] == 1) msb_index <= 47;
      if(n2[63:46] == 1) msb_index <= 46;
      if(n2[63:45] == 1) msb_index <= 45;
      if(n2[63:44] == 1) msb_index <= 44;
      if(n2[63:43] == 1) msb_index <= 43;
      if(n2[63:42] == 1) msb_index <= 42;
      if(n2[63:41] == 1) msb_index <= 41;
      if(n2[63:40] == 1) msb_index <= 40;
      if(n2[63:39] == 1) msb_index <= 39;
      if(n2[63:38] == 1) msb_index <= 38;
      if(n2[63:37] == 1) msb_index <= 37;
      if(n2[63:36] == 1) msb_index <= 36;
      if(n2[63:35] == 1) msb_index <= 35;
      if(n2[63:34] == 1) msb_index <= 34;
      if(n2[63:33] == 1) msb_index <= 33;
      if(n2[63:32] == 1) msb_index <= 32;
      if(n2[63:31] == 1) msb_index <= 31;
      if(n2[63:30] == 1) msb_index <= 30;
      if(n2[63:29] == 1) msb_index <= 29;
      if(n2[63:28] == 1) msb_index <= 28;
      if(n2[63:27] == 1) msb_index <= 27;
      if(n2[63:26] == 1) msb_index <= 26;
      if(n2[63:25] == 1) msb_index <= 25;
      if(n2[63:24] == 1) msb_index <= 24;
      if(n2[63:23] == 1) msb_index <= 23;
      if(n2[63:22] == 1) msb_index <= 22;
      if(n2[63:21] == 1) msb_index <= 21;
      if(n2[63:20] == 1) msb_index <= 20;
      if(n2[63:19] == 1) msb_index <= 19;
      if(n2[63:18] == 1) msb_index <= 18;
      if(n2[63:17] == 1) msb_index <= 17;
      if(n2[63:16] == 1) msb_index <= 16;
      if(n2[63:15] == 1) msb_index <= 15;
      if(n2[63:14] == 1) msb_index <= 14;
      if(n2[63:13] == 1) msb_index <= 13;
      if(n2[63:12] == 1) msb_index <= 12;
      if(n2[63:11] == 1) msb_index <= 11;
      if(n2[63:10] == 1) msb_index <= 10;
      if(n2[63:9] == 1) msb_index <= 9;
      if(n2[63:8] == 1) msb_index <= 8;
      if(n2[63:7] == 1) msb_index <= 7;
      if(n2[63:6] == 1) msb_index <= 6;
      if(n2[63:5] == 1) msb_index <= 5;
      if(n2[63:4] == 1) msb_index <= 4;
      if(n2[63:3] == 1) msb_index <= 3;
      if(n2[63:2] == 1) msb_index <= 2;
      if(n2[63:1] == 1) msb_index <= 1;
      if(n2[63:0] == 1) msb_index <= 0;
      if(n2 == 0) msb_index <= 0;
      
      if(msb_index == 63) shifted_num <= (n3 >> 32);
      if(msb_index == 62) shifted_num <= (n3 >> 31);
      if(msb_index == 61) shifted_num <= (n3 >> 30);
      if(msb_index == 60) shifted_num <= (n3 >> 29);
      if(msb_index == 59) shifted_num <= (n3 >> 28);
      if(msb_index == 58) shifted_num <= (n3 >> 27);
      if(msb_index == 57) shifted_num <= (n3 >> 26);
      if(msb_index == 56) shifted_num <= (n3 >> 25);
      if(msb_index == 55) shifted_num <= (n3 >> 24);
      if(msb_index == 54) shifted_num <= (n3 >> 23);
      if(msb_index == 53) shifted_num <= (n3 >> 22);
      if(msb_index == 52) shifted_num <= (n3 >> 21);
      if(msb_index == 51) shifted_num <= (n3 >> 20);
      if(msb_index == 50) shifted_num <= (n3 >> 19);
      if(msb_index == 49) shifted_num <= (n3 >> 18);
      if(msb_index == 48) shifted_num <= (n3 >> 17);
      if(msb_index == 47) shifted_num <= (n3 >> 16);
      if(msb_index == 46) shifted_num <= (n3 >> 15);
      if(msb_index == 45) shifted_num <= (n3 >> 14);
      if(msb_index == 44) shifted_num <= (n3 >> 13);
      if(msb_index == 43) shifted_num <= (n3 >> 12);
      if(msb_index == 42) shifted_num <= (n3 >> 11);
      if(msb_index == 41) shifted_num <= (n3 >> 10);
      if(msb_index == 40) shifted_num <= (n3 >> 9);
      if(msb_index == 39) shifted_num <= (n3 >> 8);
      if(msb_index == 38) shifted_num <= (n3 >> 7);
      if(msb_index == 37) shifted_num <= (n3 >> 6);
      if(msb_index == 36) shifted_num <= (n3 >> 5);
      if(msb_index == 35) shifted_num <= (n3 >> 4);
      if(msb_index == 34) shifted_num <= (n3 >> 3);
      if(msb_index == 33) shifted_num <= (n3 >> 2);
      if(msb_index == 32) shifted_num <= (n3 >> 1);
      if(msb_index == 31) shifted_num <= (n3 >> 0);
      if(msb_index == 30) shifted_num <= (n3 << 1);
      if(msb_index == 29) shifted_num <= (n3 << 2);
      if(msb_index == 28) shifted_num <= (n3 << 3);
      if(msb_index == 27) shifted_num <= (n3 << 4);
      if(msb_index == 26) shifted_num <= (n3 << 5);
      if(msb_index == 25) shifted_num <= (n3 << 6);
      if(msb_index == 24) shifted_num <= (n3 << 7);
      if(msb_index == 23) shifted_num <= (n3 << 8);
      if(msb_index == 22) shifted_num <= (n3 << 9);
      if(msb_index == 21) shifted_num <= (n3 << 10);
      if(msb_index == 20) shifted_num <= (n3 << 11);
      if(msb_index == 19) shifted_num <= (n3 << 12);
      if(msb_index == 18) shifted_num <= (n3 << 13);
      if(msb_index == 17) shifted_num <= (n3 << 14);
      if(msb_index == 16) shifted_num <= (n3 << 15);
      if(msb_index == 15) shifted_num <= (n3 << 16);
      if(msb_index == 14) shifted_num <= (n3 << 17);
      if(msb_index == 13) shifted_num <= (n3 << 18);
      if(msb_index == 12) shifted_num <= (n3 << 19);
      if(msb_index == 11) shifted_num <= (n3 << 20);
      if(msb_index == 10) shifted_num <= (n3 << 21);
      if(msb_index == 9) shifted_num <= (n3 << 22);
      if(msb_index == 8) shifted_num <= (n3 << 23);
      if(msb_index == 7) shifted_num <= (n3 << 24);
      if(msb_index == 6) shifted_num <= (n3 << 25);
      if(msb_index == 5) shifted_num <= (n3 << 26);
      if(msb_index == 4) shifted_num <= (n3 << 27);
      if(msb_index == 3) shifted_num <= (n3 << 28);
      if(msb_index == 2) shifted_num <= (n3 << 29);
      if(msb_index == 1) shifted_num <= (n3 << 30);
      if(msb_index == 0) shifted_num <= (n3 << 31);
      
      d <= shifted_num;
      
      m[0] <= shifted_num >> 1;
      m[1] <= shifted_num >> 3;
      m[2] <= shifted_num >> 5;
      m[3] <= shifted_num >> 6;
      m[4] <= shifted_num >> 7;
      m[5] <= shifted_num >> 9;
      m[6] <= shifted_num >> 12;
      m[7] <= shifted_num >> 13;
      
      
      if(d < 32'hB914137A) begin
        sq <= m[0] + m[1] + m[3] + m[4] + m[5] + 32'h61C00941;
      end
      
      if(d >= 32'hB914137A) begin
        sq <= m[0] + m[2] + m[5] + m[6] + m[7] + 32'h77614BD2;
      end
      
      delayed_sq[0] <= sq;
      delayed_sq[1] <= delayed_sq[0];
      delayed_sq[2] <= delayed_sq[1];
      delayed_sq[3] <= delayed_sq[2];
      delayed_sq[4] <= delayed_sq[3];
      delayed_sq[5] <= delayed_sq[4];

      msb_reg[0] <= msb_index;
      msb_reg[1] <= msb_reg[0];
    
      back_shift[0] <= 31 - msb_reg[1];
      back_shift[1] <= back_shift[0];
      back_shift[2] <= back_shift[1];
      back_shift[3] <= back_shift[2];
      back_shift[4] <= back_shift[3];
      back_shift[5] <= back_shift[4];
      back_shift[6] <= back_shift[5];
      
      pow_half[0] <= delayed_sq[0];
      pow_half[1] <= (delayed_sq[1]>>2) + pow_half[0];
      pow_half[2] <= (delayed_sq[2]>>3) + pow_half[1];
      pow_half[3] <= (delayed_sq[3]>>5) + pow_half[2];
      pow_half[4] <= (delayed_sq[4]>>7) + pow_half[3];
      //(sq + (sq>>2) + (sq>>3) + (sq>>5) + (sq>>7))
      
      if (back_shift[6][7] == 1'b1 && back_shift[6][0] == 1'b1) begin
        res <= pow_half[4] << (((~back_shift[6] + 1'b1) - 1'b1)>>1'b1);
      end
      
      if (back_shift[6][7] == 1'b0 && back_shift[6][0] == 1'b1) begin
        res <= pow_half[4] >> (((back_shift[6]) + 1'b1)>>1'b1);
      end
      
      if (back_shift[6][7] == 1'b1 && back_shift[6][0] == 1'b0) begin
        res <= delayed_sq[5] << ((~back_shift[6] + 1'b1)>>1'b1);
      end
      
      if (back_shift[6][7] == 1'b0 && back_shift[6][0] == 1'b0) begin
        res <= delayed_sq[5] >> ((back_shift[6])>>1'b1);
      end
      
      out_valid_reg <= (out_valid_reg << 1'b1) + 1'b1;
    end
  end
  
  always_comb begin
    sqrt = 1'b0;
    out_valid = 1'b0;
    if(out_valid_reg[11]) begin
      sqrt = res;
      out_valid = 1'b1;
    end
  end
endmodule











