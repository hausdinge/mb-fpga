`timescale 1ns / 1ps

package fixedpoint;
  // Here we define the fixed point format (almost all calculations). 
  // To get better precision than double precision set fractional_bits = 57 and integer_bits = 8 
  // (than we need to adjust the the precision of the algorithms).
  // But in total the nexys video has insufficient ressources that the algorithms
  // can calculate that precise.
  localparam integer_bits = 33;
  localparam fractional_bits = 32;
  localparam total_bits = integer_bits + fractional_bits;
  
  // ceil(log2(totalbits))
  localparam max_shift_size = $clog2(total_bits); 
  
  // define the fixedpoint data-type (only possible in system verilog).
  typedef logic signed [total_bits-1:0] number;
  
  // We define here the data-bus.
  typedef struct {
    number pos_x;
    number pos_y;
    number pos_z;
    
    number x_iter;
    number y_iter;
    number z_iter;
    
    logic [5:0] steps;
    
    number r;
    number dr;
    number zr;
    
    number theta;
    number phi;
    
    logic threshold;
    
    logic [19:0] mem_addr;
    logic [8:0] march_iter;
    number march_depth;
    
    number rayd_x;
    number rayd_y;
    number rayd_z;
    
    number logdist;
    number epsilon;
    
    logic [8:0] mb_iter;
    
  }message;
 
  //---------------------------------------------------------------------------------------------
  
  // Convert integers to positive or negative fixedpoint numbers
  function automatic number fromInt (input logic [integer_bits-1:0] val, input logic sign = 0);
    number n1 = {val, {fractional_bits{1'b0}}};
    return sign ? ~n1 + 1 : n1;
  endfunction
  
  // Convert fractional numbers in fixedpoint numbers
  // note: convert fracs in binary fraction
  virtual class fromfrac #(parameter SIZE=2);
    static function number fp (input logic [integer_bits-1:0] ints, input logic [SIZE-1:0] fracs, input logic sign = 0);
      number n1 = {ints, fracs, {(fractional_bits-SIZE){1'b0}}};
      return sign ? ~n1 + 1 : n1;
    endfunction
  endclass
  
  // This is only used for constants and parameters.
  function automatic number mult(input number num1, input number num2);
    logic signed [2*total_bits-1:0] p1;
    number p2;
    logic sig;
    sig = (num1 != 0 && num2 != 0) ? num1[total_bits-1]^num2[total_bits-1] : 0;
    p1 = num1*num2;
    p2 = p1[total_bits + fractional_bits - 1: fractional_bits];
    p2[total_bits-1] = sig;
    return p2;
  endfunction
endpackage















