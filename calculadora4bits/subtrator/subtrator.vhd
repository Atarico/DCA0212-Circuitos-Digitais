ENTITY subtrator IS
	PORT(c_in, A, B: IN BIT;
	S, c_out: OUT BIT);
END subtrator;

ARCHITECTURE circuito OF subtrator IS
	SIGNAL s1: BIT:= A XOR B;
	SIGNAL s2: BIT:= NOT A AND B;
	SIGNAL s3: BIT:= NOT A AND c_in;
	SIGNAL s4: BIT:= B AND c_in;
BEGIN
	s<= c_in XOR s1;
	c_out<= s2 OR s3 OR s4;
END circuito;
