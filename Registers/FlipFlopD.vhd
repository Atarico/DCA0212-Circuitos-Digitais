LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY FlipFlopD IS
	PORT (D, Clk : in STD_LOGIC;
			Q : OUT STD_LOGIC);
END FlipFlopD;
ARCHITECTURE Behavior OF FlipFlopD IS
	BEGIN
	PROCESS (Clk)
		BEGIN
		IF Clk'EVENT AND Clk = '1' THEN
			Q<=D;
		END IF;
	END PROCESS;
END Behavior;