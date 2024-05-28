`timescale 1ns / 1ps

// Connect VGA-controller and later some 
// other devices to the FPGA

module top_layer #(parameter CD = 12)(
input logic clk, reset,BTNC,BTNU,BTND,BTNR,BTNL,
input logic[CD-1:0] vga_si_rgb,
output logic hsync, vsync,
output logic[CD-1:0] rgb);

// localparam declaration
// vga 640-by-480 sync
localparam HD = 640;
localparam HF = 17;
localparam HB = 47;
localparam HR = 96;
localparam HT = HD+HF+HB+HR;
localparam VD = 480;
localparam VF = 11;
localparam VB = 34;
localparam VR = 2;
localparam VT = VD+VF+VB+VR;

//signal declaration
logic[1:0] q_reg;
logic tick_25M;
logic[10:0] x,y;
logic hsync_i, vsync_i, video_on_i;
logic hsync_reg, vsync_reg;
logic[CD-1:0] rgb_reg;

// mod 4 counter to generate 25-Hz tick
always_ff @(posedge clk) begin
    q_reg <= q_reg + 1;
end
assign tick_25M = (q_reg == 2'b11) ? 1 : 0;

// init frame counter
vga_frame_counter #(.HMAX(HT), .VMAX(VT)) frame_unit
(.clk(clk), .reset(reset), .sync_clr(0), .hcount(x), .vcount(y), .inc(tick_25M),
.frame_start(), .frame_end());

// horizontal sync decoding
assign hsync_i = ((x>=(HD+HF)) && (x<=(HD+HF+HR-1))) ? 0 : 1;

// vertical sync decoding
assign vsync_i = ((y>=(VD+VF)) && (y<=(VD+VF+VR-1))) ? 0 : 1;

// display on or off
assign video_on_i = ((x<HD) && (y<VD)) ? 1 : 0;

// checks if we are still on the visible screen
logic is_screen;

// bufferd output to VGA monitor
always_ff @(posedge clk) begin
    vsync_reg <= vsync_i;
    hsync_reg <= hsync_i;
    if(video_on_i) begin
        is_screen <= 1;
    end
    else begin
        is_screen <= 0;
    end
end

// Video Memory declaration. VGA port receives data from the memory
logic wea;
logic [18 : 0] addra;
logic [11 : 0] dina;
logic [11 : 0] douta;
logic [11 : 0] doutb;
logic [18 : 0] addrb;

blk_mem_gen_0 video_memory (
  .clka(clk),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [18 : 0] addra
  .dina(dina),    // input wire [11 : 0] dina
  .douta(douta),  // output wire [11 : 0] douta
  .clkb(clk),    // input wire clkb
  .web(0),      // input wire [0 : 0] web
  .addrb(addrb),  // input wire [18 : 0] addrb
  .dinb(0),    // input wire [11 : 0] dinb
  .doutb(doutb)  // output wire [11 : 0] doutb
);

// Send Memory data to VGA
assign rgb_reg = doutb;

// Init, display only the pixels on the visible area of the screen
draw_vga_from_video_memory pixels (.x(x), .y(y), .clk(clk), .tick_25M(tick_25M), .video_on(video_on_i), .mem_addr(addrb));

// Mandelbulb Section begin -------------------------------

logic [18:0] flattened_vec;
logic [10:0] vec_x;
logic [10:0] vec_y;

//flatten flat(.clk(clk), .flattened_vec(flattened_vec), .vec_x(vec_x), .vec_y(vec_y));

//mandelbulb mb (.clk(clk), .x(vec_x), .y(vec_y), .flattened_xy(flattened_vec), .wea(wea), .mem_addr(addra), .rgb(dina));
ray_march rm (.clk(clk), .BTNC(BTNC), .BTNU(BTNU), .BTND(BTND), .BTNR(BTNR), .BTNL(BTNL), .wea(wea), .mem_addr(addra), .rgb(dina));

// Mandelbulb Section end -------------------------------

// output
assign hsync = hsync_reg;
assign vsync = vsync_reg;
assign rgb = is_screen ? rgb_reg : 0;

endmodule












































































