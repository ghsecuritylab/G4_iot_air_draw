// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Feb 22 06:18:11 2019
// Host        : LAPTOP-J26FKCBU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top bd_e87d_c_counter_binary_0_0 -prefix
//               bd_e87d_c_counter_binary_0_0_ bd_e87d_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_e87d_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_e87d_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module bd_e87d_c_counter_binary_0_0
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_e87d_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1100000000000000000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1100000000000000000000" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "24" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_e87d_c_counter_binary_0_0_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [23:0]L;
  output THRESH0;
  output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_e87d_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kU5ElEhlljvrSl9HfEmsF0MuQix+PaNBf+SQEDniFuNo2OWajTIX0TJIKJGkQNWzEdd+wfP25ziv
defpDf33439ADt65ZfxYbCwE9EmrGGUWETs3jNoVb1x/WNNr/JxfkNOxDGbPSyDLdQBw+F0YHWUt
qhjDKUpxOag1FfNJYBHZEPNxMUpGqkgMIvVuHPhtCyxc0UUOdV9FE1l/pFuU5FJh+skCZv/hXJKO
vO1EQB7uZap2L2neFIWW2c36W/FcduESsFrKZNnTK7gWYFMwj57zTxAOQ6ypYxOJ6Px6msaL3KWa
1huQ9JiZeNa1g1q7JCI2XSrIyaw0WEYRvLCKOw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OTebJVjAyq5Z3rrC8vyDMqz+UuF4ynO+XlyLs5qCuDjoytweCMEGcyTJl/Te3rSXy4k2dBV/983G
8RSeD34AUhWezl0pGoZWbL3TE8atKEF+4gVCXtl5+9xR5J6chxajYehDS2vwgGrRuzwf18OH12ua
6EOrqGUHHGmN5nJarL+dvTBIzEz2ZhpgNw3uxbDCICyUwCyCQClhgL9knshBPqJzlNsHEA3FOv7x
jDDTEFy2Ee6yQEBEDKZWPk21RpMiucqdnsL6WSma7ajNxfYJcit5QStrjQdg5+4Pjrwmvz1JpMdN
/QBD9G7JvnS9kvIqZ+24LR3souBGyB1VbKH/HA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12672)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
