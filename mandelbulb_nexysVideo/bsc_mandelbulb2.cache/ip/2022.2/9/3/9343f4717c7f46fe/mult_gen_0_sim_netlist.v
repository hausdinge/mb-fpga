// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Feb 26 03:57:46 2024
// Host        : DESKTOP-H9C91L2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
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
i/U/FB1HZDC5JNqiTVH6whAvhnyEI3iA6syDYwCJHKli76j8gDUY3aI5poNQhl34IHSDmY5SMP9t
9zW+p71DS5NIviaNaAiQbyJ1KaW713eGBTzxKWQAaYUrqmcQqVWM/2OddN5BZPiayNi+p9lP+x+K
3U6KY7lrrweIMjuBEkQDYXD8AvGr9szkT4y3QXC/CkGOl6uDQZWKkjhYeszO+GUI0zSUUWuFUq9+
N871Cp7OOArkBt+JIQuYRM0aKQPDo0ITXXN8vaeG8c3uRzc3gplU7+x8h0NrNUuu/9ZZed/uGG0v
P4/e2RXXNR6zWTdvomjBMYyotFaHQ49jLxQamw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hfn9u4FvdG07oFUCXGcFwjLsxeGmK4Ir3Ppkv+gRKGhoytN/pOF/ti04VvwSyuLxdrT2DbYBRUUe
1ddBrgfFNWUgO/ARuVgh3rjkhhfpLG6BK8sbVyc+ffwi2CFiEkRc5vb8BKHcsqzeO+UshVEo7hW2
0H4MgFHqcTmCEplO032VFDSIWDMzzuJsa8BUiEuJ0/6Fy020dGfEXrazZwEld2XxBhsAX1TEQVND
O65WfzBG+U8PJVeswgt8PmllNWi6WkxaTKzJ0lX1GSoDTo1/nK8MBJ7btAtuzf7umIxRIcJID539
PE0gRSoYzX0CmwlyEqD3Gr6nD416jm+D0x6yIw==

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
