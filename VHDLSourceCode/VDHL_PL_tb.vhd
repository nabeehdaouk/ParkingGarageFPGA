library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ParkingLotFSM_tb is
end ParkingLotFSM_tb;

architecture Behavioral of ParkingLotFSM_tb is
    -- Input signals
    signal Sense_In, Sense_Out, Override, Start, Stop : std_logic;
    signal clock : std_logic := '0';
    -- Output signals
    signal Open_1, Full, Closed, Up, Down : std_logic;

    -- Instantiate DUT
    component ParkingFSM1
        port (
            Sense_In, Sense_Out, Override, Start, Stop, clk : in std_logic;
            Open_1, Full, Closed : out std_logic
        );
    end component;

begin
    -- Instantiate the DUT
    dut : ParkingFSM1
        port map (
            Sense_In => Sense_In,
            Sense_Out => Sense_Out,
            Override => Override,
            Start => Start,
            Stop => Stop,
            clk => clock,
            Open_1 => Open_1,
            Full => Full,
            Closed => Closed
        );

    -- Clock generator
    process
    begin
        wait for 5 ns;
        clock <= not clock;
        if now > 2000 ns then
            wait;
        end if;
    end process;

    -- Stimulus process
    process
    begin
        -- Initialize inputs
        Sense_In <= '0';
        Sense_Out <= '0';
        Override <= '0';
        Start <= '0';
        Stop <= '0';

        -- Wait for the clock to toggle
        wait until rising_edge(clock);

        -- Test case 1: Start the system
        wait for 10 ns;
        Start <= '1';
        wait for 40 ns;
        Start <= '0';

        -- Test case 2: Toggle Sense_In and Sense_Out inputs
        for i in 1 to 50 loop
            wait for 20 ns;
            Sense_In <= not Sense_In;
        end loop;
        for i in 1 to 50 loop
            wait for 20 ns;
            Sense_Out <= not Sense_Out;
        end loop;

        -- Test case 3: Enter and Exit at the same time
        wait for 20 ns;
        Sense_Out <= not Sense_Out;
        wait for 20 ns;
        Sense_Out <= not Sense_Out;
        wait for 20 ns;
        Sense_In <= not Sense_In;
        wait for 20 ns;
        Sense_Out <= not Sense_Out;

        -- Test case 4: Start and stop the system
        wait for 50 ns;
        Start <= '1';
        wait for 50 ns;
        Start <= '0';
        wait for 20 ns;
        Sense_In <= not Sense_In;
        wait for 20 ns;
        Sense_In <= not Sense_In;
        wait for 20 ns;
        Sense_In <= not Sense_In;
        wait for 20 ns;
        Sense_In <= not Sense_In;
        wait for 20 ns;
        Sense_In <= not Sense_In;
        wait for 20 ns;
        Stop <= '1';
        wait for 20 ns;
        Stop <= '0';

        -- End the simulation
        wait;
    end process;

end Behavioral;

