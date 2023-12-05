
module ParkingFSM ( Sense_In, Sense_Out, Override, Start, Stop, clk, Open_1, 
        Full, Closed );
  input Sense_In, Sense_Out, Override, Start, Stop, clk;
  output Open_1, Full, Closed;

  assign Closed = 1'b0;
  assign Full = 1'b0;
  assign Open_1 = 1'b1;

endmodule

