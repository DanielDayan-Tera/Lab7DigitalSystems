module half_sub(
  input [1:0]sw,
  output Y, Borrow,
  output [1:0]led
);
  // Diffrence
  assign Y = (sw[0] ^ sw[1]);  
  assign led[0] = Y;
  
  // Borrow
  assign Borrow = (~sw[0] & sw[1]); 
  assign led[1] = Borrow;
  
endmodule
  

