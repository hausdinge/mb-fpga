`timescale 1ns / 1ps

module testbench;
logic clk;

initial begin
clk <= 0;
end

always begin
#0.1 clk <= ~clk;
end

//Division, complete
//fixedpoint::number num1 = fixedpoint::fromfrac #(12)::fp(123456, 12'b000000000000);
//fixedpoint::number num2;
//logic valid; 
//fixedpoint_inverse_number invn (1'b1, clk, num1, num2, valid);

//Log2, complete
//fixedpoint::number num1 = fixedpoint::fromfrac #(12)::fp(0, 12'b110000000000);
//fixedpoint::number num2;
//logic valid; 
//fixedpoint_log2 lg2 (1'b1, clk, num1, num2, valid);

//approx_mult, complete
//fixedpoint::number num1 = fixedpoint::fromfrac #(12)::fp(2, 12'b000000000011);
//fixedpoint::number num2 = fixedpoint::fromfrac #(8)::fp(2, 8'b00001101,1);
//fixedpoint::number prod;
//logic valid; 
//approximate_multiplier fms (1'b1, clk, num1, num2, prod, valid);


//arctan2, complete
//fixedpoint::number n_y = fixedpoint::fromfrac #(12)::fp(10, 12'b000000000000);
//fixedpoint::number n_x = fixedpoint::fromfrac #(8)::fp(6, 8'b00000000);
//fixedpoint::number atan2;
//fixedpoint::number r;
//logic valid; 
//fixedpoint_arctan2 arctan2 (1'b1, clk, n_y, n_x, atan2, r, valid);


//mult, complete
//fixedpoint::number num1 = fixedpoint::fromfrac #(12)::fp(0, 12'b100000000000);
//fixedpoint::number num2 = fixedpoint::fromfrac #(8)::fp(1, 8'b00110000);
//fixedpoint::number prod;
//logic valid; 
//fixedpoint_mult fm (1'b1, clk, num1, num2, prod, valid);

//sincos, complete
//fixedpoint::number scale = fixedpoint::fromfrac #(12)::fp(6, 12'b000000000000);
//fixedpoint::number angle = fixedpoint::fromfrac #(12)::fp(4, 12'b000000000000);
//fixedpoint::number sin;
//fixedpoint::number cos;
//logic valid; 
//fixedpoint_sin_cos sincos (1'b1, clk, scale, angle, sin, cos, valid);

//to_cartesian, complete
//fixedpoint::number theta = fixedpoint::fromfrac #(12)::fp(10, 12'b000000000000);
//fixedpoint::number phi = fixedpoint::fromfrac #(12)::fp(3, 12'b000000000000);
//fixedpoint::number r = fixedpoint::fromfrac #(12)::fp(15, 12'b000000000000);
//fixedpoint::number x;
//fixedpoint::number y;
//fixedpoint::number z;
//logic valid;
//fixedpoint_to_cartesian ftc (1'b1, clk, theta, phi,r, x, y, z, valid);

//to_polar, complete
//fixedpoint::number x = fixedpoint::fromfrac #(12)::fp(10, 12'b000000000000);
//fixedpoint::number y = fixedpoint::fromfrac #(12)::fp(3, 12'b000000000000);
//fixedpoint::number z = fixedpoint::fromfrac #(12)::fp(15, 12'b000000000000);
//fixedpoint::number theta;
//fixedpoint::number phi;
//fixedpoint::number r;
//logic valid;
//fixedpoint_to_polar ftp (1'b1, clk, x, y, z, theta,  phi, r, valid);

//log_dist, complte
//fixedpoint::number in_r = fixedpoint::fromfrac #(12)::fp(16, 12'b000000000000);
//fixedpoint::number in_dr = fixedpoint::fromfrac #(12)::fp(20, 12'b000000000000);
//fixedpoint::number logdist;
//logic valid;
//mb_log_dist mld(1'b1, clk, in_r, in_dr, logdist, valid);

//pow7
//fixedpoint::number num1 = fixedpoint::fromfrac #(12)::fp(0, 12'b010000000000);
//fixedpoint::number pow8;
//logic valid;
//fixedpoint_pow8 pw8 (1'b1, clk, num1, pow8, valid);

//bkm_log
fixedpoint::number num1 = fixedpoint::fromfrac #(12)::fp(17, 12'b000000000000);
fixedpoint::number log2;
logic valid;
bkm_log2 bkmlog2 (1'b1, clk, num1, log2, valid);

// cordic inverse number
//fixedpoint::number num1 = fixedpoint::fromfrac #(12)::fp(1, 12'b000000000000);
//fixedpoint::number inv;
//logic valid;
//cordic_inverse_number cinv (1'b1, clk, num1, inv, valid);

//drzr
//fixedpoint::number in_r = fixedpoint::fromfrac #(12)::fp(1, 12'b100000000000);
//fixedpoint::number in_dr = fixedpoint::fromfrac #(12)::fp(100, 12'b000000000000);
//fixedpoint::number out_zr;
//fixedpoint::number out_dr;
//logic valid;
//dr_zr drz (1'b1, clk, in_r, in_dr, out_zr, out_dr, valid);


//logic [1:0] cnt = 0;

//always_ff @(posedge clk)begin 
//  if(cnt == 0) begin
//    num1 <= fixedpoint::fromfrac #(12)::fp(2, 12'b000000000000);
//  end
//  if(cnt == 1) begin
//  num1 <= fixedpoint::fromfrac #(12)::fp(16, 12'b000000000000);
//  end
//  if(cnt == 2) begin
//  num1 <= fixedpoint::fromfrac #(12)::fp(4, 12'b000000000000);
//  end
//  if(cnt == 3) begin
//  num1 <= fixedpoint::fromfrac #(12)::fp(1, 12'b000000000000);
//  end

//  cnt <=cnt +1;
//end
//fixedpoint::number f = fixedpoint::fromfrac #(1)::fp(1, 1'b0);
//fixedpoint::message msg;
//fixedpoint::message msg_out;
//logic [7:0] next = 0;
//logic break_cond;
//logic [7:0] max_iter = 100;
//logic valid;
//always_comb begin
//  msg.pos_x = fixedpoint::fromfrac #(32)::fp(0, 32'b01100100010111110000100001001110);
//  msg.pos_y = fixedpoint::fromfrac #(32)::fp(0, 32'b00111010000000111100010010000101);
//  msg.pos_z = fixedpoint::fromfrac #(32)::fp(0, 32'b11110011101010010110110010100000);
 
//  msg.x_iter = fixedpoint::fromfrac #(32)::fp(0, 32'b01100100010111110000100001001110);      
//  msg.y_iter = fixedpoint::fromfrac #(32)::fp(0, 32'b00111010000000111100010010000101);     
//  msg.z_iter = fixedpoint::fromfrac #(32)::fp(0, 32'b11110011101010010110110010100000);    
  
//  msg.rayd_x = 1;
//  msg.rayd_y = 1;
//  msg.rayd_z = 1;      
//  msg.logdist = 0;
//  msg.epsilon = 1000;
  
  
//  msg.threshold = 0;
//  msg.steps = 0;
  
//  msg.mem_addr = 0;
//  msg.march_iter = 0;
//  msg.march_depth = 0;
  
//  msg.r = fixedpoint::fromfrac #(6)::fp(0, 6'b00000);
//  msg.zr = fixedpoint::fromfrac #(6)::fp(2, 6'b000000);
//  msg.dr = fixedpoint::fromfrac #(6)::fp(1, 6'b000000);
  
//  msg.theta = fixedpoint::fromfrac #(6)::fp(15, 6'b000000);
//  msg.phi = fixedpoint::fromfrac #(6)::fp(3, 6'b000000);
//end

//mb_to_polar mbtp (1'b1, clk, msg, msg_out, valid);
//mb_to_cartesian mbtc (1'b1, clk, msg, msg_out, valid);

//mandelbulb_sdf ss (1'b1, clk, msg, msg_out, valid);
//mb_sdf_iteration vv(1'b1, clk, msg, msg_out, valid);

//logic wea;
//logic [19:0] mem_addr;
//logic [5:0] rgb;
//fixedpoint::message data_out;
//logic sss;
//ray_march rm (clk, 0, 0, 0, 0, 0, 0, 0, wea, mem_addr, rgb, data_out);

//typedef struct{
//logic [5:0] instr;
//logic [5:0] addr;
//} ttt;

//ttt s = '{instr: 3, addr: 2};
//ttt neww;
//assign s.addr = 10;

//always_ff @(posedge clk) begin
//  neww <= s;
//end
//fixedpoint::number ss =  fixedpoint::fromfrac #(8)::fp(8, 8'b00000000);
//logic [36:0] aa =  ss;

endmodule




























