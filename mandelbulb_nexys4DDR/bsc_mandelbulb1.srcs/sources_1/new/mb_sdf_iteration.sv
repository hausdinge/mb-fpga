`timescale 1ns / 1ps

//latency: 106 clock cycles
module mb_sdf_iteration(input logic in_valid, input logic clk, input fixedpoint::message data_in, output fixedpoint::message data_out, output logic out_valid);
  fixedpoint::message msg_out0, msg_out1, msg_out2;
  logic valid0,valid1,valid2;
  
  mb_to_polar tp (in_valid, clk, data_in, msg_out0, valid0);
  mb_dr_zr dr_zr (valid0, clk, msg_out0, msg_out1, valid1);
  mb_to_cartesian tc (valid1, clk, msg_out1, msg_out2, valid2);
  
   always_comb begin
    data_out = '{default:0};
    out_valid = 1'b0;
    if(valid2) begin
      data_out = msg_out2;
      out_valid = 1'b1;
    end
  end 
endmodule
