module half_sub(
  input A, B,
  output Y, Borrow
);

  assign Y = (A ^ B);  // Diffrence
  assign Borrow = (~A & B); // Borrow

  
