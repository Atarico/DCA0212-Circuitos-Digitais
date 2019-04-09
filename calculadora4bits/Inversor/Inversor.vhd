entity Inversor is
port(ain: in bit;
		ina: out bit);
end Inversor;
architecture comportamento of Inversor is
begin
	ina <= NOT(ain);
end comportamento;