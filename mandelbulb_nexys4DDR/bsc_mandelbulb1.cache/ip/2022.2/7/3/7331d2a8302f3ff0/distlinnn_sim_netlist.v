// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec 14 02:18:51 2023
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
  input [11:0]a;
  input clk;
  output [48:0]spo;

  wire \<const0> ;
  wire [11:0]a;
  wire clk;
  wire [47:0]\^spo ;
  wire [48:0]NLW_U0_dpo_UNCONNECTED;
  wire [48:0]NLW_U0_qdpo_UNCONNECTED;
  wire [48:0]NLW_U0_qspo_UNCONNECTED;
  wire [48:48]NLW_U0_spo_UNCONNECTED;

  assign spo[48] = \<const0> ;
  assign spo[47:0] = \^spo [47:0];
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
  (* c_width = "49" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[48:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[48:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[48:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo({NLW_U0_spo_UNCONNECTED[48],\^spo }),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12048)
`pragma protect data_block
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
5ZjWPX4n1Bknm1DEt85LSdRlBGXd
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
