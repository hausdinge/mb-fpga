`timescale 1ns / 1ps

// general ray marcher.
// the Mandelbulb SDF is used.
module ray_march (
input logic clk, 
input logic 
BTNC, // zoom in 0.1 steps
BTNU, // zoom in 0.0001 steps 
BTND, // zoom in 0.001 steps
BTNR, // zoom out 0.1 steps
BTNL, // zoom in 0.01 steps
sw0,  // change resolution (ray march epsilon) 
sw1,  // change color (not implemented in this version) 
output logic wea,              // framebuffer write-en
output logic [19:0] mem_addr,  // framebuffer addr
output logic [5:0] rgb         // framebuffer color-ID
);

  // Camera position (x,y,z) = (3.0119199, -0.1121999, 0.1633999)
  fixedpoint::number camera_z = fixedpoint::fromfrac #(32)::fp(0, 32'b00101001110101001001010100011000);
  fixedpoint::number camera_y = fixedpoint::fromfrac #(32)::fp(0, 32'b00011100101110010010001110100010, 1);
  fixedpoint::number camera_x = fixedpoint::fromfrac #(32)::fp(3, 32'b00000011000011010011000001101010);
  
  // screen coordinates (x, y)
  logic [10:0] x = 0;
  logic [10:0] y = 0;
  
  // flattened screen coordinates
  logic [19:0] flat = 0;
  
  logic [5:0] pixel_color = 0;
  logic wea_reg = 0;
  logic [19:0] mem_addr_reg = 0;
  logic break_cond = 1;
  
  //----------------------------------------ray generator-----------------------------------------------------------------
 
  // calculate the aspect ratio with a centered coordinate system.
  // (lerp_bound, lerp_bound2) = ((720, 1280)*0.5)/720 = (0.5, 0.8888)
  // we map (1280, 720) -> (0.8888, 0.5) with a linear interpolation with a mod counter.
  // to specify a pixel region just add a offset to the bounds and/or make the bounds smaller.
  fixedpoint::number lerp_bound = fixedpoint::fromfrac #(1)::fp(0, 1'b1);
  fixedpoint::number lerp_bound2 = fixedpoint::fromfrac #(32)::fp(0, 32'b11100011100011100011100011100011);
  
  // convert to a standart coordinate system usually used in mathematics.
  fixedpoint:: number xmin = -lerp_bound2;
  fixedpoint:: number xmax = lerp_bound2;
  fixedpoint:: number ymin = lerp_bound;
  fixedpoint:: number ymax = -lerp_bound;
  
  // lerp const.
  fixedpoint::number t_x = fixedpoint::fromfrac #(32)::fp(0, 32'b00000000001100110011001100110011); // 1/1280
  fixedpoint::number t_y = fixedpoint::fromfrac #(32)::fp(0, 32'b00000000010110110000010110110000); // 1/1720
  
  // determine the stepsize for the modulo cnt.
  fixedpoint::number lerp_step_x = fixedpoint::mult(t_x, xmax - xmin);
  fixedpoint::number lerp_step_y = fixedpoint::mult(t_y, ymax - ymin);

  // start values without offset.
  fixedpoint::number lerp_x = xmin;
  fixedpoint::number lerp_y = ymin;
  fixedpoint::number lerp_z = fixedpoint::fromfrac #(3)::fp(1, 3'b000, 1);
  
  // modulo counter to generate pixels.
  always_ff @(posedge clk) begin
    if (break_cond) begin
      if(x == 1279) begin
        lerp_x <= xmin;
        flat <= flat + 1;
        x <= 0;
        if(y == 719)begin
          lerp_y <= ymin;
          y <= 0;
          flat <= 0;
        end 
        else begin
          lerp_y <= lerp_y + lerp_step_y;
          y <= y + 1;
          flat <= flat + 1;
        end
      end
      else begin
        lerp_x <= lerp_x + lerp_step_x;
        x <= x + 1;
        flat <= flat + 1;
      end
    end
  end
  
  //----------------------------------------ray generator-----------------------------------------------------------------
  
  // max ray distance
  fixedpoint::number max_dist = fixedpoint::fromfrac #(1)::fp(10, 1'b0);
  
  // max ray marching iterations
  logic [8:0] max_iter = 200;
  
  // max Mandelbulb iterations, the SDF has 4 piplines iterations.
  // This parameter sets the number of reuses of the Mandelbulb SDF.
  // In total we have (mb_max_iter + 1)*4 = 24 iterations.
  logic [8:0] mb_max_iter = 5;
 
  fixedpoint::message msg;
  fixedpoint::number sel_msg;
  fixedpoint::message msg_out [0:9];
  localparam delay = 9;
  logic valid[0:6];
  
  fixedpoint::number x_marched;
  fixedpoint::number y_marched;
  fixedpoint::number z_marched;
  
  // Here we perform the ray marching
  fixedpoint_mult fm1 (valid[1], clk, msg_out[0].rayd_x, sel_msg, x_marched, valid[2]);
  fixedpoint_mult fm2 (valid[1], clk, msg_out[0].rayd_y, sel_msg, y_marched, valid[3]);
  fixedpoint_mult fm3 (valid[1], clk, msg_out[0].rayd_z, sel_msg, z_marched, valid[4]);
  
  // break_cond vals
  logic  is_max_iter;
  logic  is_max_dist;
  logic  is_epsilon;
  logic  is_mb_iter;
  
  always_ff @(posedge clk) begin
    if(valid[1]) begin
       msg_out[1] <=  msg_out[0];
       
       for(int i =0; i<delay-1; i++)begin
        msg_out[i+2] <=  msg_out[i+1];
       end
       
       is_max_iter <= msg_out[delay-1].march_iter == max_iter;
       is_max_dist <= msg_out[delay-1].march_depth > max_dist;
       is_epsilon <= msg_out[delay-1].logdist <  msg_out[delay-1].epsilon;
       
       // The trick is to perform ray marching and the reuse of SDF iterations
       // at the same time. This can be generalized to ervery SDF with a loop inside.
       is_mb_iter <= msg_out[delay-1].mb_iter == mb_max_iter || msg_out[delay-1].threshold;
    end
  end
  
  // if break_cond is true than we generate a new ray and drop out
  // the current data packet from the pipeline.
  always_comb begin
    break_cond = 1;
    if(valid[2])
      break_cond = (is_max_iter ||  is_max_dist || is_epsilon) && is_mb_iter;
  end
  
  // output processed data (colored pixels)
  always_ff @(posedge clk) begin
    if(break_cond && valid[2]) begin
      // ambient occl effect.
      pixel_color <=  msg_out[delay].steps == 1 ? 0 : 24 - msg_out[delay].steps;
      wea_reg <= 1;
      mem_addr_reg <= msg_out[delay].mem_addr;
    end
  end
  
  // We define two data-buses and decide if the data can be ray marched
  // or if the data must through the SDF again.
  fixedpoint::message msg_in0;
  fixedpoint::message delayed_msg0;
  logic next_mb_iter;
  logic next_valid;
  always_ff @(posedge clk) begin
    
    // The data can leave the SDF if it reached the max iterations or threshold
    next_mb_iter <= is_mb_iter || !valid[2];
    
    // keep old data if need to use the SDF again.
    delayed_msg0 <= msg_out[delay];
   
    msg.pos_x <= break_cond ? camera_x : camera_x + x_marched;
    msg.pos_y <= break_cond ? camera_y : camera_y + y_marched;
    msg.pos_z <= break_cond ? camera_z : camera_z + z_marched;

    msg.x_iter <= break_cond ? camera_x : camera_x + x_marched;
    msg.y_iter <= break_cond ? camera_y : camera_y + y_marched;
    msg.z_iter <= break_cond ? camera_z : camera_z + z_marched;

    msg.threshold <= 0;
    msg.steps <= 0;

    msg.mem_addr <= break_cond ? flat : msg_out[delay].mem_addr;
    msg.march_iter <= break_cond ? 0 : msg_out[delay].march_iter + 1;
    msg.march_depth <= break_cond ? 0 : msg_out[delay].march_depth + msg_out[delay].logdist;

    msg.r <= 0;
    msg.zr <= 0;
    msg.dr <= fixedpoint::fromfrac #(1)::fp(1, 1'b0);

    msg.theta <= 0;
    msg.phi <= 0;
      
    msg.rayd_x <= break_cond ? lerp_z : msg_out[delay].rayd_x;
    msg.rayd_y <= break_cond ? lerp_x : msg_out[delay].rayd_y; 
    msg.rayd_z <= break_cond ? lerp_y : msg_out[delay].rayd_z;      
    
    msg.logdist <= 0;
    msg.epsilon <= msg_out[delay].march_iter == 0 ? msg_out[delay].logdist>>(13 - 2*sw0) : msg_out[delay].epsilon;
    msg.mb_iter <= 0;
    
    
    valid[0] <= 1'b1; 
  
 
    msg_in0.pos_x <= next_mb_iter ? msg.pos_x : delayed_msg0.pos_x;                                        
    msg_in0.pos_y <= next_mb_iter ? msg.pos_y : delayed_msg0.pos_y;                                       
    msg_in0.pos_z <= next_mb_iter ? msg.pos_z : delayed_msg0.pos_z;                                      
                                                
    msg_in0.x_iter <= next_mb_iter ? msg.x_iter : delayed_msg0.x_iter;                                        
    msg_in0.y_iter <= next_mb_iter ? msg.y_iter : delayed_msg0.y_iter;                                        
    msg_in0.z_iter <= next_mb_iter ? msg.z_iter : delayed_msg0.z_iter;                                       
                                                                                                   
    msg_in0.threshold <= next_mb_iter ? msg.threshold : delayed_msg0.threshold;                                                                                  
    msg_in0.steps <= next_mb_iter ? msg.steps : delayed_msg0.steps;                                                                                      
                                                                                                  
    msg_in0.mem_addr <= next_mb_iter ? msg.mem_addr : delayed_msg0.mem_addr;                                         
    msg_in0.march_iter <= next_mb_iter ? msg.march_iter : delayed_msg0.march_iter;                                    
    msg_in0.march_depth <= next_mb_iter ? msg.march_depth : delayed_msg0.march_depth;             
                                                                                                
    msg_in0.r <= next_mb_iter ? msg.r : delayed_msg0.r;                                                                                          
    msg_in0.zr <= next_mb_iter ? msg.zr : delayed_msg0.zr;                                                                                         
    msg_in0.dr <= next_mb_iter ? msg.dr : delayed_msg0.dr;                                                    
                                                                                                   
    msg_in0.theta <= next_mb_iter ? msg.theta : delayed_msg0.theta;                                                                                    
    msg_in0.phi <= next_mb_iter ? msg.phi : delayed_msg0.phi;                                                                                        
                                                                                                      
    msg_in0.rayd_x <= next_mb_iter ? msg.rayd_x : delayed_msg0.rayd_x;                                           
    msg_in0.rayd_y <= next_mb_iter ? msg.rayd_y : delayed_msg0.rayd_y;                                           
    msg_in0.rayd_z <= next_mb_iter ? msg.rayd_z : delayed_msg0.rayd_z;                                           
                                                                                                     
    msg_in0.logdist <= next_mb_iter ? msg.logdist : delayed_msg0.logdist;                                                                                    
    msg_in0.epsilon <= next_mb_iter ? msg.epsilon : delayed_msg0.epsilon; 
    msg_in0.mb_iter <= next_mb_iter ? msg.mb_iter : delayed_msg0.mb_iter + 1;  
    
    next_valid <= valid[0];                                                                                  
    
  end
  
  // important to add logdist before marching otherwise we would
  // calculate the current camera position twice.
  assign sel_msg = msg_out[0].march_depth + msg_out[0].logdist;
  
  // Mandelbulb SDF for reuse.
  mandelbulb_sdf ss (next_valid, clk, msg_in0, msg_out[0], valid[1]);
  
  // send processed data to the framebuffer.
  always_comb begin
    mem_addr = mem_addr_reg;
    rgb = pixel_color;
    wea = wea_reg;
  end

//--------------------------------------------(User) inputs-----------------------------------------------------
  
  logic [26:0] one_s = 0;
  logic lock = 1;
  
  // For higher zoomlevel we used way smaller stepsizes otherwise we will
  // overshoot the object. With this configuration it is possible to zoom 
  // out far away to see the whole Mandelbulb.
  
  always_ff @(posedge clk) begin
    if(BTNC == 1 && lock) begin
      camera_x <= camera_x - fixedpoint::fromfrac #(32)::fp(0, 32'b00011001100110011001100110011001);
      lock <= 0;
      one_s <= 0;
    end
    if(BTNR == 1 && lock) begin
      camera_x <= camera_x + fixedpoint::fromfrac #(32)::fp(0, 32'b00011001100110011001100110011001);
      lock <= 0;
      one_s <= 0;
    end
    if(BTNU == 1 && lock) begin
      camera_x <= camera_x - fixedpoint::fromfrac #(32)::fp(0, 32'b00000000000001101000110110111000);
      lock <= 0;
      one_s <= 0;
    end
    if(BTND == 1 && lock) begin
      camera_x <= camera_x - fixedpoint::fromfrac #(32)::fp(0, 32'b00000000010000011000100100110111);
      lock <= 0;
      one_s <= 0;
    end
    if(BTNL == 1 && lock) begin
      camera_x <= camera_x - fixedpoint::fromfrac #(32)::fp(0, 32'b00000010100011110101110000101000);
      lock <= 0;
      one_s <= 0;
    end
    if(!lock) one_s <= one_s + 1;
    if(one_s == 100000000) lock <= 1;
  end 
endmodule









































