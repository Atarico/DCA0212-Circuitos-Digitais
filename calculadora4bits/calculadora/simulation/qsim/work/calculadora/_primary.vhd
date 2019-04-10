library verilog;
use verilog.vl_types.all;
entity calculadora is
    port(
        x1              : in     vl_logic_vector(3 downto 0);
        x2              : in     vl_logic_vector(3 downto 0);
        chave           : in     vl_logic_vector(2 downto 0);
        btnLigar        : in     vl_logic;
        saidaDisplay    : out    vl_logic_vector(6 downto 0);
        ctrl            : out    vl_logic_vector(1 downto 0);
        c0              : out    vl_logic
    );
end calculadora;
