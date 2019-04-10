library verilog;
use verilog.vl_types.all;
entity display7seg is
    port(
        xseg            : in     vl_logic_vector(3 downto 0);
        aseg            : out    vl_logic;
        bseg            : out    vl_logic;
        cseg            : out    vl_logic;
        dseg            : out    vl_logic;
        eseg            : out    vl_logic;
        fseg            : out    vl_logic;
        gseg            : out    vl_logic
    );
end display7seg;
