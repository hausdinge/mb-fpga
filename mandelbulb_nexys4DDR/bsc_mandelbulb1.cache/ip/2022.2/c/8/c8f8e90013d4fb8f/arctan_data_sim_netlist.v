// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Dec 18 15:30:44 2023
// Host        : DESKTOP-H9C91L2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ arctan_data_sim_netlist.v
// Design      : arctan_data
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "arctan_data,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15344)
`pragma protect data_block
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
KJmqjRjjpWqfvUU=
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
