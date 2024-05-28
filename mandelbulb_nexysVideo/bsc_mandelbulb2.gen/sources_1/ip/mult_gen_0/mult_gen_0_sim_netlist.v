// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Dec 20 17:06:12 2023
// Host        : DESKTOP-H9C91L2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/hausd/Dateien/Xilinx_proj/bsc_mandelbulb1/bsc_mandelbulb1.gen/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module mult_gen_0
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
  mult_gen_0_mult_gen_v12_0_18 U0
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
EMxEAisRHehSe6o2aTn/IcYlZL7Ko+sXEgPm59vhdlZ6EPQcUVAfFlPaKqTTUIg3QboVIFggBQVX
zZ+4rQGK6HY2C3BxGjhmWPxihOMqhtYgAgG5TVBWJhw42IvqsoYUyGjHJUY69QiD+ZrAVaBsXC1U
v6RHEUtQuLidq0tAr6psj9plhAQ1irKupex3fqqIxR8BrbtHu5kIR7s9FsPDWxHpLUnkr2mUSuFr
i9QjjHoiEANb7HX96lOzqaTt3tqhhO6D5vsJIYkXD8MVMVQTwAIWoY1AesM6Va4PaSc/IoxPvyxF
Okvooy9LAFTsflIbtUnpD8sMxyjFUdUATbF5Vg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tW5qNG4AsHSIRMDi7TfRLt7OpLAt3/5Fx/6qrLbtMD6qSh6uIU8quqmkIUlu3R6DTgWWNNuTktYE
MaIxSEK0CO0NLvN4HLlvq9C3fKazkGWNVpLHnhaRnX6Ya5xWwbEQeppnrf0lIsXCmGGxuxG95LDb
mwqRJmNiohKMS5z+2cy07++89PAG4yftflbBQTPeOwXSQVhCZR4vyo1k2Fgg9tkNDlVj7QBoi8xf
Ao+Ki44yV2CX+0l0yWRFw3isnlq66lkKUyh2XC7dYd+6DQR0YPaIp5tB8KBQYfROQQvCspwPoCX7
fi9KhXytyCNpzp5OYbTJ3y/+Wb6eGjIuARs9zw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11120)
`pragma protect data_block
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
65thyZ0=
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
