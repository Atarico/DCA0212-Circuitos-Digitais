entity display7seg is 
port (xseg: in bit_VECTOR (3 downto 0);
		aseg,bseg,cseg,dseg,eseg,fseg,gseg : out bit);
end display7seg;

architecture ckt of display7seg is
begin

aseg <= (not xseg(3) and not xseg(2) and not xseg(1) and xseg(0))
or (not xseg(3) and xseg(2) and not xseg(1) and not xseg(0))
or (xseg(3) and xseg(2) and not xseg(1) and xseg(0)) 
or (xseg(3) and not xseg(2) and xseg(1) and xseg(0));

bseg <= (xseg(2) and xseg(1) and not xseg(0))
or (xseg(3) and xseg(1) and xseg(0))
or (not xseg(3) and xseg(2) and not xseg(1) and xseg(0)) 
or (xseg(3) and xseg(2) and not xseg(1) and not xseg(0));

cseg <= (not xseg(3) and not xseg(2) and xseg(1) and not xseg(0))
or (xseg(3) and xseg(2) and xseg(1))
or (xseg(3) and xseg(2) and not xseg(0));

dseg <= (not xseg(3) and not xseg(2) and not xseg(1) and xseg(0))
or (not xseg(3) and xseg(2) and not xseg(1) and not xseg(0))
or (xseg(3) and not xseg(2) and xseg(1) and not xseg(0)) 
or (xseg(2) and xseg(1) and xseg(0));

eseg <= (not xseg(3) and xseg(0))
or (not xseg(3) and xseg(2) and not xseg(1))
or (not xseg(2) and not xseg(1) and xseg(0));

fseg <= (not xseg(3) and not xseg(2) and xseg(0))
or (not xseg(3) and not xseg(2) and xseg(1))
or (not xseg(3) and xseg(1) and xseg(0)) 
or (xseg(3) and xseg(2) and not xseg(1) and xseg(0));

gseg <= (not xseg(3) and not xseg(2) and not xseg(1))
or (xseg(3) and xseg(2) and not xseg(1) and not xseg(0))
or (not xseg(3) and xseg(2) and xseg(1) and xseg(0));
end ckt;