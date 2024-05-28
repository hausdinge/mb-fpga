`timescale 1ns / 1ps

//latency: 6 clock cycles
module fixedpoint_arccos (input logic in_valid, input logic clk, input fixedpoint::number n1, output fixedpoint::number acos, output logic out_valid);
  fixedpoint::number n2;
  logic [5:0] n3 = 0; 
  logic [5:0] n4 = 0;
  fixedpoint::number x;
  logic [31:0] out;
  fixedpoint::number offset = fixedpoint::fromfrac #(32)::fp(3, 32'b00100100001111110110100110100010);
  
  fixedpoint::number res;
  logic [8:0] addr;
  logic [4:0] sign = 0;
  logic [5:0] out_valid_reg = 0;
  
  arccos_data acos_vals (
    .a(addr),              // input wire [8 : 0] a
    .clk(clk),          // input wire clk
    .qspo_ce(in_valid),  // input wire qspo_ce
    .qspo(out)        // output wire [31 : 0] qspo
  );

  always_ff @(posedge clk) begin
    if(in_valid) begin
      n2 <= n1[64] ? ~n1 + 1'b1 : n1;
      addr <= n2[31:23];
      sign <= (sign << 1'b1) + n1[64];
      
      n3 <= (n3 << 1'b1) + (n1 >= fixedpoint::fromInt(1));
      n4 <= (n4 << 1'b1) + (n1 <= fixedpoint::fromInt(1,1));
      
      x <= out << 1;
      res <= sign[4] ? offset - x : x;
      out_valid_reg <= (out_valid_reg << 1'b1) + 1'b1; 
    end
  end
  
  always_comb begin
    acos = 1'b0;
    out_valid = 1'b0;
    if(out_valid_reg[5]) begin
      acos = n3[5] ? 0 : (n4[5] ? offset : res);
      out_valid = 1'b1;
    end
  end
endmodule












