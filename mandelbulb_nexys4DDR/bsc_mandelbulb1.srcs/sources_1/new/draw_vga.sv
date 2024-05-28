`timescale 1ns / 1ps

// x-max 640px, y-max 480px
module draw_vga_from_video_memory(
input logic[10:0] x, 
input logic[10:0] y, 
input logic clk, input logic tick_25M, 
input logic video_on, 
output logic[18:0] mem_addr);

// Iterate over every memory element for all pixels on the VGA screen
logic [18:0] cnt;
logic sw = 1; // One time init for cnt
logic st = 0; // Init the frame counters to top left corner, otherwise it is random
always_ff @(posedge clk) begin 
    if(sw) begin
        cnt = 0;
        sw = 0;
    end
    
    if(x == 0 && y == 0) begin
       st <= 1; 
    end
    
    if (tick_25M && st && video_on) begin
        if(cnt >= 307199) begin
            cnt = 0;
        end
        else begin
            cnt = cnt + 1;
        end
    end
end
assign mem_addr = cnt;

endmodule









