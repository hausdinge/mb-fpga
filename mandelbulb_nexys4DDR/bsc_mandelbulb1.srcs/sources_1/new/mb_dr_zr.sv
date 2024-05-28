`timescale 1ns / 1ps

//latency: 30 clock cycles
module mb_dr_zr (input logic in_valid, input logic clk, input fixedpoint::message data_in, output fixedpoint::message data_out, output logic out_valid);
  localparam pipelen = 29;
  
  fixedpoint::message msg_reg [0:pipelen-1];
  fixedpoint::message res;
  fixedpoint::number dr;
  fixedpoint::number zr;
  logic valid1, valid2;
  
  always_ff @(posedge clk) begin
    if(in_valid) begin
      msg_reg[0] <= data_in;
      for(int i=0; i < pipelen-1; i++) begin
        msg_reg[i+1] <= msg_reg[i]; 
      end
      
     if(valid1)begin
        valid2 <= valid1;
        
        res.pos_x <= msg_reg[pipelen-1].pos_x;
        res.pos_y <= msg_reg[pipelen-1].pos_y;
        res.pos_z <= msg_reg[pipelen-1].pos_z;
        
        res.x_iter <= msg_reg[pipelen-1].x_iter;
        res.y_iter <= msg_reg[pipelen-1].y_iter;
        res.z_iter <= msg_reg[pipelen-1].z_iter;
        
        res.steps <= msg_reg[pipelen-1].steps;
        res.r <= msg_reg[pipelen-1].r;
        res.dr <= !msg_reg[pipelen-1].threshold ? dr : msg_reg[pipelen-1].dr;
        res.zr <= zr;
        
        res.theta <= msg_reg[pipelen-1].theta;
        res.phi <= msg_reg[pipelen-1].phi;
        res.threshold <= msg_reg[pipelen-1].threshold;
        
        res.mem_addr <= msg_reg[pipelen-1].mem_addr;
        res.march_iter <= msg_reg[pipelen-1].march_iter;
        res.march_depth <= msg_reg[pipelen-1].march_depth;
        
        res.rayd_x <= msg_reg[pipelen-1].rayd_x;
        res.rayd_y <= msg_reg[pipelen-1].rayd_y;
        res.rayd_z <= msg_reg[pipelen-1].rayd_z;
        
        res.logdist <= msg_reg[pipelen-1].logdist;
      end
    end
  end
  
  dr_zr drzr (in_valid, clk, data_in.r, data_in.dr, zr, dr, valid1);
  
  always_comb begin
    data_out = '{default:0};
    out_valid = 1'b0;
    if(valid2) begin
      data_out = res;
      out_valid = 1'b1;
    end
  end
endmodule









