library verilog;
use verilog.vl_types.all;
entity calculadora_vlg_check_tst is
    port(
        c0              : in     vl_logic;
        ctrl            : in     vl_logic_vector(1 downto 0);
        saidaDisplay    : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end calculadora_vlg_check_tst;
