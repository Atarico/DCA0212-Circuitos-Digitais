library verilog;
use verilog.vl_types.all;
entity mux4_in4bits_vlg_sample_tst is
    port(
        am              : in     vl_logic_vector(3 downto 0);
        bm              : in     vl_logic_vector(3 downto 0);
        ch              : in     vl_logic_vector(2 downto 0);
        cm              : in     vl_logic_vector(3 downto 0);
        dm              : in     vl_logic_vector(3 downto 0);
        em              : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux4_in4bits_vlg_sample_tst;
