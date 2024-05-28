// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Dec 17 00:57:07 2023
// Host        : DESKTOP-H9C91L2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ log2_data_sim_netlist.v
// Design      : log2_data
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "log2_data,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    clk,
    qspo_ce,
    qspo);
  input [11:0]a;
  input clk;
  input qspo_ce;
  output [64:0]qspo;

  wire \<const0> ;
  wire [11:0]a;
  wire clk;
  wire [32:0]\^qspo ;
  wire qspo_ce;
  wire [64:0]NLW_U0_dpo_UNCONNECTED;
  wire [64:0]NLW_U0_qdpo_UNCONNECTED;
  wire [64:33]NLW_U0_qspo_UNCONNECTED;
  wire [64:0]NLW_U0_spo_UNCONNECTED;

  assign qspo[64] = \<const0> ;
  assign qspo[63] = \<const0> ;
  assign qspo[62] = \<const0> ;
  assign qspo[61] = \<const0> ;
  assign qspo[60] = \<const0> ;
  assign qspo[59] = \<const0> ;
  assign qspo[58] = \<const0> ;
  assign qspo[57] = \<const0> ;
  assign qspo[56] = \<const0> ;
  assign qspo[55] = \<const0> ;
  assign qspo[54] = \<const0> ;
  assign qspo[53] = \<const0> ;
  assign qspo[52] = \<const0> ;
  assign qspo[51] = \<const0> ;
  assign qspo[50] = \<const0> ;
  assign qspo[49] = \<const0> ;
  assign qspo[48] = \<const0> ;
  assign qspo[47] = \<const0> ;
  assign qspo[46] = \<const0> ;
  assign qspo[45] = \<const0> ;
  assign qspo[44] = \<const0> ;
  assign qspo[43] = \<const0> ;
  assign qspo[42] = \<const0> ;
  assign qspo[41] = \<const0> ;
  assign qspo[40] = \<const0> ;
  assign qspo[39] = \<const0> ;
  assign qspo[38] = \<const0> ;
  assign qspo[37] = \<const0> ;
  assign qspo[36] = \<const0> ;
  assign qspo[35] = \<const0> ;
  assign qspo[34] = \<const0> ;
  assign qspo[33] = \<const0> ;
  assign qspo[32:0] = \^qspo [32:0];
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
  (* c_addr_width = "12" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "4096" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "1" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "0" *) 
  (* c_mem_init_file = "log2_data.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "1" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "65" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[64:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[64:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo({NLW_U0_qspo_UNCONNECTED[64:33],\^qspo }),
        .qspo_ce(qspo_ce),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[64:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13600)
`pragma protect data_block
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
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
