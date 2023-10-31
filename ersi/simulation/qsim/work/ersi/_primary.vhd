library verilog;
use verilog.vl_types.all;
entity ersi is
    port(
        c               : out    vl_logic;
        b               : in     vl_logic;
        a               : in     vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic
    );
end ersi;
