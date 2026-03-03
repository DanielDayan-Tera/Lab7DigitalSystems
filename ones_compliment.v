module(
  input [9:0]sw,
  output [5:0]led
);
  wire c_1, c_2, c_3, c_4;
  // bit 0 half
  assign led[2] = sw[2] ^ sw[3];
  assign c_1 = sw[2] & sw[3];
  // bit 1 full
  assign led[3] = (sw[4] ^ sw[5]) ^ c_1;
  assign c_2 = ((sw[4] ^ sw[5]) & c_1) | (sw[4] & sw[5]);
  //bit 2 full
  assign led[4] = (sw[6] ^ sw[7]) ^ c_2;
  assign c_3 = ((sw[6] ^ sw[7]) & c_2) | (sw[6] & sw[7]);
  //bit 3 full
  assign led[5] = (sw[8] ^ sw[9]) ^ c_3;
  assign c_4 = ((sw[8] ^ sw[9]) & c_3) | (sw[8] & sw[9]);
  
  
  
endmodule
