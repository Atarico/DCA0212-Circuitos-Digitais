LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY LatchD IS
	PORT (D, Clk : in STD_LOGIC;
			Q : OUT STD_LOGIC);
END LatchD;
ARCHITECTURE Behavior OF LatchD IS
	BEGIN
	PROCESS (D, Clk)
		BEGIN
		IF Clk = '1' THEN
			Q<=D;
		END IF;
	END PROCESS;
END Behavior;