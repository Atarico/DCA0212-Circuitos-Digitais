library verilog;
use verilog.vl_types.all;
entity display7seg_vlg_check_tst is
    port(
        aseg            : in     vl_logic;
        bseg            : in     vl_logic;
        cseg            : in     vl_logic;
        dseg            : in     vl_logic;
        eseg            : in     vl_logic;
        fseg            : in     vl_logic;
        gseg            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end display7seg_vlg_check_tst;
