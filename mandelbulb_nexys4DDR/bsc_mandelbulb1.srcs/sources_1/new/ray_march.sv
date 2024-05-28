`timescale 1ns / 1ps

module ray_march(input logic clk, input logic BTNC, BTNU, BTND, BTNR, BTNL, output logic wea, output logic [18:0] mem_addr, output logic [11:0] rgb);
  fixedpoint::number camera_z = fixedpoint::fromfrac #(20)::fp(0, 20'b0);
  fixedpoint::number camera_y = fixedpoint::fromfrac #(20)::fp(0, 20'b0);
  fixedpoint::number camera_x = fixedpoint::fromfrac #(4)::fp(2, 4'b0000);
  
  
  logic [11:0] clr_array [0:24] = '{
  12'b000000000000,
  12'b100000000000,
  12'b110000000000,
  12'b111000000000,
  12'b111100000000,
  12'b100011100000,
  12'b010011100000,
  12'b110011100000,
  12'b111011110000,
  12'b000011110000,
  12'b000011111000,
  12'b000011111100,
  12'b000011111110,
  12'b000011111111,
  12'b100011111111,
  12'b110011111111,
  12'b000001111111,
  12'b000000111111,
  12'b000000011111,
  12'b100000001111,
  12'b110000001111,
  12'b111000001111,
  12'b111100001111,
  12'b000000001111,
  12'b000000000111
  };
  
  logic [10:0] x = 0;
  logic [10:0] y = 0;
  logic [18:0] flat = 0;
  
  logic [11:0] pixel_color = 0;
  logic wea_reg = 0;
  logic [18:0] mem_addr_reg = 0;
  logic break_cond = 1;
 
  //localparam l_bound = 1;
  fixedpoint::number lerp_bound = fixedpoint::fromfrac #(2)::fp(0, 2'b10);

  fixedpoint:: number xmin = -lerp_bound;//fixedpoint::fromInt(l_bound, 1); 
  fixedpoint:: number xmax = lerp_bound;//fixedpoint::fromInt(l_bound); 
  fixedpoint:: number ymin = lerp_bound;//fixedpoint::fromInt(l_bound);
  fixedpoint:: number ymax = -lerp_bound;//fixedpoint::fromInt(l_bound, 1);

  fixedpoint::number t_x = fixedpoint::fromfrac #(20)::fp(0, 20'b00000000011001100110); // 1/640
  fixedpoint::number t_y = fixedpoint::fromfrac #(20)::fp(0, 20'b00000000100010001000); // 1/480

  fixedpoint::number lerp_step_x = fixedpoint::mult(t_x, xmax - xmin);
  fixedpoint::number lerp_step_y = fixedpoint::mult(t_y, ymax - ymin);

  fixedpoint::number lerp_x = xmin;
  fixedpoint::number lerp_y = ymin;
  fixedpoint::number lerp_z = fixedpoint::fromfrac #(3)::fp(0, 3'b011,1);
  
  always_ff @(posedge clk) begin
    if (break_cond) begin
      if(x == 639) begin
        lerp_x <= xmin;
        flat <= flat + 1;
        x <= 0;
        if(y == 479)begin
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
  
//  always_ff @(posedge clk) begin
//    if(lerp_x >= -lc && lerp_x <= lc) begin
//      pixel_color <= 12'b111100111111; 
//      wea_reg <= 1;
//    end
//    else begin
//      wea_reg <= 0;
//    end    
//    mem_addr_reg <= flat;
//  end
  
//  always_comb begin
    
//  end
  
  
  fixedpoint::number max_dist = fixedpoint::fromfrac #(1)::fp(10, 1'b0);
  fixedpoint:: number epsilon = fixedpoint::fromfrac #(10)::fp(0, 10'b0000000001);
  logic [7:0] max_iter = 100;
 
  fixedpoint::message msg;
  fixedpoint::message sel_msg;
  fixedpoint::message msg_out [0:9];
  localparam delay = 9;
  logic valid[0:6];
  
  fixedpoint::number x_marched;
  fixedpoint::number y_marched;
  fixedpoint::number z_marched;
  
  fixedpoint_mult fm1 (valid[1], clk, msg_out[0].rayd_x, msg_out[0].march_depth, x_marched, valid[2]);
  fixedpoint_mult fm2 (valid[1], clk, msg_out[0].rayd_y, msg_out[0].march_depth, y_marched, valid[3]);
  fixedpoint_mult fm3 (valid[1], clk, msg_out[0].rayd_z, msg_out[0].march_depth, z_marched, valid[4]);
  
  logic [0:8] is_max_iter;
  logic [0:8] is_max_dist;
  logic [0:8] is_epsilon;
  
  logic [4:0] dist_shift = 0;
  
  always_ff @(posedge clk) begin
    if(valid[1]) begin
       msg_out[1] <=  msg_out[0];
       
       is_max_iter[0] <= msg_out[0].march_iter == max_iter;
       is_max_dist[0] <= msg_out[0].march_depth > max_dist;
       is_epsilon[0] <= (msg_out[0].logdist>>dist_shift) < epsilon;
       
       for(int i =0; i<delay-1; i++)begin
        msg_out[i+2] <=  msg_out[i+1];
 
        is_max_iter[i+1] <= is_max_iter[i];
        is_max_dist[i+1] <= is_max_dist[i];
        is_epsilon[i+1] <=  is_epsilon[i];
       end
    end
  end
  
//  assign out = msg_out[delay];
//  assign tt = is_epsilon[delay-1];
  
  always_comb begin
    break_cond = 1;
    if(valid[2])
      break_cond = is_max_iter[delay-1] ||  is_max_dist[delay-1] || is_epsilon[delay-1];
      //break_cond = msg_out[delay].march_iter == max_iter ? 1 :0;//msg_out[delay].march_depth > max_dist || msg_out[delay].logdist < epsilon || msg_out[delay].march_iter > max_iter || !valid[2] ? 1 : 0;
  end
  
  always_ff @(posedge clk) begin
    if(break_cond && valid[2]) begin
        pixel_color <=  msg_out[delay].steps != 0 ? clr_array[25 - (msg_out[delay].march_iter>>2)] : 0;
        wea_reg <= 1;
        mem_addr_reg <= msg_out[delay].mem_addr;
    end
  end
  
  always_ff @(posedge clk) begin
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
    msg.march_depth <= break_cond ? 0 : msg_out[delay].march_depth + (msg_out[delay].logdist>>dist_shift);
  
    msg.r <= 0;
    msg.zr <= 0;
    msg.dr <= fixedpoint::fromfrac #(1)::fp(1, 1'b0);
 
    msg.theta <= 0;
    msg.phi <= 0;
      
    msg.rayd_x <= break_cond ? lerp_z : msg_out[delay].rayd_x;
    msg.rayd_y <= break_cond ? lerp_x : msg_out[delay].rayd_y; 
    msg.rayd_z <= break_cond ? lerp_y : msg_out[delay].rayd_z;      
    
    msg.logdist <= 0;
      
    valid[0] <= 1'b1;    
  end
  
  mandelbulb_sdf ss (valid[0], clk, msg, msg_out[0], valid[1]);
  
  always_comb begin
    mem_addr = mem_addr_reg;
    rgb = pixel_color;
    wea = wea_reg;
  end
//--------------------------------------------------------------------------------------------------
  
  logic [26:0] one_s = 0;
  logic lock = 1;
  
  always_ff @(posedge clk) begin
    if(BTNC == 1 && lock) begin
      camera_x <= camera_x - fixedpoint::fromfrac #(3)::fp(0, 3'b001);
      lock <= 0;
      one_s <= 0;
    end
    if(BTNR == 1 && lock) begin
      camera_x <= camera_x + fixedpoint::fromfrac #(3)::fp(0, 3'b001);
      lock <= 0;
      one_s <= 0;
    end
    if(BTNU == 1 && lock) begin
      lerp_z <= lerp_z + fixedpoint::fromfrac #(3)::fp(0, 3'b001);
      lock <= 0;
      one_s <= 0;
    end
    if(BTND == 1 && lock) begin
      lerp_z <= lerp_z - fixedpoint::fromfrac #(3)::fp(0, 3'b001);
      lock <= 0;
      one_s <= 0;
    end
    if(BTNL == 1 && lock) begin
      dist_shift <= dist_shift + 1;
      lock <= 0;
      one_s <= 0;
    end
    if(!lock) one_s <= one_s + 1;
    if(one_s == 100000000) lock <= 1;
  end 
endmodule









































