`timescale 1ns / 1ps

// latency: 2*width = 74
// convert a 3D Cartesian point to 3D polar (spherical coordinates).
module fixedpoint_to_polar (
input logic in_valid, 
input logic clk, 
input fixedpoint::number x, 
input fixedpoint::number y,
input fixedpoint::number z, 
output fixedpoint::number theta, 
output fixedpoint::number phi, 
output fixedpoint::number r, 
output logic out_valid
);

  // width = num clock cycles of fixedpoint_arctan2
  localparam width = 37;

  fixedpoint::number z_reg[width-1:0];
  fixedpoint::number theta_reg;
  fixedpoint::number phi_reg[width:0];
  fixedpoint::number r2D_reg;
  fixedpoint::number r3D_reg;
  logic valid_1;
  logic valid_2;
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      z_reg[0] <= z;
      phi_reg[1] <= phi_reg[0];
      for(int i=0; i < width-1; i++) begin
         z_reg[i+1] <= z_reg[i];
         phi_reg[i+2] <= phi_reg[i+1];
      end
    end
  end
  
  // apply CORDIC to polar two times.
  fixedpoint_arctan2 act1 (in_valid, clk, y, x, phi_reg[0], r2D_reg, valid_1);
  fixedpoint_arctan2 act2 (valid_1, clk, r2D_reg, z_reg[width-1], theta_reg, r3D_reg, valid_2);
  
  always_comb begin
    r = 1'b0;
    phi = 1'b0;
    theta = 1'b0;
    out_valid = 1'b0;
    if(valid_2) begin
      r = r3D_reg;
      phi = phi_reg[width];
      theta = theta_reg;
      out_valid = 1'b1;
    end
  end
endmodule



























