`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2023 12:41:38
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench;


logic clk;
logic clk_400;
logic locked;
logic reset = 0;
logic eq;
logic[1:0] d = 0;
logic sss;

initial begin
clk <= 0;
end

always begin
#0.1 clk <= ~clk;
end

clk_wiz_400 instance_name
   (
    // Clock out ports
    .clk_out1(clk_400),     // output clk_out1
    // Status and control signals
    .reset(reset), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(clk)      // input clk_in1
);



always_ff @(posedge clk_400)begin 
 d <= d+1;
end

always_comb begin
 eq = d == 1 ? 1 : 0;
end

//00000000000000000000000000 1001100110
//fixedpoint::number n1 = 32'b00000000001001100110_000000000000; //7.1234
//fixedpoint::number n2 = 32'b00000000000110101110_000000000000;//-0.5678
/*fixedpoint:: number xmin = fixedpoint::fromInt(1, 1);
fixedpoint:: number xmax = fixedpoint::fromInt(1);
fixedpoint:: number ymin = fixedpoint::fromInt(1);
fixedpoint:: number ymax = fixedpoint::fromInt(1,1);
fixedpoint::number t_x = fixedpoint::fromfrac #(20)::fp(0, 20'b00000000011001100110); //1/640
fixedpoint::number t_y = fixedpoint::fromfrac #(20)::fp(0, 20'b00000000100010001000);//1/480
fixedpoint::number lerp_x = 0;
fixedpoint::number lerp_y = 0;
fixedpoint::number n1 = fixedpoint::mult(fixedpoint::fromInt(0), t_y);
fixedpoint::number n2 = fixedpoint::fromInt(1) - n1;
fixedpoint::number n3 = fixedpoint::mult(n2, ymin) + fixedpoint::mult(n1, ymax);
//fixedpoint::number erg = fixedpoint::fromfrac #(1)::fp(0, 1'b1, 1);*/

//fixedpoint::message msg;
//fixedpoint::message msg_out;
//logic [7:0] next = 0;
//logic break_cond;
//logic [7:0] max_iter = 100;

//logic valid;
//always_comb begin
//  msg.pos_x = fixedpoint::fromfrac #(2)::fp(1, 2'b00);
//  msg.pos_y = fixedpoint::fromfrac #(2)::fp(1, 2'b01);
//  msg.pos_z = fixedpoint::fromfrac #(3)::fp(1, 3'b010);
 
//  msg.x_iter = fixedpoint::fromfrac #(2)::fp(1, 2'b00);
//  msg.y_iter =  fixedpoint::fromfrac #(2)::fp(1, 2'b01);
//  msg.z_iter = fixedpoint::fromfrac #(3)::fp(1, 3'b010);
  
//  msg.rayd_x <= 1;
//  msg.rayd_y <= 1;
//  msg.rayd_z <= 1;      
//  msg.logdist <= 0;
  
  
  
//  msg.threshold = 0;
//  msg.steps = 0;
  
//  msg.mem_addr = 0;
//  msg.march_iter = 0;
//  msg.march_depth = 0;
  
//  msg.r = fixedpoint::fromfrac #(6)::fp(0, 6'b00000);
//  msg.zr = fixedpoint::fromfrac #(6)::fp(0, 6'b000000);
//  msg.dr = fixedpoint::fromfrac #(6)::fp(1, 6'b000000);
  
//  msg.theta = fixedpoint::fromfrac #(6)::fp(0, 6'b000000);
//  msg.phi = fixedpoint::fromfrac #(6)::fp(0, 6'b000000);
//end

////ray_march dd(.clk(clk), .wea(), .mem_addr(), .rgb(), .out(msg_out), .tt(break_cond));

////mandelbulb_sdf ss (1'b1, clk, msg, msg_out,valid);
//logic [4:0] aa = 5-3;

//mb_sdf_iteration vv(1'b1, clk, msg, msg_out, valid);

//logic [11:0] y;
//logic [18:0] x;
//fixedpoint::number lx;
//fixedpoint::number ly;
//ray_march dd(clk, wea, x, y, lx, ly);



////logic [3:0] m = 1;
////fixedpoint::number n1 = fixedpoint::fromfrac #(18)::fp(0, 18'b000000011000000110);
//    //fixedpoint::number m = fixedpoint::fromfrac #(20)::fp(0, 20'b10010110010100101101);
//    //fixedpoint::number b = fixedpoint::fromfrac #(20)::fp(0, 20'b011010100110111001111);
////fixedpoint::number n2 = fixedpoint::sqrt(n1);
////fixedpoint::number res = fixedpoint::mult(n1,  m) + b;
//fixedpoint::number num1 = fixedpoint::fromfrac #(12)::fp(1, 12'b000000000000); //th
//fixedpoint::number num2 = fixedpoint::fromfrac #(8)::fp(1, 8'b00000000); //phi
//fixedpoint::number num3 = fixedpoint::fromfrac #(2)::fp(1, 2'b00); // r
//fixedpoint::number theta;
//fixedpoint::number phi;
//////logic [5:0] steps;
//fixedpoint::number r;
//logic valid;

//fixedpoint_mult b (1'b1, clk, num1, num2, prod, valid);

//mb_log_dist ll (1'b1, clk, num1, num2, 10, x, steps, valid);
//fixedpoint_inverse_number invn (1'b1, clk, num2, x, valid);

//fixedpoint::number zr;
//fixedpoint::number dr;
//logic[5:0] idx2;
//logic dd = num1 <= -1;
//fixedpoint_mult hh (1'b1, clk, num1, num2, idx, valid);
//fixedpoint_arctan2 vv(1'b1, clk,num1,num2, atan2,r, valid);
//dr_zr ge (1'b1, clk, num1, num2, zr, dr, valid);

//fixedpoint_to_polar tp (1'b1, clk, num1, num2, num3, theta, phi, r, valid);

//fixedpoint_to_cartesian ff (1'b1, clk, num1, num2, num3, x, y, z, valid);
//fixedpoint_pow8 ffg (1'b1, clk, num1, x, valid);
//fixedpoint_MSB_index2 fff(1'b1, clk, num1, idx, valid);
//fixedpoint_MSB_index fsff(1'b1, clk, num1, idx2, valid);

//fixedpoint_mult_s ddd (1'b1, clk, num1, num1, idx, valid);

//logic [1:0] cnt = 0;

//always_ff @(posedge clk)begin 
//  if(cnt == 0) begin
////  msg.x_iter <= fixedpoint::fromfrac #(6)::fp(0, 6'b110000);
////  msg.pos_x <= fixedpoint::fromfrac #(6)::fp(0, 6'b110000);
////  msg.march_depth <= 2;
//    num1 <= fixedpoint::fromfrac #(12)::fp(10, 12'b000000000000);
//  end
//  if(cnt == 1) begin
////  msg.x_iter <= fixedpoint::fromfrac #(6)::fp(0, 6'b100000);
////  msg.pos_x <= fixedpoint::fromfrac #(6)::fp(0, 6'b100000);
////  msg.march_depth <= 3;
//  num1 <= fixedpoint::fromfrac #(12)::fp(15, 12'b000000000000);
//  end
//  if(cnt == 2) begin
////  msg.x_iter <= fixedpoint::fromfrac #(6)::fp(0, 6'b010000);
////  msg.pos_x <= fixedpoint::fromfrac #(6)::fp(0, 6'b010000);
////  msg.march_depth <= 4;
//  num1 <= fixedpoint::fromfrac #(12)::fp(20, 12'b000000000000);
//  end
//  if(cnt == 3) begin
////  msg.x_iter <=  fixedpoint::fromfrac #(6)::fp(1, 6'b000000);
////  msg.pos_x <=  fixedpoint::fromfrac #(6)::fp(1, 6'b000000);
////  msg.march_depth <= 1;
//  num1 <= fixedpoint::fromfrac #(12)::fp(1, 12'b000000000000);
//  end
  
//  cnt <=cnt +1;
//end

/*logic [4:0] eo;
RAM_FIFO1 your_instance_name (
  .A(6),      // input wire [7 : 0] A
  .D(15),      // input wire [255 : 0] D
  .CLK(clk),  // input wire CLK
  .CE(1),    // input wire CE
  .Q(eo)      // output wire [255 : 0] Q
);

 distlinnn your_instanceg_name (
  .a(12'b000000000000),              // input wire [11 : 0] a
  .clk(clk),          // input wire clk
  .qspo_ce(1),  // input wire qspo_ce
  .qspo(idx)        // output wire [48 : 0] qspo
);*/



endmodule
































