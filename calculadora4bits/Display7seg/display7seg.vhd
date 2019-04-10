entity display7seg is 
port (xseg: in bit_VECTOR (3 downto 0);
		ctrl0: in bit;
		aseg,bseg,cseg,dseg,eseg,fseg,gseg : out bit);
end display7seg;

architecture ckt of display7seg is
begin

aseg <= ctrl0
or (not xseg(3) and not xseg(2) and not xseg(1) and xseg(0))
or (not xseg(3) and xseg(2) and not xseg(1) and not xseg(0))
or (xseg(3) and xseg(2) and not xseg(1) and xseg(0)) 
or (xseg(3) and not xseg(2) and xseg(1) and xseg(0));

bseg <= ctrl0
or (xseg(2) and xseg(1) and not xseg(0))
or (xseg(3) and xseg(1) and xseg(0))
or (not xseg(3) and xseg(2) and not xseg(1) and xseg(0)) 
or (xseg(3) and xseg(2) and not xseg(1) and not xseg(0));

cseg <= ctrl0
or (not xseg(3) and not xseg(2) and xseg(1) and not xseg(0))
or (xseg(3) and xseg(2) and xseg(1))
or (xseg(3) and xseg(2) and not xseg(0));

dseg <= ctrl0
or (not xseg(3) and not xseg(2) and not xseg(1) and xseg(0))
or (not xseg(3) and xseg(2) and not xseg(1) and not xseg(0))
or (xseg(3) and not xseg(2) and xseg(1) and not xseg(0)) 
or (xseg(2) and xseg(1) and xseg(0));

eseg <= ctrl0
or (not xseg(3) and xseg(0))
or (not xseg(3) and xseg(2) and not xseg(1))
or (not xseg(2) and not xseg(1) and xseg(0));

fseg <= ctrl0
or (not xseg(3) and not xseg(2) and xseg(0))
or (not xseg(3) and not xseg(2) and xseg(1))
or (not xseg(3) and xseg(1) and xseg(0)) 
or (xseg(3) and xseg(2) and not xseg(1) and xseg(0));

gseg <= ctrl0
or (not xseg(3) and not xseg(2) and not xseg(1))
or (xseg(3) and xseg(2) and not xseg(1) and not xseg(0))
or (not xseg(3) and xseg(2) and xseg(1) and xseg(0));
end ckt;