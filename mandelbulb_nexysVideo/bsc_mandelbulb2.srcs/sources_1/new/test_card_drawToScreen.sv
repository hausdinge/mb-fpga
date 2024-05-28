`timescale 1ns / 1ps

// Only some tests to draw something on the screen.
module test_card_drawToScreen#(
H_RES = 640, 
V_RES = 480
)(
input logic clk,
output logic en_write_framebuffer,
output logic [5:0] framebuffer_data,
output logic [19:0] framebuffer_addr
);

  logic [10:0] x = 0;
  logic [10:0] y = 0;
  logic [19:0] flat = 0;
  
  logic [5:0] pixel_color = 0;
  logic we_reg = 0;
  logic [19:0] mem_addr_reg = 0;
  
  always_ff @(posedge clk) begin
    if(x == H_RES - 1) begin
      flat <= flat + 1;
      x <= 0;
      if(y == V_RES - 1)begin
        y <= 0;
        flat <= 0;
      end 
      else begin
        y <= y + 1;
        flat <= flat + 1;
      end
    end
    else begin
      x <= x + 1;
      flat <= flat + 1;
    end
  end
  
  always_ff @(posedge clk) begin
    if(x == 0) begin
      we_reg <= 1;
      mem_addr_reg <= flat;
      pixel_color <= 15;
    end
    else begin
      we_reg <= 0;
    end
  end

 assign en_write_framebuffer = we_reg;
 assign framebuffer_data = pixel_color;
 assign framebuffer_addr = mem_addr_reg;
endmodule












