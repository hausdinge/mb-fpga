`timescale 1ns / 1ps

// latency: width + 14 = 42
// convert a 2D polar point to 2D Cartesian coordinates.
// scale is the magnitude.
module fixedpoint_sin_cos (
input logic in_valid, 
input logic clk, 
input fixedpoint::number scale, 
input fixedpoint::number angle, 
output fixedpoint::number sin, 
output fixedpoint::number cos, 
output logic out_valid
);
  
  // CORDIC iterations.
  localparam widht = 28;
  
  // store values for arctan(2^-k) values.
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
  
  logic [widht+13:0] sin_sign = 0;
  logic [widht+5:0] cos_sign = 0;
  logic [widht+13:0] out_valid_reg = 0;
  
  fixedpoint::number x [0:widht-1];
  fixedpoint::number y [0:widht-1];
  fixedpoint::number z [0:widht-1];
  
  fixedpoint::number res [0:5];
  fixedpoint::number scale_res [0:9];
  
  logic signed [58:0] out_times_inv_two_pi;
  logic signed [58:0] out_times_two_pi;
  logic signed [58:0] out_times_scale_factor;
  
  // back-shift: 18 signed 
  mult_35_24_core times_two_pi (
    .CLK(clk),                         // input wire CLK
    .A(res[4]>>>3),                    // input wire [34 : 0] A
    .B(24'b110_010010000111111011010), // input wire [23 : 0] B
    .CE(in_valid),                     // input wire CE
    .P(out_times_two_pi)               // output wire [58 : 0] P
  );

  // back-shift: 23 signed
  mult_35_24_core times_inv_two_pi (
    .CLK(clk),                         
    .A(res[1]>>>3),                        
    .B(24'b101000101111100110000011),  
    .CE(in_valid),                     
    .P(out_times_inv_two_pi)      
  );

  // back-shift: 21 signed
  mult_35_24_core times_scale_factor (
    .CLK(clk),  
    .A(scale>>>3),      
    .B(24'b100110110111010101100100),     
    .CE(in_valid),    
    .P(out_times_scale_factor)      
  );

  always_ff @(posedge clk) begin
    if(in_valid) begin
      sin_sign <= (sin_sign << 1'b1) + angle[64];
      out_valid_reg <= (out_valid_reg << 1'b1) + 1'b1; 
      
      res[0] <= angle[64] ? ~angle + 1'b1 : angle;
      res[1] <= res[0];
      
      res[2] <= out_times_inv_two_pi>>>23;
      res[3] <= res[2][31:0];
      
      // shift the angle to the correct quadrant.
      if(res[3][31:30] == 2'b00) begin
        res[4] <= res[3];
        cos_sign[0] <= 0;
      end
      if(res[3][31:30] == 2'b01)begin
        res[4] <= fixedpoint::fromfrac #(1)::fp(0, 1'b1) - res[3];
        cos_sign[0] <= 1;
      end
      if(res[3][31:30] == 2'b10) begin
        res[4] <= fixedpoint::fromfrac #(1)::fp(0, 1'b1) - res[3];
        cos_sign[0] <= 1;
      end
      if(res[3][31:30] == 2'b11) begin
        res[4] <= res[3] - fixedpoint::fromInt(1);
        cos_sign[0] <= 0;
      end
      
      
      res[5] <= out_times_two_pi>>>18;
      scale_res[0] <= out_times_scale_factor>>>21;
      
      for(int i=0; i < 9; i++) begin
        scale_res[i+1] <= scale_res[i];
      end
      for(int i=0; i < widht+5; i++) begin
        cos_sign[i+1] <= cos_sign[i];
      end
    end
  end
  
  always_ff @(posedge clk) begin
    x[0] <= scale_res[9];
    y[0] <= 0;
    z[0] <= res[5];
    
    if(in_valid) begin
      // make CORDIC iterations.
      for(int i = 0; i < widht-1; i++) begin
        x[i+1] <= z[i][64] == 1 ? x[i] + (y[i] >>> i) : x[i] - (y[i] >>> i);
        y[i+1] <= z[i][64] == 1 ? y[i] - (x[i] >>> i) : y[i] + (x[i] >>> i);
        z[i+1] <= z[i][64] == 1 ? z[i] + arctan_table[i] :  z[i] - arctan_table[i];
      end
    end
  end
  
  always_comb begin
    sin = 1'b0;
    cos = 1'b0;
    out_valid = 1'b0;
    if(out_valid_reg[widht+13]) begin
      sin = sin_sign[widht+13] ? ~y[widht-1] + 1'b1 : y[widht-1];
      cos = cos_sign[widht+5] ? ~x[widht-1] + 1'b1 : x[widht-1];
      out_valid = 1'b1;
    end
  end
endmodule
















