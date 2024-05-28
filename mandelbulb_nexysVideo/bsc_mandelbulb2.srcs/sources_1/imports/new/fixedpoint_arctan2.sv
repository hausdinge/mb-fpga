`timescale 1ns / 1ps

// calculates the magnitude r of a point (n_x, n_y) and the angle of 
// the vector. Conversion from 2D Cartesian to 2D polar coordinates.
// lateny: widht + lantency_mult = 37
module fixedpoint_arctan2 (
input logic in_valid, 
input logic clk, 
input fixedpoint::number n_y, 
input fixedpoint::number n_x, 
output fixedpoint::number atan2, 
output fixedpoint::number r, 
output logic out_valid
);
  // CORDIC iteration count.
  localparam widht = 28;
  
  // lantency of any multiplyer for the CORDIC gain mult.
  localparam lantency_mult = 9;
  
  //store values for arctan(2^-k) values
  fixedpoint::number arctan_table [0:widht-1] = '{
    65'b00000000000000000000000000000000011001001000011111101101010100010,
    65'b00000000000000000000000000000000001110110101100011001110000010101,
    65'b00000000000000000000000000000000000111110101101101110101111110010,
    65'b00000000000000000000000000000000000011111110101011011101010011010,
    65'b00000000000000000000000000000000000001111111110101010110111011011,
    65'b00000000000000000000000000000000000000111111111110101010101101110,
    65'b00000000000000000000000000000000000000011111111111110101010101011,
    65'b00000000000000000000000000000000000000001111111111111110101010101,
    65'b00000000000000000000000000000000000000000111111111111111110101010,
    65'b00000000000000000000000000000000000000000011111111111111111110101,
    65'b00000000000000000000000000000000000000000001111111111111111111110,
    65'b00000000000000000000000000000000000000000000111111111111111111111,
    65'b00000000000000000000000000000000000000000000011111111111111111111,
    65'b00000000000000000000000000000000000000000000001111111111111111111,
    65'b00000000000000000000000000000000000000000000000111111111111111111,
    65'b00000000000000000000000000000000000000000000000011111111111111111,
    65'b00000000000000000000000000000000000000000000000001111111111111111,
    65'b00000000000000000000000000000000000000000000000000111111111111111,
    65'b00000000000000000000000000000000000000000000000000011111111111111,
    65'b00000000000000000000000000000000000000000000000000001111111111111,
    65'b00000000000000000000000000000000000000000000000000000111111111111, 
    65'b00000000000000000000000000000000000000000000000000000011111111111,
    65'b00000000000000000000000000000000000000000000000000000001111111111,
    65'b00000000000000000000000000000000000000000000000000000000111111111,
    65'b00000000000000000000000000000000000000000000000000000000011111111,
    65'b00000000000000000000000000000000000000000000000000000000001111111,
    65'b00000000000000000000000000000000000000000000000000000000000111111,
    65'b00000000000000000000000000000000000000000000000000000000000100000
    /*65'b00000000000000000000000000000000000000000000000000000000000010000,
    65'b00000000000000000000000000000000000000000000000000000000000001000,
    65'b00000000000000000000000000000000000000000000000000000000000000100,
    65'b00000000000000000000000000000000000000000000000000000000000000010*/
  };
  
  fixedpoint::number pi = fixedpoint::fromfrac #(32)::fp(3, 32'b00100100001111110110100110100010);
  fixedpoint::number pi_half = fixedpoint::fromfrac #(32)::fp(1, 32'b10010010000111111011010101000101);
  fixedpoint::number scale_factor = fixedpoint::fromfrac #(32)::fp(0, 32'b10011011011101001110110110101000);
  
  fixedpoint::number x [0:widht-1];
  fixedpoint::number y [0:widht-1];
  fixedpoint::number z [0:widht-1];
  
  fixedpoint::number z_delayed [0:lantency_mult-1];
  logic [widht+(lantency_mult-1):0] out_valid_reg = 0;
  
  logic valid0;
  fixedpoint::number scale_x;
  
  // multiply with inv-CORDIC gain
  fixedpoint_mult fmatan2scale (in_valid, clk, x[widht-1], scale_factor, scale_x, valid0);
  
  always_ff @(posedge clk) begin
    // rotate the input vectors to the correct quadrant. We want the
    // full angle for arctan2.
    if(in_valid) begin
      if(n_x[fixedpoint::total_bits-1] == 0 && n_y[fixedpoint::total_bits-1] == 0) begin
        x[0] <= n_x;
        y[0] <= n_y;
        z[0] <= 0;
      end
      if(n_x[fixedpoint::total_bits-1] == 1 && n_y[fixedpoint::total_bits-1] == 0) begin
        x[0] <= n_y;
        y[0] <= -n_x;
        z[0] <= pi_half;
      end
      if(n_x[fixedpoint::total_bits-1] == 1 && n_y[fixedpoint::total_bits-1] == 1) begin
        x[0] <= -n_x;
        y[0] <= -n_y;
        z[0] <= -pi;
      end
      if(n_x[fixedpoint::total_bits-1] == 0 && n_y[fixedpoint::total_bits-1] == 1) begin
        x[0] <= -n_y;
        y[0] <= n_x;
        z[0] <= -pi_half;
      end
      
      // make CORDIC iteration
      for(int i = 0; i < widht-1; i++) begin
        x[i+1] <= y[i][fixedpoint::total_bits-1] == 1 ? x[i] - (y[i] >>> i) : x[i] + (y[i] >>> i);
        y[i+1] <= y[i][fixedpoint::total_bits-1] == 1 ? y[i] + (x[i] >>> i) : y[i] - (x[i] >>> i);
        z[i+1] <= y[i][fixedpoint::total_bits-1] == 1 ? z[i] - arctan_table[i] :  z[i] + arctan_table[i];
      end 
    end
  end
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      z_delayed[0] <= z[widht-1];
      for(int i = 0; i < lantency_mult-1; i++) begin
         z_delayed[i+1] <= z_delayed[i];
      end 
      out_valid_reg <= (out_valid_reg << 1'b1) + 1'b1;
    end
  end
  
  always_comb begin
    atan2 = 0;
    out_valid = 0;
    r = 0;
    if(out_valid_reg[widht+(lantency_mult-1)]) begin
      r = scale_x;
      atan2 = z_delayed[lantency_mult-1];
      out_valid = 1'b1;
    end
  end
endmodule


















