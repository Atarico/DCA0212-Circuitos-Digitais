entity menorque is 
port (amiss : in bit_VECTOR (3 downto 0);
		bmiss : in bit_VECTOR (3 downto 0);
		ymiss: out bit);
end menorque;
architecture ckt of menorque is
begin
ymiss <= (bmiss(3) and not amiss(3)) or ((amiss(3) xor not bmiss(3)) and bmiss(2) and not amiss(2))or ((amiss(2) xor not bmiss(2)) and bmiss(1) and not amiss(1)) or ((amiss(1) xor not bmiss(1)) and bmiss(0) and not amiss(0));	
end ckt;
