`timescale 1ns / 1ps

// Count the elements of a [0...k]*[0...n] = vec_x*vec_y space, in each clock cycle.
// Example (0,0) -> 0, (k,n) -> n*k
// Important to address video memory
module flatten #(parameter x_max  = 640, 
y_max = 480, 
flat_size = 307200,
x_bits = 11,
y_bits = 11,
flat_bits = 19)(
input logic clk, 
output logic [flat_bits-1:0] flattened_vec, 
output logic [x_bits-1:0] vec_x, 
output logic [y_bits-1:0] vec_y);

logic [flat_bits-1:0] cnt_flat = 0;
logic [x_bits-1:0] cnt_x = 0;
logic [y_bits-1:0] cnt_y = 0;

always_ff @(posedge clk) begin
    cnt_x = cnt_x + 1;

    cnt_flat = cnt_flat + 1;

    if(cnt_x == x_max) begin
        cnt_y = cnt_y + 1;
        cnt_x = 0;
    end

    if (cnt_flat == flat_size) begin
        cnt_flat = 0;
        cnt_y = 0;
    end
end

assign flattened_vec = cnt_flat;
assign vec_x = cnt_x;
assign vec_y = cnt_y;

endmodule

