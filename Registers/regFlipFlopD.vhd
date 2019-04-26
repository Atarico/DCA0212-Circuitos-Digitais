LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY regFlipFlopD IS
	PORT (Clk: IN STD_LOGIC;
			D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END regFlipFlopD;
ARCHITECTURE Behavior OF regFlipFlopD IS
COMPONENT FlipFlopD IS
	PORT (D, Clk : IN STD_LOGIC;
			Q: OUT STD_LOGIC);
END COMPONENT;
	BEGIN
	gen: for i in 0 to 7 generate
		uut: FlipFlopD port map (D => D(i), Q=> Q(i), Clk => Clk);
	end generate;
END Behavior;