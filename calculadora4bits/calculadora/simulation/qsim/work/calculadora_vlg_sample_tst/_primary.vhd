library verilog;
use verilog.vl_types.all;
entity calculadora_vlg_sample_tst is
    port(
        btnLigar        : in     vl_logic;
        chave           : in     vl_logic_vector(2 downto 0);
        x1              : in     vl_logic_vector(3 downto 0);
        x2              : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end calculadora_vlg_sample_tst;
