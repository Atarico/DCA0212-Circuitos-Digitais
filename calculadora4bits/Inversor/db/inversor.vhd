entity inversor is
port (ain: in bit;
		ina: out bit);
end inversor;

architecture cktin of inversor is
begin
ina <= not ain;
end cktin;