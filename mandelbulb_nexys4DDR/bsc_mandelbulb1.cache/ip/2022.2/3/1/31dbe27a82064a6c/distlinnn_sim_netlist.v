// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec 13 19:14:58 2023
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
63s=
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
