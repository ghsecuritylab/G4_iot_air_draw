-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Fri Feb 22 06:17:12 2019
-- Host        : LAPTOP-J26FKCBU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top bd_e87d_c_shift_ram_0_0 -prefix
--               bd_e87d_c_shift_ram_0_0_ bd_e87d_c_shift_ram_0_0_sim_netlist.vhdl
-- Design      : bd_e87d_c_shift_ram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
AcH6O9bO3zj3e+WIKKzQ3tGoQ8+7tvatcw0wndubWcNWVpJuWFs64u1EbdQBmVMS5VgyGqiQMiBi
hwSV5lC5Pg==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
WzT0JcWfiuNhwzy8lNU4g7UuX+JvUt6aiyixPUleOR0u+NdhKBbxILEuEuRnK8YYP35/bahdRnyA
XKnMFCYgA+QsecIqj5X4Rw7Xb6LsBLykyOFwIwfEholDHQ76SyVo3cyHHhYgR2bgHuMXJg2rBbRT
QQnUjJfI63xAfydMVTU=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
NfFbJSzo0Q9Yd/VjEyGFK3pd2NFVmeE1oqShliu4d5hQadOU/sdDVbTXdkcYJZl7NtD3gI57ikaO
tDP435BmCUEcVllWLm5HyEUFR8v/7EzcgdUNcFcVigeLOmTZv8vyL7VQR+c/0pV1B3QrLFZWKp2W
48sFu+cBUelVJ9IPrhNnts4mY+jyeT+PndEnI1kzzYTOby+qXE3yZtY5NlB6FibtUHmxIh8pQ7ij
DM99E8rB9QHsHpiO0O+iQ3ihQwq6U9Bh9jbllhybyuDUrlpaZm7f+6Rvwj7E3d+c9Dgwuo6GXOcm
LWXlyNOcGo5g7oWEpDcyxRSaE90c5SSoyakK5A==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gG6AM7tE6d153mOB646PQd+jcKxQS5MN2462/cvyChYUMeMct7G3Ma9LG+jZBi9aUrmrjk5wMgiB
ocBwczfb3uPIny/E7kbiFrKMiHSWHq3tKWkDjYgudymUQ82fyddl8uBeXnBqqKno21TQnN7ivdWv
jTen2WwVKQj1SE7fWRkzWXpn+8q55AZ7zYPl88YqttuOnH5qIurA+oUZYwD7kcePlwrAmjuqrQQE
N1UsTp9vMyk5UHn+lGhWoHE8dtM5O+WcotqJEW24XH3x7F5wdEGRoBhCtWQg2+hbiGMEQiqCs1Hl
jwuttVehh4hikU2ld2oybYuHmyaHzd8P6X0tcw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Ud2ECTLyD85tsVvgtuFWTTLoWHfVt+VLmQrzHxkmjiLiqeTcwPqu0bhdgvluEoTF5DZZ4XuWs17+
JfeQruldEe1lT9JPO1a6QWkwATIDMuPDh4sXdE0OisihQLkSdrA7/IUtAklu7h4P8XtbQu0UGIkn
AQ/IAANs7p//FABRISp9YbJWI7WPRMJX2O8FOX+w++NUHXaO8JkQpDRmE7r2+UBcouFx0at/cnbM
X9SMTHsA1jeYJm2nq/4aeKw8zxL87GOQotKSeaWwm4fmBr86NZ9zL2dgihEMgXqJL25tkxLch10c
eRyppNzkHZw1bBP8mAFOvu0Dt4uoMwGW7nHHSw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
rAq68pKr78hDP/iWJayHOxyuEJu1BL5Yjw1SHgbOw8UhrUj3PE/TtS/YAHr6dmvN5M5P9KR3fzCV
FBC74xmGura4L89F9odMAJ4B50dD0XSop042LIpHJFRFbrTs0uH5lTk7m26e/mZQq4OnHW3BSKm2
92hDz0MZH1LC5NDzzZQ=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
SQMPDiP8jExtpJ5lMWcuEFp7zwek/On6bGjhgSTOTQobQuPgLwNPX0a5A2kvPN2VsbzzweKfU4md
z6sBWcsLHrp2oFSYMFBAllFwU44BUaISnypger/G9/oDstPTffQx0MaYt5sj/5DbZ+jG99V5H/kf
8zOJSQorZZABtPQZok+kmzWfZXSSSJsy8cY0RuvfglrB3koCU5eUl8hnS6Fhtl7iG4cK2Pxo6eAJ
KwQlfI8E2rVzWmAbeqvi4wBRwmK5c6rmSjCnBP46JhWQrxeOT1IdZQEzpJ1WcDskhCsEwGB72vks
DTM3EhnVlSzTX2izm/kJk/rkbOCvxMMhFnihfA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
XIQwyL0m6zntHYl67OHc9OSwE/e7/Q9oaFiRNN55fGAoTl48ZIel/WjcezC4wBROO3I0UQmDGPR0
Lbs0XgxJnO6P883lYCHjxDsFA9uorBjGxsxsWI9nSmApFvcB0MOyhl53UFORlamVhhbTSmAV80kw
0s8VaWqX6g6AzOvKuoDdbKyfzVrxnxa+H9CMw8jURalsgU+ijx7LXsFejot9RIDicnc8bGXwPsDy
2yso3JcukLcjNmJ1cjefFcK8jO4EaeW1WJwmqHVjSo+9zkgP3oyK8fYR/ZX5duXNiTXxxXE2FzQM
atLjcwB4nCKIh3v7Ffc+gBTXJEKBjOr1yBXLdA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
6j4Qg746x+jLYyaJ9DMAnbEj3ANtbxjAneEbj/wMTNYPzeg3MNF9Ya5CE8T0AKJZdGJVWFPDS2xG
vSU87qtCATgc+D2A7aoDvUUAFrQWBMZbhZm7LrnfdfUmB7BDZETuuTxjDa/jHxTamu20sGnxjn9X
+zpDwdqw//WYyNhe798hgJauYgVEys+wQxNQOuzA9L5Y4yuMNPwRrwHzRKlpgXl2R4ASFN2G86Ed
YlwmA5Uzmo+0H5wb6+xUyw+c45EXa48L9TJMw6tKJACl2DWSXSuTSu9Ht4y8fqbOwlN+JzcT1nMU
wxYDyyKNJu8g6Kvpy/5vJD7A9H+24PDlWnywHg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14176)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 4;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "0";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "./";
  attribute C_HAS_A : integer;
  attribute C_HAS_A of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "no_coe_file_loaded";
  attribute C_OPT_GOAL : integer;
  attribute C_OPT_GOAL of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_REG_LAST_BIT : integer;
  attribute C_REG_LAST_BIT of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_SHIFT_TYPE : integer;
  attribute C_SHIFT_TYPE of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "0";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is 1;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 : entity is "yes";
end bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12;

architecture STRUCTURE of bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12 is
  attribute C_AINIT_VAL of i_synth : label is "0";
  attribute C_HAS_CE of i_synth : label is 1;
  attribute C_HAS_SCLR of i_synth : label is 1;
  attribute C_HAS_SINIT of i_synth : label is 0;
  attribute C_HAS_SSET of i_synth : label is 0;
  attribute C_SINIT_VAL of i_synth : label is "0";
  attribute C_SYNC_ENABLE of i_synth : label is 0;
  attribute C_SYNC_PRIORITY of i_synth : label is 1;
  attribute C_WIDTH of i_synth : label is 1;
  attribute c_addr_width of i_synth : label is 4;
  attribute c_default_data of i_synth : label is "0";
  attribute c_depth of i_synth : label is 1;
  attribute c_elaboration_dir of i_synth : label is "./";
  attribute c_has_a of i_synth : label is 0;
  attribute c_mem_init_file of i_synth : label is "no_coe_file_loaded";
  attribute c_opt_goal of i_synth : label is 0;
  attribute c_parser_type of i_synth : label is 0;
  attribute c_read_mif of i_synth : label is 0;
  attribute c_reg_last_bit of i_synth : label is 1;
  attribute c_shift_type of i_synth : label is 0;
  attribute c_verbosity of i_synth : label is 0;
  attribute c_xdevicefamily of i_synth : label is "artix7";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
i_synth: entity work.bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12_viv
     port map (
      A(3 downto 0) => B"0000",
      CE => CE,
      CLK => CLK,
      D(0) => D(0),
      Q(0) => Q(0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_e87d_c_shift_ram_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_e87d_c_shift_ram_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_e87d_c_shift_ram_0_0 : entity is "bd_e87d_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_e87d_c_shift_ram_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of bd_e87d_c_shift_ram_0_0 : entity is "c_shift_ram_v12_0_12,Vivado 2018.2";
end bd_e87d_c_shift_ram_0_0;

architecture STRUCTURE of bd_e87d_c_shift_ram_0_0 is
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of U0 : label is 0;
  attribute C_SYNC_PRIORITY : integer;
  attribute C_SYNC_PRIORITY of U0 : label is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of U0 : label is 1;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 4;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 1;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_a : integer;
  attribute c_has_a of U0 : label is 0;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "no_coe_file_loaded";
  attribute c_opt_goal : integer;
  attribute c_opt_goal of U0 : label is 0;
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 0;
  attribute c_reg_last_bit : integer;
  attribute c_reg_last_bit of U0 : label is 1;
  attribute c_shift_type : integer;
  attribute c_shift_type of U0 : label is 0;
  attribute c_verbosity : integer;
  attribute c_verbosity of U0 : label is 0;
  attribute c_xdevicefamily : string;
  attribute c_xdevicefamily of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW";
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN hdmi_mig_7series_0_0_ui_clk";
  attribute x_interface_info of SCLR : signal is "xilinx.com:signal:reset:1.0 sclr_intf RST";
  attribute x_interface_parameter of SCLR : signal is "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of D : signal is "xilinx.com:signal:data:1.0 d_intf DATA";
  attribute x_interface_parameter of D : signal is "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef";
  attribute x_interface_info of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute x_interface_parameter of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}";
begin
U0: entity work.bd_e87d_c_shift_ram_0_0_c_shift_ram_v12_0_12
     port map (
      A(3 downto 0) => B"0000",
      CE => CE,
      CLK => CLK,
      D(0) => D(0),
      Q(0) => Q(0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
