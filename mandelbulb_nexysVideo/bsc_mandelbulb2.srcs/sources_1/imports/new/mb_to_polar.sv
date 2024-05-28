`timescale 1ns / 1ps

// latency: width + 1 = 75
// the conversion to 3D polar (spherical) coordinates
// is applied on the data-bus. 
module mb_to_polar (
input logic in_valid, 
input logic clk, 
input fixedpoint::message data_in, 
output fixedpoint::message data_out, 
output logic out_valid
);
  
  //width = num clock cycles of fixedpoint_to_polar
  localparam width = 74;
  
  fixedpoint::message msg_reg [0:width-1];
  fixedpoint::message res;
  
  fixedpoint::number theta;
  fixedpoint::number phi;
  fixedpoint::number new_r;
  logic valid1, valid2;
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      msg_reg[0] <= data_in;
      for(int i=0; i < width-1; i++) begin
        msg_reg[i+1] <= msg_reg[i]; 
      end
      
      if(valid1)begin
        valid2 <= valid1;
        
        res.pos_x <= msg_reg[width-1].pos_x;
        res.pos_y <= msg_reg[width-1].pos_y;
        res.pos_z <= msg_reg[width-1].pos_z;
        
        res.x_iter <= msg_reg[width-1].x_iter;
        res.y_iter <= msg_reg[width-1].y_iter;
        res.z_iter <= msg_reg[width-1].z_iter;
        
        // we set threshold to 1 when the escape radius is exeeded. 
        res.steps <= !msg_reg[width-1].threshold ? msg_reg[width-1].steps + 1 : msg_reg[width-1].steps;
        res.r <= !msg_reg[width-1].threshold ? new_r : msg_reg[width-1].r;
        res.dr <= msg_reg[width-1].dr;
        res.zr <= msg_reg[width-1].zr;
        
        res.theta <= theta<<3;
        res.phi <= phi<<3;
        
        res.mem_addr <= msg_reg[width-1].mem_addr;
        res.march_iter <= msg_reg[width-1].march_iter;
        res.march_depth <= msg_reg[width-1].march_depth;
        
        res.rayd_x <= msg_reg[width-1].rayd_x;
        res.rayd_y <= msg_reg[width-1].rayd_y;
        res.rayd_z <= msg_reg[width-1].rayd_z;
        
        res.logdist <= msg_reg[width-1].logdist;
        res.epsilon <= msg_reg[width-1].epsilon;
        res.mb_iter <= msg_reg[width-1].mb_iter;
        
        // Check if the escape radius is exeeded.
        res.threshold <= (new_r > (fixedpoint::fromfrac #(1)::fp(1, 1'b1))) ? 1 : msg_reg[width-1].threshold;
        
      end
    end
  end
  
  // CORDIC_to_polar
  fixedpoint_to_polar tp (in_valid, clk, data_in.x_iter, data_in.y_iter, data_in.z_iter, theta, phi, new_r, valid1);
  
  always_comb begin
    data_out = '{default:0};
    out_valid = 1'b0;
    if(valid2) begin
      data_out = res;
      out_valid = 1'b1;
    end
  end
endmodule










