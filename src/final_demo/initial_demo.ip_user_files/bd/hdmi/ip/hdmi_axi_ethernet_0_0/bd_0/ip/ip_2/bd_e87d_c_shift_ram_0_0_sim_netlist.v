// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Feb 22 06:17:12 2019
// Host        : LAPTOP-J26FKCBU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top bd_e87d_c_shift_ram_0_0 -prefix
//               bd_e87d_c_shift_ram_0_0_ bd_e87d_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_e87d_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_e87d_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module bd_e87d_c_shift_ram_0_0
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AcH6O9bO3zj3e+WIKKzQ3tGoQ8+7tvatcw0wndubWcNWVpJuWFs64u1EbdQBmVMS5VgyGqiQMiBi
hwSV5lC5Pg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WzT0JcWfiuNhwzy8lNU4g7UuX+JvUt6aiyixPUleOR0u+NdhKBbxILEuEuRnK8YYP35/bahdRnyA
XKnMFCYgA+QsecIqj5X4Rw7Xb6LsBLykyOFwIwfEholDHQ76SyVo3cyHHhYgR2bgHuMXJg2rBbRT
QQnUjJfI63xAfydMVTU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NfFbJSzo0Q9Yd/VjEyGFK3pd2NFVmeE1oqShliu4d5hQadOU/sdDVbTXdkcYJZl7NtD3gI57ikaO
tDP435BmCUEcVllWLm5HyEUFR8v/7EzcgdUNcFcVigeLOmTZv8vyL7VQR+c/0pV1B3QrLFZWKp2W
48sFu+cBUelVJ9IPrhNnts4mY+jyeT+PndEnI1kzzYTOby+qXE3yZtY5NlB6FibtUHmxIh8pQ7ij
DM99E8rB9QHsHpiO0O+iQ3ihQwq6U9Bh9jbllhybyuDUrlpaZm7f+6Rvwj7E3d+c9Dgwuo6GXOcm
LWXlyNOcGo5g7oWEpDcyxRSaE90c5SSoyakK5A==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gG6AM7tE6d153mOB646PQd+jcKxQS5MN2462/cvyChYUMeMct7G3Ma9LG+jZBi9aUrmrjk5wMgiB
ocBwczfb3uPIny/E7kbiFrKMiHSWHq3tKWkDjYgudymUQ82fyddl8uBeXnBqqKno21TQnN7ivdWv
jTen2WwVKQj1SE7fWRkzWXpn+8q55AZ7zYPl88YqttuOnH5qIurA+oUZYwD7kcePlwrAmjuqrQQE
N1UsTp9vMyk5UHn+lGhWoHE8dtM5O+WcotqJEW24XH3x7F5wdEGRoBhCtWQg2+hbiGMEQiqCs1Hl
jwuttVehh4hikU2ld2oybYuHmyaHzd8P6X0tcw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ud2ECTLyD85tsVvgtuFWTTLoWHfVt+VLmQrzHxkmjiLiqeTcwPqu0bhdgvluEoTF5DZZ4XuWs17+
JfeQruldEe1lT9JPO1a6QWkwATIDMuPDh4sXdE0OisihQLkSdrA7/IUtAklu7h4P8XtbQu0UGIkn
AQ/IAANs7p//FABRISp9YbJWI7WPRMJX2O8FOX+w++NUHXaO8JkQpDRmE7r2+UBcouFx0at/cnbM
X9SMTHsA1jeYJm2nq/4aeKw8zxL87GOQotKSeaWwm4fmBr86NZ9zL2dgihEMgXqJL25tkxLch10c
eRyppNzkHZw1bBP8mAFOvu0Dt4uoMwGW7nHHSw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rAq68pKr78hDP/iWJayHOxyuEJu1BL5Yjw1SHgbOw8UhrUj3PE/TtS/YAHr6dmvN5M5P9KR3fzCV
FBC74xmGura4L89F9odMAJ4B50dD0XSop042LIpHJFRFbrTs0uH5lTk7m26e/mZQq4OnHW3BSKm2
92hDz0MZH1LC5NDzzZQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SQMPDiP8jExtpJ5lMWcuEFp7zwek/On6bGjhgSTOTQobQuPgLwNPX0a5A2kvPN2VsbzzweKfU4md
z6sBWcsLHrp2oFSYMFBAllFwU44BUaISnypger/G9/oDstPTffQx0MaYt5sj/5DbZ+jG99V5H/kf
8zOJSQorZZABtPQZok+kmzWfZXSSSJsy8cY0RuvfglrB3koCU5eUl8hnS6Fhtl7iG4cK2Pxo6eAJ
KwQlfI8E2rVzWmAbeqvi4wBRwmK5c6rmSjCnBP46JhWQrxeOT1IdZQEzpJ1WcDskhCsEwGB72vks
DTM3EhnVlSzTX2izm/kJk/rkbOCvxMMhFnihfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cVuwTS0ssrv2/sfFucwJjCxKMqmNSNNxVaryO6WCAt60ATZIrRX5Ek5pOTo6CyTBksNfzZKnelml
DnWO4xxz5ap5OROoG+Lg7xfI7Tx0GAmUp5k1MNTX7dpQgvNNrYVUmAJgT5q8tW2zDYu/MnWNggLU
XXalFLEDNeSI2IE/E3SCRSgdZGqNDG7E1bLnaoofdRINqT0VyEZ+BCLR81hQERe9cIwQJYONP7ZG
tAgV/w7OWNNoatDC1tPAeznTXJXdytD6yzI4pm2eMR8yarYM+tkvOUDd6QY4VwCKTLP3dCoMA19K
J8EL74PiFAPdsSgijZ6kC3xVONtF+kINkAn3WA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Vmzw2ZQboN9zR7GYzIFqMVVg+jfvoZb2aU6twAjb+/kqu9sk7YIob30C2KYV1+XyM+ZLhwi3IuaA
mbuI/G6/3CcEai9Lw0jKVhlCLR5+FeYJaRBGM9Av5x2UagQRfhDD4fOer7DRd4uDRxQHc54NGZil
/XXi+RpOVqmDPmcvurKKJDSZzPGVKlQXcc7ZeUjxeJJM0DYvbIbcORSt6c+ghinmyd9fa5s+VLOW
0lcViIJcXfoRKXnCW/tewd+v5+r9l8OBAgz844lrgYM5GG5lvUnFRAraTHPccE5X6W2qMcE4AHgY
8hJIoQWTlguv46RzTA9TbkkK5zU420n8BFBxyQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4576)
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
