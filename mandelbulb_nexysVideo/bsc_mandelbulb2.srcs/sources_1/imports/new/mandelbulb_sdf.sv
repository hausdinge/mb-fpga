`timescale 1ns / 1ps

// latency: 815 clock cycles
module mandelbulb_sdf (
input logic in_valid, 
input logic clk, 
input fixedpoint::message data_in, 
output fixedpoint::message data_out, 
output logic out_valid
);
  
  // num latency + 1 of distance_estimator
  localparam delay = 56;
  
  fixedpoint::message msg_out[5:0];
  fixedpoint::message res [0:delay-1];
  logic [7:0] valid;
  
  fixedpoint::number logdist;
  
  // specify the number of pipelined Mandelbulb SDF iterations.
  mb_sdf_iteration msdi_1 (in_valid, clk, data_in, msg_out[0], valid[0]);
  mb_sdf_iteration msdi_2 (valid[0], clk, msg_out[0], msg_out[1], valid[1]);
  mb_sdf_iteration msdi_3 (valid[1], clk, msg_out[1], msg_out[2], valid[2]);
  mb_sdf_iteration msdi_4 (valid[2], clk, msg_out[2], msg_out[3], valid[3]);
  
  // We also tried more iterations, but then the synth takes much longer.
  // 4 iterations are fine. 
  //mb_sdf_iteration msdi_5 (valid[3], clk, msg_out[3], msg_out[4], valid[4]);
  //mb_sdf_iteration msdi_6 (valid[4], clk, msg_out[4], msg_out[5], valid[5]);
  
  mb_log_dist ld (valid[3], clk, msg_out[3].r, msg_out[3].dr, logdist, valid[4]);
  
  always_ff @(posedge clk) begin
    if(valid[3]) begin
      res[0] <= msg_out[3];
      for(int i = 0; i < delay - 2; i++) begin
        res[i+1] <= res[i];
      end
    end
    if(valid[4]) begin
      res[delay-1].pos_x <= res[delay-2].pos_x;
      res[delay-1].pos_y <=  res[delay-2].pos_y;
      res[delay-1].pos_z <= res[delay-2].pos_z;
        
      res[delay-1].x_iter <= res[delay-2].x_iter;
      res[delay-1].y_iter <= res[delay-2].y_iter;
      res[delay-1].z_iter <= res[delay-2].z_iter;
        
      res[delay-1].steps <= res[delay-2].steps;
      res[delay-1].r <= res[delay-2].r;
      res[delay-1].dr <= res[delay-2].dr;
      res[delay-1].zr <= res[delay-2].zr;
        
      res[delay-1].theta <= res[delay-2].theta;
      res[delay-1].phi <= res[delay-2].phi;
        
      res[delay-1].mem_addr <= res[delay-2].mem_addr;
      res[delay-1].march_iter <= res[delay-2].march_iter;
      res[delay-1].march_depth <= res[delay-2].march_depth;
        
      res[delay-1].rayd_x <= res[delay-2].rayd_x;
      res[delay-1].rayd_y <= res[delay-2].rayd_y;
      res[delay-1].rayd_z <= res[delay-2].rayd_z;
        
      res[delay-1].logdist <= logdist;
      res[delay-1].epsilon <= res[delay-2].epsilon;
      res[delay-1].mb_iter <= res[delay-2].mb_iter;
        
      res[delay-1].threshold <= res[delay-2].threshold;
      
      valid[7] <= 1'b1;
    end
  end
  
  always_comb begin
    data_out = '{default:0};
    out_valid = 1'b0;
    if(valid[7]) begin
      data_out = res[delay-1];
      out_valid = 1'b1;
    end
  end 
endmodule












