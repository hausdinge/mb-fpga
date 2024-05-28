// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec 20 17:06:12 2023
// Host        : DESKTOP-H9C91L2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    CE,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [16:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [16:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [33:0]P;

  wire [16:0]A;
  wire [16:0]B;
  wire CE;
  wire CLK;
  wire [33:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "17" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "17" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "33" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_18 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C/5Mh/YfQK+xvzcE2CGtETuPBeLiyJko5tNa9mMrxf8GTM/0mqqMZ+vYDutRWwlkGLoBJ0ubJ2JM
hSYnF9uwe22zt9N5LFdSRZxMoN1o6c2PdIJyFX9QiG+G0k5olg9eEzsigfNpc9kE5brQ+zVlZ0BV
klXrD05hnhWq+ZJys/w=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nhu9PWmxjSOqIMDTXJV+4qo0FPiBJCygcWuN/bfQzqY2oUKKM8378Fb2UT55vg8n4G10m17vIBgN
+Wy6buZC7GhxULhm+9qKdG61k/7yfhvEyQUBzudlOBUaIUk7ZAeE6SGH26C8h1WgBFSBJBshielG
kmSnefelvtJmMqQynpqanYQE+2/nM45zHVEXMtgEl8NM+ittmjnbmsjMG+VmkcpjTiitr8v+SSgM
RUwmbOuITmj1SaUWkm+IJTDW4bnipSqF0iXScNDVurlEpJm4oLvKdM1ottYIIcXR6+Fa5dGLRubI
LjYe8sQ49kCgXyYdFk4JbJANd3OdYx/U0839pw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oLOGB6O+5m7WVYa3aB6L+szJIkfErI3K6c0Z4Xd6Cc9YLnPbUoTR/E3N7bfACANo1RtCR1KrgOT9
QRzSpMaWuUNpHkoBWkpOvvqpujGg7n+KNjtsXpeAJDMZq0hpkCFMyTIbglQJfVL4ds7LBIztVpT+
XPSPp0rHN6MvUs/o0sQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b3H7uIeGCIVDgn3FEC671rtMncRXCjR9RBfw6OuWzlyF5wFk4ElX2tB2gwrWUb2Com7mmOGUcT8m
dWBnb4fgFyaI4CcP0cDJZ1RBfKHzHsnVnUtydmh17jwFjOhuG4oqUfxDBVOziYixuf8xqsPD1kIx
AAGgp8eCh/3TTWsXe8MqUHFhWLAFBHiM+g9tiFtJxHBAyX5v+8avU7rSRQOteILiCl/aE/ZTg1U1
TZRYZm9xCtpTek8kcIXycf8cf1vmkeYfjYqsPcKnLXjswHKcSvCTgJBvdf6/NU1hADbYz5krZkN6
cP43YF8Es6pXZ5MZxRyvAulHMEmC1vBKEV4L2Q==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hNojWTRiv5xJXFjSuajQtOI6VJWjSVIasMceSy/iOADWwlykMyPQqJwBZv9vgyG2lsbPzupIZZOt
sY4+VQKC49eSzzBiqlXJuuRgTh4eG5Sj78MJPFi8Z4JHdANbBDjcsfEyFcFinPG8C+6ObqSWv3sT
fh66lPvK05YKvRong1DaI4yDI+LeF0XCXF9jXawejRWPqZyQQRofEUn3P6/HL3rOQ9WrwtOgLOh4
eld6oolD6hKjdN6z7BtfypoG1+c9GyXB8peQYSYy2mC/UhPM2He7IScIeEh8FKNZOETke8ShtPdd
8KijcT3YF0mZbR+JEAYmPRwljDtmkR1nmLPJ5g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vNoNhNOiLgedrjzCipcIWa66MfCSJrQLJjludHrumavTx1oA+4ROcs5sx9EIY16AxVabVb6PSj/B
6g7QMmhWOHO5XWCGsLGngpWlMaz7FPJIrMDMH0FqHULVZgn+ytshKF3OiHU9DKUfGAkx2o6xKR8J
v2jv+NfcjYrjtp1y5L007VCIwcNtkKJJXaDQjJxbYYOB0uzxwQIXRo+SEib+esXDvZD6Ikc55nl4
wE0bh+voYoBpOgDoGMiOgpg8YJnYWFS+aCT4aHJqb0+12fK4HJHyN34p2V9mna/PBHxQttZEjbwL
t5GBDgl9IiQOzvoyMMwa3D9yJPGWNEJTOJaUbw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UWO1yL0EL8CXhMsuZN3v7pq9vqI3Hx8I4AdpxQRWS35PlhqAcAjYeBVG9msiPa5PzWiULLQfpvtc
jErP46XJGtGsEiYBMIv0Sy4sw0m1buhgPQC3ebkJgAk3bspWMUEsvYaN1IfFXabxN+RYANz3tJ2Y
oHgpnvvpm8OrlQUsgkwwn7FgVUGvBHoaj3vopWTMROl61+OL1aj+VLKQvwlZuA30e5yG7JAT159Y
e+xbMUxDz+W4RK0kPzZxnlU6X2HGieEEqGVzuAHvbaqUsRHZF294LqHX4u2WuTM74rvH69Kh5wL6
jYEYgCU9ma4gBAA98slrAnjNqn4bY2f9DG+now==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iXm1XonW4ervg3D4DUJphNzJ6vN12GMfC70OgzuNrZ2kX9fFpWbL5IBPnCTMNnNWQy0GGe6hvPmb
j7EpeR3MIhJR5BcSdHMR4BVvSo0AEM+UmieNsuTc7dTw++8EucnKuLvloLldJo1b29DO+LZfqkGP
M9z2zkXfSVOqQRNGzxLR5gGJLHNfjxGz8MOIJ3HaDDAbO1eEgkWN9ZeesYwJrgERNSubcEhjLzl8
dVi5A1iTEa6WcsQ7XpUZkZTrHlM+/ZUnuZelrt2eHwx7m5XAZzHXbVz6YPrxLVx80IcJzqkykiEp
dMotGjzHWB0+tNy/gRFTUB5rpFt3LtF2+O9mZEf4nNluB9zmYqmvU9T4zeiID3NuEe4WOZjruJ0Q
gBPt5imaHECnAFxZ7QWVRp1rGkX8eS8I5qjfVJm8+pKqvjc1MGkAv2Vh4RG+n36yShUI44QIDYIY
zqj5fbexc27+CEmjJEFy/Cwik0yDg15IXyQYIkVLbBBdXfuQsGR6lI0A

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e2TCE/IVroj0BoMutEWWgUoHdqmqHN4Vq1aGvl8tHLqPMgKPyusaF/EU/+MvsIWjDyZip1MmWOcx
jQu5Oy8IWt51LTRIQJ0x+kU2WDMNmZRHSdVAR8ORyzaV+63xJ+1FR21OuVBTsdN0zc5+xPOZn251
Ih7Dkw8u+guep7Yr4t3jgw+4crsiBVVM+5WJvUb5HgZZLCirWswHL2EOSwrlxmh1UfYzXoib6RPE
Ra/hqZSom0279kPBw6Fx+riPQZSw7jyFJal9sJMpp1RQHG0wo0DgA0V8Ot4NHxUc9Fwq4+hnCyfi
r2lvbn1yjpQbLFKBIZrlQAud1cQVbPc9abtdFA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q2yF4lOMImfL/C2UElxY7B0hVb+LzdyAapRYS1k0xQGB0tULb/lWeCriRs9bMbrvKoql5zHnA2bW
sm+KwCnsCVT9FFo4ivmHADt4dwlxebPXHEB72Yx6RhO5qn2iElnZv4K+uLHMw6hzHBrr79azOchI
17N62AuHstKMW36itdrRkvwQ5jfgAzJrLnAGPU1wOzPEp6eavoFl9Fkd2JQ95e2N9kwQkJrrhMDb
PsELhemLpX6cKJb/K3c8RS9mbxtWiVXyjv2TXlaj5fFMiGbhVKbxJ8ZdaEKvsW05271lmK1CtTdR
bGFdjmv1sNBN2/qdXT3aiElWdc0cRhte91dsLQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bFUYEpXRiHAT0lpGjLG22XxopnXkTgPWfSRrIz+Cz2az3d3DBfIbGkC0ki8YDcjORVimv90GbHNK
mVkZOB8q56x1LzubOFKu/2eVOnydWwq+o5RHy/uyT2K0xpsC0yREcX4tGUlcKCPE09XuNtijJAXd
L2BT6bLHd8Zxeza+ywobDAeC41GPwXmMyavTHVxGDQn/Hh9r2l6uQSFJi6jiPGhoBMv6B2M35WcZ
p2396z22jZmQ7AkyKQD8608dBde4V/x8DEbvlL3t8u9JLb9mFafKlj5AKduO06M5mPMNfhe18wC8
8B6oPTPcNtEEJ+UcyQdfNs4BXukukpAYtJjqdA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11168)
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
