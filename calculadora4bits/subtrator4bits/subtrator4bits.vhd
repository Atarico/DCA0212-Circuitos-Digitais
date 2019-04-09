ENTITY subtrator4bits IS
	PORT(cinsb : IN BIT;
	asb: in BIT_VECTOR (3 downto 0);
	bsb: in BIT_VECTOR (3 downto 0);
	coutsb: OUT BIT;
	ssb: out BIT_VECTOR (3 downto 0));
END subtrator4bits;

--arquitetura
ARCHITECTURE circuito OF subtrator4bits IS
component subtrator is 
	port(a, b, c_in : in bit; 
	s, c_out : out bit); 
end component;
signal c: bit_vector(4 downto 0);
BEGIN
gen: for i in 0 to 3 generate
	uut: subtrator port map (a => asb(i), b => bsb(i), c_in => c(i), s => ssb(i), c_out => c(i+1));
end generate;
	c(0) <= cinsb;
	coutsb <= c(4);
END circuito;
