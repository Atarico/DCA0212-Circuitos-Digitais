entity mux4_in is
port(a,b,c,d,e : in bit;
	s: in bit_vector(2 downto 0);
saida : out bit);
end mux4_in;

architecture cktmux4_in of mux4_in is
begin
saida <= ( a and (not s(0)) and (not s(1)) and (not s(2)) ) or ( b and (not s(1)) and s(0) and (not s(2)) ) or ( c and s(1) and (not s(0)) and (not s(2)) ) or ( d and s(1) and s(0) and (not s(2))) or ( e and (not s(1)) and (not s(0)) and s(2));
end cktmux4_in;
