`timescale 1ns / 100ps
module ParkingLotFSM_tb();

reg Sense_In, Sense_Out, Override, Start, Stop;
wire Open, Full, Closed, Up, Down;
reg clock;

ParkingFSM dut(
	.Sense_In(Sense_In),
	.Sense_Out(Sense_Out),
	.Override(Override),
	.Start(Start),
	.Stop(Stop),
	.clk(clock),
	.Open_1(Open),
	.Full(Full),
	.Closed(Closed)
);
initial begin
	clock = 0;
	Sense_In = 0;
	Sense_Out = 0;
	Override = 0;
	Start = 0;
	Stop = 0;




#10 Start=1;
#40 Start=0;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;





#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;



//Enter and Exit at Same Time
#20 Sense_Out= ~Sense_Out;
//#20 Sense_In= ~Sense_In;
Sense_Out= ~Sense_Out;

//Test Start
#50 Start = 1;
#50 Start = 0;

//Test Stop
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;


#50 Stop = 1;
#50 Stop = 0;

//Test Override
#50 Override = 1; 
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#50 Override = 0; 

//Test Start
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#20 Sense_Out= ~Sense_Out;
#50 Start = 1;
#50 Start = 0;


#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;
#20 Sense_In= ~Sense_In;

#50 Start = 1;
#50 Start = 0;

end 


always #5 clock = ~clock;


endmodule

