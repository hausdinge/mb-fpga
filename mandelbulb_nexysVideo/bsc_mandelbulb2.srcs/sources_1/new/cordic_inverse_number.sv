`timescale 1ns / 1ps

//latency: width + 7 = 35 clock cycles
module cordic_inverse_number(
input logic in_valid, 
input logic clk, 
input fixedpoint::number num1, 
output fixedpoint::number inv, 
output logic out_valid
);

  // CORDIC pipeline stages.
  localparam width = 28;
  
  fixedpoint::number x [0:width-1];
  fixedpoint::number y [0:width-1];
  fixedpoint::number z [0:width-1];
  fixedpoint::number num1_reg [0:6];
  
  logic [5:0] leadingone_index;
  logic signed [6:0] back_shift [0:width-1];
  logic signed [6:0] shift;
  logic valid_leadingone;
  logic [width+6:0] out_valid_reg = 0;
  
  fixedpoint_MSB_index2 leadingone(in_valid, clk, num1, leadingone_index, valid_leadingone);
  
  assign shift = fixedpoint::fractional_bits - leadingone_index;
  
  always_ff @(posedge clk) begin
    out_valid_reg <= (out_valid_reg << 1'b1) + 1'b1;
  end
  
  always_ff @(posedge clk) begin
    num1_reg[0] <= num1;
    for(int i = 0; i < 6; i++) begin
      num1_reg[i+1] <= num1_reg[i];
    end
  end
  
  always_ff @(posedge clk) begin
    // normalize number
    back_shift[0] <= fixedpoint::fractional_bits - leadingone_index;
    x[0] <= (shift >= 0) ? (num1_reg[6] << shift) : (num1_reg[6] >> (-shift));
    y[0] <= fixedpoint::fromInt(1);
    z[0] <= 0;
    
    // perform CORDIC.
    for(int i = 0; i < width-1; i++) begin
      x[i+1] <= x[i];
      y[i+1] <= y[i][fixedpoint::total_bits-1] == 1 ? y[i] + (x[i] >> i) : y[i] - (x[i] >> i);
      z[i+1] <= y[i][fixedpoint::total_bits-1] == 1 ? z[i] - (fixedpoint::fromInt(1)>>i) :  z[i] + (fixedpoint::fromInt(1)>>i);
      back_shift[i+1] <= back_shift[i];
    end 
  end
  
  always_comb begin
    inv = 1'b0;
    out_valid = 1'b0;
    if(out_valid_reg[width+6]) begin
      // denormalize number.
      inv = (back_shift[width-1] >= 0) ? z[width-1] << (back_shift[width-1]) : z[width-1] >> (-back_shift[width-1]);
      out_valid = out_valid_reg[width+6];
    end
  end
endmodule









