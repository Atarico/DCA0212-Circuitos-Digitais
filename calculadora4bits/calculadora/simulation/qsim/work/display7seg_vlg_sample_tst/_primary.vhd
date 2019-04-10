library verilog;
use verilog.vl_types.all;
entity display7seg_vlg_sample_tst is
    port(
        xseg            : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end display7seg_vlg_sample_tst;
