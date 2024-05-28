`timescale 1ns / 1ps

//latency: 10 clock cycles
module fixedpoint_sin (input logic in_valid, input logic clk, input fixedpoint::number n1, output fixedpoint::number sin, output logic out_valid);
  //1/2Pi = 0,1591549 = 1/8 + 1/32 + 1/512 + 1/1024 => x/2pi = x>>3 + x>>5 + x>>9 + x>>10
  fixedpoint::number n2 [3:0];
  fixedpoint::number x [6:0];
  logic [31:0] out;
  
  fixedpoint::number res[1:0];
  logic [8:0] addr;
  logic [8:0] sign = 0;
  logic [9:0] out_valid_reg = 0;
  
  sin_data sinn_vals (
    .a(addr),              // input wire [8 : 0] a
    .clk(clk),          // input wire clk
    .qspo_ce(in_valid),  // input wire qspo_ce
    .qspo(out)        // output wire [31 : 0] qspo
  );
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      n2[0] <= n1[64] ? ~n1 + 1'b1 : n1;
      
      n2[1] <= n2[0];
      n2[2] <= n2[1];
      n2[3] <= n2[2];
      
      x[0] <= n2[0] >> 3;
      x[1] <= x[0] + (n2[1] >> 5);
      x[2] <= x[1] + (n2[2] >> 9);
      x[3] <= x[2] + (n2[3] >> 10);
      x[4] <= x[3];
      x[5] <= x[4];
      x[6] <= x[5];
      
      addr <= x[3][30:22];
      
      res[0] <= x[6][31] == 0 ? out : ~out + 1;
       
      sign <= (sign << 1'b1) + n1[64];
      
      res[1] <= sign[8] ? ~res[0] + 1 : res[0];
      
      out_valid_reg <= (out_valid_reg << 1'b1) + 1'b1; 
    end
  end
  
  always_comb begin
    sin = 1'b0;
    out_valid = 1'b0;
    if(out_valid_reg[9]) begin
      sin = res[1];
      out_valid = 1'b1;
    end
  end
endmodule
