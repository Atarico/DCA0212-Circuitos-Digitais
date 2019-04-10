entity mux4_in4bits is 
port ( am : in bit_VECTOR (4 downto 0); 
bm : in bit_VECTOR (4 downto 0);
cm : in bit_VECTOR (4 downto 0);
dm : in bit_VECTOR (4 downto 0);
em : in bit_VECTOR (4 downto 0);
ch: in bit_VECTOR  (2 downto 0);

saidam : out bit_VECTOR (4 downto 0)); 
end mux4_in4bits;

architecture cktmux4_in4bits of mux4_in4bits is

component mux4_in is 
port( a, b, c, d, e : in bit;
s: in bit_VECTOR (2 downto 0);
saida : out bit); 
end component;
begin

gen: for i in 0 to 4 generate
uut: mux4_in port map (a => am(i), b => bm(i), c => cm(i), d => dm(i), e=> em(i), saida => saidam(i), s(0)=>ch(0), s(1)=>ch(1), s(2)=>ch(2) );
end generate;

end cktmux4_in4bits;