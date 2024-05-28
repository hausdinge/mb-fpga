`timescale 1ns / 1ps


module mandelbulb(input logic clk, input logic [10:0] x, input logic [10:0] y, input logic [18:0] flattened_xy, 
output logic wea, output logic [18:0] mem_addr, output logic [11:0] rgb);
  localparam pipe_len = 1 + 0;
  
  logic start_reg = 0;
  logic [11:0] pixel_color = 0;
  logic wea_reg = 0;
  logic [18:0] piped_mem_addr [pipe_len-1:0] = '{default:0};

  //-----------------------------------------------------------------

  localparam l_bound = 15;

  fixedpoint:: number xmin = fixedpoint::fromInt(l_bound, 1); // -2
  fixedpoint:: number xmax = fixedpoint::fromInt(l_bound); // 2
  fixedpoint:: number ymin = fixedpoint::fromInt(l_bound);
  fixedpoint:: number ymax = fixedpoint::fromInt(l_bound, 1);

  fixedpoint::number t_x = fixedpoint::fromfrac #(20)::fp(0, 20'b00000000011001100110); // 1/640
  fixedpoint::number t_y = fixedpoint::fromfrac #(20)::fp(0, 20'b00000000100010001000); // 1/480

  fixedpoint::number lerp_step_x = fixedpoint::mult(t_x, xmax - xmin);
  fixedpoint::number lerp_step_y = fixedpoint::mult(t_y, ymax - ymin);

  fixedpoint::number lerp_x = xmin;
  fixedpoint::number lerp_y = ymin;

  always_ff @(posedge clk) begin
    if(x == 639) begin
      lerp_x <= xmin;
      if(y == 479)begin
        lerp_y <= ymin;
      end 
      else begin
        lerp_y <= lerp_y + lerp_step_y;
      end
    end
    else begin
      lerp_x <= lerp_x + lerp_step_x;
    end
  end

  //later: optimize with counter
  always_ff @(posedge clk) begin
    piped_mem_addr[0] <= flattened_xy;
    for (int i = 0; i < pipe_len-1; i++) begin
      piped_mem_addr[i+1] <= piped_mem_addr[i];
    end 
  end

  //-----------------------------------------------------------------------------

//  fixedpoint::message msg;
//  fixedpoint::message msg_out;
  
//  fixedpoint::number t;
//  fixedpoint::number p;
//  fixedpoint::number r;
//  fixedpoint::number inv;
//  fixedpoint::number inv2;
  
//  fixedpoint::number logdist;
//  fixedpoint::number steps;
  
//  always_ff @(posedge clk) begin
//    msg.pos_x <= fixedpoint::fromfrac #(6)::fp(1, 6'b000000);
//    msg.pos_y <= fixedpoint::fromfrac #(6)::fp(0, 6'b100000);
//    msg.pos_z <= fixedpoint::fromfrac #(6)::fp(0, 6'b100000);
 
//    msg.x_iter <= lerp_x;
//    msg.y_iter <= lerp_y;
//    msg.z_iter <= lerp_x;
    
//    msg.rayd_x <= lerp_x;
//    msg.rayd_y <= lerp_y;
//    msg.rayd_z <= lerp_x;
    
    
  
//    msg.threshold <= 0;
//    msg.steps <= 0;
//    msg.logdist = 0;
    
//     msg.mem_addr = 1230;
//     msg.march_iter = 1;
//     msg.march_depth = 20;
  
//    msg.r <= fixedpoint::fromfrac #(6)::fp(0, 6'b000000);
//    msg.zr <= fixedpoint::fromfrac #(6)::fp(0, 6'b000000);
//    msg.dr <= fixedpoint::fromfrac #(6)::fp(1, 6'b000000);
  
//    msg.theta <= fixedpoint::fromfrac #(6)::fp(0, 6'b000000);
//    msg.phi <= fixedpoint::fromfrac #(6)::fp(0, 6'b000000);
    
//    t <= msg_out.logdist + msg_out.rayd_x;
//    p <= msg_out.steps + msg_out.rayd_y;
//    r <= msg_out.mem_addr + + msg_out.rayd_z;
//    inv <=  msg_out.march_iter;
//    inv2 <=  msg_out.march_depth;
//  end
 
  fixedpoint::number inv;
  fixedpoint::number inv2;
  fixedpoint::number inv3;
  fixedpoint::number inv4;
  
  logic valid;
  logic valid2, valid3;
  //fixedpoint_inverse_number vvg(1'b1, clk, lerp_x, inv, valid);
  //fixedpoint_arctan2 ss (1'b1, clk, lerp_x, fixedpoint::fromInt(1,1), inv, inv2, valid);
  
  //fixedpoint_to_cartesian ff (1'b1, clk, lerp_x, lerp_x, lerp_x, inv2, inv3, inv, valid);
  //fixedpoint_to_polar tp (1'b1,  clk, lerp_x, lerp_x, lerp_x, t, p, r, valid2);
  //fixedpoint_pow8 ffg (1'b1, clk, lerp_x, inv4, valid3);
  //fixedpoint_mult_s (1'b1, clk, lerp_x, lerp_x, inv, valid);
  //dr_zr ge (1'b1, clk, lerp_x, fixedpoint::fromInt(10), inv, inv2, valid);
 // mandelbulb_sdf sss (1'b1, clk, msg, msg_out, valid);
 //mandelbulb_sdf ss (1'b1, clk, msg, msg_out, valid);
  fixedpoint_mult fm1 (1'b1, clk, lerp_x, lerp_x, inv, valid);
  
  fixedpoint::number  delay_y;
RAM_FIFO1 your_instance_name (
  .A(7),      // input wire [7 : 0] A
  .D(lerp_y),      // input wire [255 : 0] D
  .CLK(clk),  // input wire CLK
  .CE(1),    // input wire CE
  .Q(delay_y)      // output wire [255 : 0] Q
);
  
  always_ff @(posedge clk) begin
    if(valid || 1) begin
      start_reg <= 1;
    end
  end
  
  always_ff @(posedge clk) begin
    if(start_reg) begin   
      if(x == 639) begin
        pixel_color <= 12'b111100111111; 
        wea_reg <= 1;    
      end
      else begin
        wea_reg <= 0;
      end
    end      
  end

  //------------------------------------------------------------------

  always_comb begin
    mem_addr = piped_mem_addr[pipe_len-1];
    rgb = pixel_color;
    wea = wea_reg;
  end
endmodule


















