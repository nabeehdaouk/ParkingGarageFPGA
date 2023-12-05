module ParkingFSM(
  input Sense_In, Sense_Out, Override, Start, Stop, clk,
  output reg Open_1, Full, Closed
);

  // State encodings
  parameter sOpen = 2'b00, sFull = 2'b01, sClose = 2'b10, sOverride = 2'b11;

  // Internal FSM state declarations
  reg [1:0] NXT_ST, PRES_ST;
  reg [4:0] count;


  // FSM
  always @(Sense_In, Sense_Out, Override, Start, Stop) begin
	case(PRES_ST)
    	sOpen: begin
        	if (Sense_Out == 1'b1 && count > 0)  
            	count = count - 1;
        	else if (Sense_In == 1'b1 && count < 20)
            	count = count + 1;
     	 
        	if (count >= 20)
           	NXT_ST= sFull;
        	if (Override == 1)
           	NXT_ST= sOverride;
        	if (Stop == 1)
           	NXT_ST= sClose;
        	end
    	sFull: begin
   	 if (Sense_Out == 1'b1 && count > 0)  
            	count = count - 1;

        	if (count < 20)
            	NXT_ST= sOpen;
        	if (Override == 1)
            	NXT_ST= sOverride;
        	if (Stop == 1)
            	NXT_ST= sClose;	
        	count= count; 
    		end
    	sClose: begin
        	if (Stop == 0)
            	NXT_ST= sOpen; 
        	count= count;
    		end
    	sOverride: begin
        	if (Override==1) begin end
        	else if (Stop==1)
            	NXT_ST= sClose;
        	else if (count >= 20)
            	NXT_ST= sFull;
        	else if (count <= 20)
            	NXT_ST= sOpen;
        	count= count; 
    		end 
    	default: begin end
	endcase
end

//Set Output LEDS's
always @(negedge clk) 
begin
Open_1 = (PRES_ST == sOpen);
Full = (PRES_ST ==sFull);
Closed = (PRES_ST == sClose);
end

  // Update current state
  always @(posedge clk)
    begin	
	if (Start == 1)
	begin
	count = 5'b00000;
	NXT_ST = sOpen;
	PRES_ST = sOpen;
	end
else
	PRES_ST = NXT_ST;
  end





endmodule

