library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity ParkingFSM1 is
    port (
   	 Sense_In, Sense_Out, Override, Start, Stop, clk : in std_logic;
   	 Open_1, Full, Closed : out std_logic
    );
end ParkingFSM1;

architecture Behavioral1 of ParkingFSM1 is
    -- State encodings
    type state_type is (sOpen, sFull, sClose, sOverride);
    signal NXT_ST, PRES_ST : state_type;
    signal count : unsigned(4 downto 0) := "00000";
begin
    -- procedure for incrementing and decrementing
    count_process: process (Sense_In, Sense_Out, Start)
    begin
    
    if Start = '1' then
    	count <= "00000";
	end if;
    
   	 case PRES_ST is
   		 when sOpen =>
       		 if rising_edge(Sense_Out) and count > 0 then
           		 count <= count - 1;
            	end if;
       		 if rising_edge(Sense_In) and count < 20 then
           		 count <= count + 1;
       		 end if;
   		 when sFull =>
       		 if rising_edge(Sense_Out) and count > 0 then
           		 count <= count - 1;
       		 end if;
        	when others =>
            	null;
   	 end case;
    end process count_process;

    -- Output LEDS
    Open_1 <= '1' when PRES_ST = sOpen else '0';
    Full <= '1' when PRES_ST = sFull else '0';
    Closed <= '1' when PRES_ST = sClose else '0';

    -- Update current state
    state_process: process (clk)
	begin
    
	PRES_ST <= NXT_ST;
    
	if rising_edge(clk) then
    	if Start = '1' then
        	NXT_ST <= sOpen;
    	else
        	case PRES_ST is
            	when sOpen =>
                	if count >= 20 then
                    	NXT_ST <= sFull;
                	elsif Override = '1' then
                    	NXT_ST <= sOverride;
                	elsif Stop = '1' then
                    	NXT_ST <= sClose;
                	else
                    	NXT_ST <= sOpen;
                	end if;
            	when sFull =>
                	if count < 20 then
                    	NXT_ST <= sOpen;
                	elsif Override = '1' then
                    	NXT_ST <= sOverride;
                	elsif Stop = '1' then
                    	NXT_ST <= sClose;
                	else
                    	NXT_ST <= sFull;
                	end if;
            	when sClose =>
                	if Start = '1' then
                    	NXT_ST <= sOpen;
                	else
                    	NXT_ST <= sClose;
                	end if;
            	when sOverride =>
                	if Override = '1' then
                    	null; -- do nothing
                	elsif Stop = '1' then
                    	NXT_ST <= sClose;
                	elsif count >= 20 then
                    	NXT_ST <= sFull;
                	elsif count < 20 then
                    	NXT_ST <= sOpen;
                	else
                    	NXT_ST <= sOverride;
                	end if;
            	when others =>
                	null; -- do nothing
        	end case;
    	end if;
	end if;
end process state_process;


end Behavioral1;

