// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec 13 19:11:00 2023
// Host        : DESKTOP-H9C91L2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ distlinnn_sim_netlist.v
// Design      : distlinnn
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "distlinnn,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    clk,
    spo);
  input [9:0]a;
  input clk;
  output [63:0]spo;

  wire \<const0> ;
  wire [9:0]a;
  wire clk;
  wire [11:0]\^spo ;
  wire [63:0]NLW_U0_dpo_UNCONNECTED;
  wire [63:0]NLW_U0_qdpo_UNCONNECTED;
  wire [63:0]NLW_U0_qspo_UNCONNECTED;
  wire [63:12]NLW_U0_spo_UNCONNECTED;

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
  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24] = \<const0> ;
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21] = \<const0> ;
  assign spo[20] = \<const0> ;
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16] = \<const0> ;
  assign spo[15] = \<const0> ;
  assign spo[14] = \<const0> ;
  assign spo[13] = \<const0> ;
  assign spo[12] = \<const0> ;
  assign spo[11:0] = \^spo [11:0];
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
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "1" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "distlinnn.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "1" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "64" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[63:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[63:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[63:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo({NLW_U0_spo_UNCONNECTED[63:12],\^spo }),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12656)
`pragma protect data_block
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
Kn0=
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
