`timescale 1ns / 1ps

package fixedpoint;
  localparam integer_bits = 33;
  localparam fractional_bits = 32;
  localparam total_bits = integer_bits + fractional_bits;
  
  // ceil(log2(totalbits))
  localparam max_shift_size = $clog2(total_bits); 

  typedef logic signed [total_bits-1:0] number;
  
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
    
    logic [18:0] mem_addr;
    logic [7:0] march_iter;
    number march_depth;
    
    number rayd_x;
    number rayd_y;
    number rayd_z;
    
    number logdist;
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
  
  // Get the index of the most significant bit
  function automatic logic[max_shift_size-1:0] MSB_index(input number n1);
    number n2 = n1 < 0 ? ~n1 + 1 : n1;
    logic[max_shift_size-1:0] res;
    for(int i = 0; i < total_bits; i++) begin
      if(n2[i] == 1'b1) begin
        res = i;
      end
    end
    return res;
  endfunction

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
  
  function automatic number add(input number num1, input number num2);
    return num1 + num2;
  endfunction
  
  // Linear interpolation bewteen v0 and v1, note i in [0,...,n] and t = 1/n
  function automatic number lerp(input number v0, input number v1, input number i, input number t);
    number n1 = mult(i, t);
    number n2 = fromInt(1) - n1;
    number n3 = mult(n2, v0) + mult(n1, v1);
    return n3;
  endfunction
  
  
  
  function automatic number inverse_number(input number n1);
    logic sign = n1 < 0 ? 1 : 0;
    number n2 = n1 < 0 ? ~n1 + 1 : n1;
    
    number d;
    number x;
    
    number c1 = fromfrac #(17)::fp(4, 17'b00111110000011111); // 140/33
    number c2 = fromfrac #(20)::fp(5, 20'b11010001011101000101, 1); // -64/11
    number c3 = fromfrac #(20)::fp(2, 20'b10010101111110101101); // 256/99
    
    logic signed [max_shift_size:0] msb_pos = MSB_index(n2);
    logic signed [max_shift_size:0] shift = msb_pos - fractional_bits + 1;
    
    if(n1 == 0) begin
      return {(total_bits - 1){1'b1}};
    end
    
    d = (shift < 0) ? (n2 <<< (~shift + 1)) : (n2 >>> shift);
    
    x = c1 + mult(d, c2 + mult(d, c3));
    
    
    //x =  mult(x, fromInt(2) - mult(d, x));
    //x =  mult(x, fromInt(2) - mult(d, x));
    
    
    x = (shift < 0) ? (x <<< (~shift + 1)) : (x >>> shift);
    return sign ? ~x + 1 : x;
  endfunction
  
  function automatic number sqrt(input number n1);
    number d;
    number res;
    
    logic signed [max_shift_size:0] msb_pos = MSB_index(n1);
    logic signed [max_shift_size:0] shift = msb_pos - fractional_bits + 1;
    logic signed [max_shift_size:0] back_shift;
    
    logic is_odd = (shift[0] == 1) ? 1 : 0;
    logic is_odd_comp = ~is_odd;
    logic signed [max_shift_size:0] ls = ~shift + is_odd_comp;
    logic signed [max_shift_size:0] rs = shift + is_odd;
    
    number x0 = fromfrac #(20)::fp(0, 20'b01);
    number x1 = fromfrac #(20)::fp(0, 20'b10000101000101000001);
    number x2 = fromfrac #(20)::fp(0, 20'b11110110110111010100);
    number x3 = fromfrac #(20)::fp(1, 20'b10100101011001001101);
    
    number m0 = fromfrac #(20)::fp(0, 20'b11010001101010100010);
    number m1 = fromfrac #(20)::fp(0, 20'b10010110010100101101);
    number m2 = fromfrac #(20)::fp(0, 20'b01110001000001100110);
    
    number b0 = fromfrac #(20)::fp(0, 20'b01001011100101010111);
    number b1 = fromfrac #(20)::fp(0, 20'b01101010011011100111);
    number b2 = fromfrac #(20)::fp(0, 20'b10001110011001100011);
    
    d = (shift < 0) ? (n1 << ls) : (n1 >> rs);
    back_shift = (shift < 0) ? (ls >> 1) : (rs >> 1);
    
    if (d >= x0 && d < x1) begin
      res = mult(d, m0) + b0;
    end else if (d >= x1 && d < x2) begin
      res = mult(d, m1) + b1;
    end else if (d >= x2 && d < x3) begin
      res = mult(d, m2) + b2;
    end
   
    return (shift < 0) ? (res >> back_shift) : (res << back_shift);
    
  endfunction
  
endpackage















