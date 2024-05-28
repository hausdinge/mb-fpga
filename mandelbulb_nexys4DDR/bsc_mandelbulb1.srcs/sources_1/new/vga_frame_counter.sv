`timescale 1ns / 1ps


module vga_frame_counter #(parameter HMAX = 640, VMAX = 480) (
input logic clk,
input logic reset,
input logic inc,
input logic sync_clr,
output logic [10:0] hcount,
output logic [10: 0] vcount,
output logic frame_start,
output logic frame_end
);

// signal declaration
logic [10:0] hc_reg, hc_next;
logic [10:0] vc_reg, vc_next;

// body
// horizontal and vertical pixel counters
// register
always_ff @(posedge clk, posedge reset) begin
    if(reset) begin
        vc_reg <= 0;
        hc_reg <= 0;
    end
    else if(sync_clr) begin
        vc_reg <= 0;
        hc_reg <= 0;
    end
    else begin
        vc_reg <= vc_next;
        hc_reg <= hc_next;
    end
end 

// next-state logic horizontal counter
always_comb begin
    if(inc) begin
        if(hc_reg == (HMAX -1)) begin
            hc_next = 0;
        end
        else begin
            hc_next = hc_reg + 1;
        end
    end 
    else begin
        hc_next = hc_reg;
    end  
end

// next-state logic vertical counter
always_comb begin
    if(inc && (hc_reg == (HMAX -1))) begin
        if(vc_reg == (VMAX -1)) begin
            vc_next = 0;
        end
        else begin
            vc_next = vc_reg + 1;
        end
    end
    else begin
        vc_next = vc_reg;
    end
end

//output
assign hcount = hc_reg;
assign vcount = vc_reg;
assign frame_start = vc_reg == 0 && hc_reg == 0;
assign frame_end = vc_reg==(VMAX-1) && hc_reg==(HMAX-1);
endmodule



























































