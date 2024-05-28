// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Dec 18 15:30:44 2023
// Host        : DESKTOP-H9C91L2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/hausd/Dateien/Xilinx_proj/bsc_mandelbulb1/bsc_mandelbulb1.gen/sources_1/ip/arctan_data/arctan_data_sim_netlist.v
// Design      : arctan_data
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "arctan_data,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module arctan_data
   (a,
    spo);
  input [4:0]a;
  output [64:0]spo;

  wire \<const0> ;
  wire [4:0]a;
  wire [31:0]\^spo ;
  wire [64:0]NLW_U0_dpo_UNCONNECTED;
  wire [64:0]NLW_U0_qdpo_UNCONNECTED;
  wire [64:0]NLW_U0_qspo_UNCONNECTED;
  wire [64:32]NLW_U0_spo_UNCONNECTED;

  assign spo[64] = \<const0> ;
  assign spo[63] = \<const0> ;
  assign spo[62] = \<const0> ;
  assign spo[61] = \<const0> ;
  assign spo[60] = \<const0> ;
  assign spo[59] = \<const0> ;
  assign spo[58] = \<const0> ;
  assign spo[57] = \<const0> ;
  assign spo[56] = \<const0> ;
  assign spo[55] = \<const0> ;
  assign spo[54] = \<const0> ;
  assign spo[53] = \<const0> ;
  assign spo[52] = \<const0> ;
  assign spo[51] = \<const0> ;
  assign spo[50] = \<const0> ;
  assign spo[49] = \<const0> ;
  assign spo[48] = \<const0> ;
  assign spo[47] = \<const0> ;
  assign spo[46] = \<const0> ;
  assign spo[45] = \<const0> ;
  assign spo[44] = \<const0> ;
  assign spo[43] = \<const0> ;
  assign spo[42] = \<const0> ;
  assign spo[41] = \<const0> ;
  assign spo[40] = \<const0> ;
  assign spo[39] = \<const0> ;
  assign spo[38] = \<const0> ;
  assign spo[37] = \<const0> ;
  assign spo[36] = \<const0> ;
  assign spo[35] = \<const0> ;
  assign spo[34] = \<const0> ;
  assign spo[33] = \<const0> ;
  assign spo[32] = \<const0> ;
  assign spo[31:0] = \^spo [31:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "5" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "32" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "arctan_data.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "65" *) 
  (* is_du_within_envelope = "true" *) 
  arctan_data_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[64:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[64:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[64:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo({NLW_U0_spo_UNCONNECTED[64:32],\^spo }),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
M9ERyrMNmk2Jjyg6ZCGYQpTqx5C+74+ICn/vAQ5KoRuxJNbql8tHJjFcOe3FAJX14Nokq4wtfvZP
2sPXAs/eYYzjjbnt4nx8oZRRPy0XyDpvba/qxyqBSxjChIoPMDwpXnxi+chZJU5N1zCNt9FZPAep
nLCjMCkQTlKbP3cUJIY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FBAg02qOh8M8uZkNvwWHoY3ELncwvHjjgL2y2qLN7xuxxaPQj3LdyD/IETTPdSjNCB/rhpJxbT1y
U5fbF28Hkp+bzDuxeTWPX251wMhiEmdm4jhyMl2z+GRf2Z6VJ4bVM5bieaJvsbjuyQ9Az6TDmueI
14citDEbyRCyJD9EiVckdS2mZcTl37oVFebKnIeJGmNjOc2XrcM84JVJIG5iv3ryS2hAG9/84hEr
u3DYC+xS2w5swJXVSf0zV+w8xZulS3PTPLELIM8O+SEFdHetZKnrgG1aJ7V5xu0RniGAsyVwVbgu
M1jPqNLyU+9kyETKfG9jcGEIM2I2gUfmOvRs+g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TYvdYOtu2OcY/hp0LCFlgwGgJeLJ5MSBDPjuyI3760LiXtklDVs7CUFlvRRXMgAzbHlMXbiHp/Xl
cvmN035ayt8D8gPWRXxnbQf3kRlW6EIFwFMZ1inL9b5f47gsuvCP6MaKiTg0W7+/ZeHbM4jHXvRe
b8HXvQvK5kVwtayEwt0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GkcGg32vdV7ZS9x4Uw9v3hZEcxD5hMmQXUqa6shDPbzqUGIxrKpTOb9W4Sgi8rq+qw7QpAZp2JW/
MkYAH1WikFlf+XWG57y55EFV7oRoKQDh2Yz0sZEwVhwTGwSAqfnjrmPITofdG5eiey1ySGprEKsT
mqWAV+ZN7TkQkKup0Ukf1O+8giYKT/7UibTRqG/CT9dgU/4atPgYh2QjNMVrsAH/uzDxh7stQMYe
nkjZBkpLWOq7mxEXTKVtYAD/8G5qCJELRcvCuUKYz4Une1wDj+L/vwRK3IAdWKQ+/5mvj0q5XEm7
IKu5HYvalbySwRWzaB00uobXZorNhfwSv45jHg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JnT3Bfv/DUBx2mIm4+jpmHjzhKoX4mNpcc/lgscv3iYrJw8Uble396hMwPsVZ+kkAsmYtegNCiTG
Z7kqnoNeWHv+Grdizsq0QM9S2KJ5EoZhjelE+3Cii/ztNHf7Y3c0nBPnioUQ5YmWk7vgoQl3SJ3d
vwD3G0c+fGJBRpi14hTJOB2wtu4EeWcJ1f+01LjKINeucLlwacjnN0tElyRgCNKfsRDAQiMqwKqg
XCleeNY0cyLXGI30pXMpnbLizYlNKgVD6DSeNaby0dhW4phR0a+9xteo8l8eRVzTO+VSOcYSy8rU
6Uj2y0Up19vcq91C+/YeHlh24VwNI2TJeUEDwQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AWr8D+IaT/X0jMJSrwmWnhWOjt0+8oyULINYaH7QGBLgqKCVtf8rqo68R3/TZ8gTkN73fZOx0QCU
3WEp7Ga1gUsqEgy+2zGlncYhOzx62FJm4Pm7S6LbE1qdg3/9Pp55JLaf1ouYlZccQJ+yawj0HgL4
zR0T347Zg2aIFxQZ28icCuJbxAZsZgAT30scXsTMMvXlQQ9NI21OjirKgHRn3dldIjpkL+BrVBkQ
Q7MMiTBhpCn/c+WXk4H9BPc3vMrVoh6r5oo+e1858Hk7osyxNI9zuACaGwdAatsW756kQBMsQoUj
TmJksSfucjrHVSuLFffpztOARH3LXrhZcCZdoQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fPVwMHnHe1L8weZTnbBxjlAabwZZnO4DZSHaO7tHGHAw6U+w+7Rc3BwfQXtiTyGXP15rvoLhvVpo
i1Tzs4zrV1X8vlWrxhS6XA2VO4RFkpCjmnHpvdgnW9mpk7w90QOEZIWZQST/o15t0wDT/kv4J36r
Ho59mVFCGQQSSYx0209u6sG2rNpJ5HtWMM+tDEDHUArucrBmPOoZSq0VSQsTHtjJQxr3U5fv9l6q
aEBWkjnLJ6zqLkt12B3q7V3iFORPpz6XNMqA6wzArzWirzgTCw3CduiSAgbNgoGmV4eNrVb2DfOT
5V4ni19GigMG1fHCD9dNPWGiRCWpY6iiN6iE1w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NkQB16Pku9sdGFuAkY+DjFhWzKYvb26AsK/VO1//MS5ztnK+V9d/0K8nVee9kGDNC4zorSd1NjRc
Jkj/JJm1k/9QiQQwOSB/94zKWUyVH2Rvw3UOuaTu9pWRQsIdmPNwXBKCOF5L17HHGaNqYzvHF7YY
REIp6VR4HcyLq2beYXn09Mq0f84obUr7+CMgh8i1SaLa/ydMPS9xsm1i0NFB3qcEC0dDq6xklwsX
s198UBI5mBJTEUKi38eytWXzQPFTmqdlD3Qn4CgstxSdoLrFHchISqt+L62U4xU6aVyYXmVaeebF
I1F3MAXQZwZwGETW7RW9t/+3pJtkjPfPtdnqu/Sg+zP+vLjSV/NcONctKnTj86/z+TTehoSH8ccr
BsjV0PhAtR3+RTr3VGkKJoUNeE8yFQIHlES8UamuSNMh5XrbmcbFx22MZ9gLOa350ytm1N124jNF
V860l5gGbt/8NcGf8I3EVPrYblJ5ZLGsZkVg1cKBMUys1yMm6Ci2Mruc

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JDELzo7luYHcwIl8sAAMR3hvm1tr+ZaD3VKTvYj1uwYFwuIPCkUfjVi8OMAgp3Hh/R1wDZSeoY7T
xpO0sKF9MsovKwwArnByLL8zZflfJIe5AmC+jE5a8qUxydp4liMdOypRTLu6U6EUYUwSj6VOR0Uj
deCoQCr/gVZ2GdNKF5sKZsGXZSvx1Wag70BiGs69qhgUvVVlpbqpNRSB0DR/2IuSKCHhkucLXiTk
zVS7zC7GiyNYE6l/Yu5Ov25Cl+lY5cMZkqKvIFm90UiTBNYk4No5ofXnH/E0rNcbydv0BvWDmgKt
NXVratbi0ztKLb27z2lw5ZZzXCihB41kx4VjqA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15360)
`pragma protect data_block
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
tp//NEGxZAXNuOkoJIKg0dv3kXPFaplrbjlL
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
