entity somador4bits is 
	port ( 
	asum : in bit_VECTOR (3 downto 0); 
	bsum : in bit_VECTOR (3 downto 0); 
 	cinsum : in bit; 
 	ssum : out bit_VECTOR (3 downto 0); 
 	coutsum : out bit); 
end somador4bits; 

architecture comportamento of somador4bits is
component somador is 
port(a, b, cin : in bit;
s, cout : out bit);
end component;
signal c: bit_vector(4 downto 0);
begin
	gen: for i in 0 to 3 generate 
		uut: somador port map (a => asum(i), b => bsum(i), cin => c(i), s => ssum(i), cout => c(i+1));
end generate;
c(0) <= cinsum;
coutsum <= c(4);

end comportamento;
