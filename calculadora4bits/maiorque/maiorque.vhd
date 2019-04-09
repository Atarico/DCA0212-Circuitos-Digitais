entity maiorque is 
port (amore : in bit_VECTOR (3 downto 0);
		bmore : in bit_VECTOR (3 downto 0);
		y: out bit);
end maiorque;
architecture ckt of maiorque is
begin
y<= (amore(3) and not bmore(3)) or ((amore(3) xor not bmore(3)) and amore(2) and not bmore(2))or ((amore(2) xor not bmore(2)) and amore(1) and not bmore(1)) or ((amore(2) xor not bmore(2)) and amore(0) and not bmore(0));
	
end ckt;
