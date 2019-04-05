-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Mar 12 09:53:14 2019
-- Host        : DESKTOP-4H39SC0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/ClassProject/ece532_project/eth/working_eth_with_video.xpr/project_1/project_1.srcs/sources_1/bd/hdmi/ip/hdmi_det_color_cord_0_1/hdmi_det_color_cord_0_1_sim_netlist.vhdl
-- Design      : hdmi_det_color_cord_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_det_color_cord_0_1_det_color_cord is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    led_exist : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \led_exist_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \led_exist_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    or_cond_7_reg_1172 : out STD_LOGIC;
    edgeout_val_ap_vld : out STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : out STD_LOGIC;
    y_cord_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \led_exist_reg[0]_2\ : out STD_LOGIC;
    \led_exist_reg[0]_3\ : out STD_LOGIC;
    \led_exist_reg[0]_4\ : out STD_LOGIC;
    x_cord_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \edgeout_val[63]\ : out STD_LOGIC_VECTOR ( 95 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    width : in STD_LOGIC_VECTOR ( 31 downto 0 );
    height : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_p1_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_p1_reg[23]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_p1_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_p1_reg[14]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_reg[0]_0\ : in STD_LOGIC;
    \led_exist_reg[0]_5\ : in STD_LOGIC;
    sig_det_color_cord_cord_out_V_full_n : in STD_LOGIC;
    \ap_CS_fsm_reg[0]_0\ : in STD_LOGIC;
    \ap_CS_fsm_reg[0]_1\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    target_color : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_p2_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_sequential_state_reg[0]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_det_color_cord_0_1_det_color_cord : entity is "det_color_cord";
end hdmi_det_color_cord_0_1_det_color_cord;

architecture STRUCTURE of hdmi_det_color_cord_0_1_det_color_cord is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_rep_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg[2]_rep_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_NS_fsm14_out : STD_LOGIC;
  signal ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ap_phi_mux_left_edge_new_3_phi_fu_377_p4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ap_phi_mux_right_edge_new_3_phi_fu_440_p4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ap_phi_mux_upper_edge_new_3_phi_fu_397_p4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bottom_edge : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bottom_edge0 : STD_LOGIC;
  signal bottom_edge_flag_2_reg_261 : STD_LOGIC;
  signal bottom_edge_flag_2_reg_2610 : STD_LOGIC;
  signal \bottom_edge_flag_2_reg_261[0]_i_1_n_0\ : STD_LOGIC;
  signal bottom_edge_flag_3_reg_404 : STD_LOGIC;
  signal \bottom_edge_flag_3_reg_404[0]_i_1_n_0\ : STD_LOGIC;
  signal bottom_edge_loc_2_reg_283 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \bottom_edge_loc_2_reg_283[0]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[10]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[11]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[12]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[13]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[14]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[15]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[16]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[17]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[18]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[19]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[1]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[20]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[21]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[22]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[23]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[24]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[25]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[26]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[27]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[28]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[29]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[2]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[30]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[31]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[31]_i_2_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[3]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[4]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[5]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[6]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[7]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[8]_i_1_n_0\ : STD_LOGIC;
  signal \bottom_edge_loc_2_reg_283[9]_i_1_n_0\ : STD_LOGIC;
  signal bottom_edge_new_2_reg_271 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \bottom_edge_new_2_reg_271[31]_i_1_n_0\ : STD_LOGIC;
  signal bottom_edge_new_3_reg_414 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal current_x_cord : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal current_x_cord0 : STD_LOGIC;
  signal current_x_cord_flag_1_reg_323 : STD_LOGIC;
  signal \current_x_cord_flag_1_reg_323[0]_i_2_n_0\ : STD_LOGIC;
  signal current_x_cord_new_1_reg_333 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal current_y_cord : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal current_y_cord0 : STD_LOGIC;
  signal current_y_cord_flag_2_reg_344 : STD_LOGIC;
  signal \current_y_cord_flag_2_reg_344[0]_i_1_n_0\ : STD_LOGIC;
  signal current_y_cord_new_1_fu_1013_p3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal current_y_cord_new_2_reg_353 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \data_p1[12]_i_3_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_6_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_3_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_6_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_7_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_3_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_6_n_0\ : STD_LOGIC;
  signal \data_p1[28]_i_3_n_0\ : STD_LOGIC;
  signal \data_p1[28]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[28]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[28]_i_6_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_6_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_6_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_7_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_4_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_6_n_0\ : STD_LOGIC;
  signal \data_p1_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \data_p1_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal grp_fu_448_p2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \grp_fu_448_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__0_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__0_n_1\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__0_n_2\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__0_n_3\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__1_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__1_n_1\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__1_n_2\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__1_n_3\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__2_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__2_n_1\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__2_n_2\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__2_n_3\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__3_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__3_n_1\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__3_n_2\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__3_n_3\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__4_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__4_n_1\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__4_n_2\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__4_n_3\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__5_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__5_n_1\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__5_n_2\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__5_n_3\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__6_n_2\ : STD_LOGIC;
  signal \grp_fu_448_p2_carry__6_n_3\ : STD_LOGIC;
  signal grp_fu_448_p2_carry_i_1_n_0 : STD_LOGIC;
  signal grp_fu_448_p2_carry_i_2_n_0 : STD_LOGIC;
  signal grp_fu_448_p2_carry_i_3_n_0 : STD_LOGIC;
  signal grp_fu_448_p2_carry_i_4_n_0 : STD_LOGIC;
  signal grp_fu_448_p2_carry_n_0 : STD_LOGIC;
  signal grp_fu_448_p2_carry_n_1 : STD_LOGIC;
  signal grp_fu_448_p2_carry_n_2 : STD_LOGIC;
  signal grp_fu_448_p2_carry_n_3 : STD_LOGIC;
  signal \grp_fu_453_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \grp_fu_453_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \grp_fu_453_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \grp_fu_453_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \grp_fu_453_p2_carry__0_n_0\ : STD_LOGIC;
  signal \grp_fu_453_p2_carry__0_n_1\ : STD_LOGIC;
  signal \grp_fu_453_p2_carry__0_n_2\ : STD_LOGIC;
  signal \grp_fu_453_p2_carry__0_n_3\ : STD_LOGIC;
  signal \grp_fu_453_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \grp_fu_453_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \grp_fu_453_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \grp_fu_453_p2_carry__1_n_2\ : STD_LOGIC;
  signal \grp_fu_453_p2_carry__1_n_3\ : STD_LOGIC;
  signal grp_fu_453_p2_carry_i_1_n_0 : STD_LOGIC;
  signal grp_fu_453_p2_carry_i_2_n_0 : STD_LOGIC;
  signal grp_fu_453_p2_carry_i_3_n_0 : STD_LOGIC;
  signal grp_fu_453_p2_carry_i_4_n_0 : STD_LOGIC;
  signal grp_fu_453_p2_carry_n_0 : STD_LOGIC;
  signal grp_fu_453_p2_carry_n_1 : STD_LOGIC;
  signal grp_fu_453_p2_carry_n_2 : STD_LOGIC;
  signal grp_fu_453_p2_carry_n_3 : STD_LOGIC;
  signal height_upper_edge_lo_fu_518_p3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal height_upper_edge_lo_reg_1147 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^led_exist\ : STD_LOGIC;
  signal led_exist_load_reg_1185 : STD_LOGIC;
  signal left_edge : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal left_edge0 : STD_LOGIC;
  signal left_edge_flag_2_reg_203 : STD_LOGIC;
  signal \left_edge_flag_2_reg_203[0]_i_1_n_0\ : STD_LOGIC;
  signal left_edge_flag_3_reg_364 : STD_LOGIC;
  signal \left_edge_flag_3_reg_364[0]_i_1_n_0\ : STD_LOGIC;
  signal left_edge_loc_2_reg_223 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \left_edge_loc_2_reg_223[0]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[10]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[11]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[12]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[13]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[14]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[15]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[16]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[17]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[18]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[19]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[1]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[20]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[21]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[22]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[23]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[24]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[25]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[26]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[27]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[28]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[29]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[2]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[30]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[31]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[31]_i_2_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[3]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[4]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[5]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[6]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[7]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[8]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_loc_2_reg_223[9]_i_1_n_0\ : STD_LOGIC;
  signal left_edge_new_2_reg_213 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \left_edge_new_2_reg_213[0]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[10]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[11]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[12]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[13]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[14]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[15]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[16]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[17]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[18]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[19]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[1]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[20]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[21]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[22]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[23]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[24]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[25]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[26]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[27]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[28]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[29]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[2]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[30]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[31]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[3]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[4]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[5]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[6]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[7]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[8]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_2_reg_213[9]_i_1_n_0\ : STD_LOGIC;
  signal left_edge_new_3_reg_374 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \left_edge_new_3_reg_374[0]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[10]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[11]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[12]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[13]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[14]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[15]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[16]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[17]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[18]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[19]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[1]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[20]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[21]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[22]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[23]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[24]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[25]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[26]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[27]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[28]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[29]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[2]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[30]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[31]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[3]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[4]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[5]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[6]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[7]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[8]_i_1_n_0\ : STD_LOGIC;
  signal \left_edge_new_3_reg_374[9]_i_1_n_0\ : STD_LOGIC;
  signal \^or_cond_7_reg_1172\ : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_n_1 : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_n_2 : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_n_3 : STD_LOGIC;
  signal other2_below_fu_663_p2_carry_i_18_n_0 : STD_LOGIC;
  signal other2_below_fu_663_p2_carry_n_1 : STD_LOGIC;
  signal other2_below_fu_663_p2_carry_n_2 : STD_LOGIC;
  signal other2_below_fu_663_p2_carry_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_4_reg_1204 : STD_LOGIC;
  signal \p_4_reg_1204[63]_i_2_n_0\ : STD_LOGIC;
  signal p_bottom_edge_load_reg_1154 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \p_bottom_edge_load_reg_1154[0]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[10]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[11]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[12]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[13]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[14]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[15]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[16]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[17]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[18]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[19]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[1]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[20]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[21]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[22]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[23]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[24]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[25]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[26]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[27]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[28]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[29]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[2]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[30]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[31]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[3]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[4]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[5]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[6]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[7]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[8]_i_1_n_0\ : STD_LOGIC;
  signal \p_bottom_edge_load_reg_1154[9]_i_1_n_0\ : STD_LOGIC;
  signal p_current_x_cord_load_fu_466_p3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_current_x_cord_load_reg_1099 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_current_y_cord_load_fu_474_p3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_current_y_cord_load_reg_1111 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_neg1_fu_882_p2 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \p_neg1_fu_882_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__0_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__0_n_1\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__0_n_2\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__0_n_3\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__1_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__1_n_1\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__1_n_2\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__1_n_3\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__2_n_0\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__2_n_1\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__2_n_2\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__2_n_3\ : STD_LOGIC;
  signal \p_neg1_fu_882_p2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal p_neg1_fu_882_p2_carry_i_1_n_0 : STD_LOGIC;
  signal p_neg1_fu_882_p2_carry_i_2_n_0 : STD_LOGIC;
  signal p_neg1_fu_882_p2_carry_i_3_n_0 : STD_LOGIC;
  signal p_neg1_fu_882_p2_carry_n_0 : STD_LOGIC;
  signal p_neg1_fu_882_p2_carry_n_1 : STD_LOGIC;
  signal p_neg1_fu_882_p2_carry_n_2 : STD_LOGIC;
  signal p_neg1_fu_882_p2_carry_n_3 : STD_LOGIC;
  signal p_neg_fu_927_p2 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \p_neg_fu_927_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__0_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__0_n_1\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__0_n_2\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__0_n_3\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__1_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__1_n_1\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__1_n_2\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__1_n_3\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__2_n_0\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__2_n_1\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__2_n_2\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__2_n_3\ : STD_LOGIC;
  signal \p_neg_fu_927_p2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal p_neg_fu_927_p2_carry_i_1_n_0 : STD_LOGIC;
  signal p_neg_fu_927_p2_carry_i_2_n_0 : STD_LOGIC;
  signal p_neg_fu_927_p2_carry_i_3_n_0 : STD_LOGIC;
  signal p_neg_fu_927_p2_carry_n_0 : STD_LOGIC;
  signal p_neg_fu_927_p2_carry_n_1 : STD_LOGIC;
  signal p_neg_fu_927_p2_carry_n_2 : STD_LOGIC;
  signal p_neg_fu_927_p2_carry_n_3 : STD_LOGIC;
  signal p_right_edge_load_reg_1161 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \p_right_edge_load_reg_1161[0]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[10]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[11]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[12]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[13]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[14]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[15]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[16]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[17]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[18]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[19]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[1]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[20]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[21]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[22]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[23]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[24]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[25]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[26]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[27]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[28]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[29]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[2]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[30]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[31]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[3]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[4]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[5]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[6]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[7]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[8]_i_1_n_0\ : STD_LOGIC;
  signal \p_right_edge_load_reg_1161[9]_i_1_n_0\ : STD_LOGIC;
  signal right_edge : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal right_edge0 : STD_LOGIC;
  signal right_edge_flag_2_reg_292 : STD_LOGIC;
  signal \right_edge_flag_2_reg_292[0]_i_1_n_0\ : STD_LOGIC;
  signal right_edge_flag_3_reg_426 : STD_LOGIC;
  signal \right_edge_flag_3_reg_426[0]_i_1_n_0\ : STD_LOGIC;
  signal right_edge_loc_2_reg_314 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \right_edge_loc_2_reg_314[0]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[10]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[11]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[12]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[13]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[14]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[15]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[16]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[17]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[18]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[19]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[1]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[20]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[21]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[22]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[23]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[24]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[25]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[26]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[27]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[28]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[29]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[2]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[30]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[31]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[31]_i_2_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[3]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[4]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[5]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[6]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[7]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[8]_i_1_n_0\ : STD_LOGIC;
  signal \right_edge_loc_2_reg_314[9]_i_1_n_0\ : STD_LOGIC;
  signal right_edge_new_2_reg_302 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \right_edge_new_2_reg_302[31]_i_1_n_0\ : STD_LOGIC;
  signal right_edge_new_3_reg_436 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal target_above_fu_675_p2_carry_i_19_n_0 : STD_LOGIC;
  signal target_above_fu_675_p2_carry_n_1 : STD_LOGIC;
  signal target_above_fu_675_p2_carry_n_2 : STD_LOGIC;
  signal target_above_fu_675_p2_carry_n_3 : STD_LOGIC;
  signal tmp_10_reg_1181 : STD_LOGIC;
  signal \tmp_10_reg_1181[0]_i_1_n_0\ : STD_LOGIC;
  signal tmp_11_fu_819_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \tmp_11_fu_819_p2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__0_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__0_n_1\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__0_n_2\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__1_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__1_n_1\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__1_n_2\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__1_n_3\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__2_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__2_n_1\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__2_n_2\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__2_n_3\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__3_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__3_n_1\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__3_n_2\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__3_n_3\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__4_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__4_n_1\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__4_n_2\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__4_n_3\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__5_i_6_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__5_i_7_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__5_i_8_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__5_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__5_n_1\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__5_n_2\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__5_n_3\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__6_i_5_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__6_i_6_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__6_i_7_n_0\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__6_n_1\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__6_n_2\ : STD_LOGIC;
  signal \tmp_11_fu_819_p2_carry__6_n_3\ : STD_LOGIC;
  signal tmp_11_fu_819_p2_carry_i_5_n_0 : STD_LOGIC;
  signal tmp_11_fu_819_p2_carry_i_6_n_0 : STD_LOGIC;
  signal tmp_11_fu_819_p2_carry_i_7_n_0 : STD_LOGIC;
  signal tmp_11_fu_819_p2_carry_i_8_n_0 : STD_LOGIC;
  signal tmp_11_fu_819_p2_carry_n_0 : STD_LOGIC;
  signal tmp_11_fu_819_p2_carry_n_1 : STD_LOGIC;
  signal tmp_11_fu_819_p2_carry_n_2 : STD_LOGIC;
  signal tmp_11_fu_819_p2_carry_n_3 : STD_LOGIC;
  signal tmp_11_reg_1190 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tmp_13_fu_897_p2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal tmp_14_fu_825_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \tmp_14_fu_825_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__0_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__0_n_1\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__0_n_2\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__1_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__1_n_1\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__1_n_2\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__1_n_3\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__2_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__2_n_1\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__2_n_2\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__2_n_3\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__3_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__3_n_1\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__3_n_2\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__3_n_3\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__4_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__4_n_1\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__4_n_2\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__4_n_3\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__5_i_6_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__5_i_7_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__5_i_8_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__5_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__5_n_1\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__5_n_2\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__5_n_3\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__6_i_5_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__6_i_6_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__6_i_7_n_0\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__6_n_1\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__6_n_2\ : STD_LOGIC;
  signal \tmp_14_fu_825_p2_carry__6_n_3\ : STD_LOGIC;
  signal tmp_14_fu_825_p2_carry_i_1_n_0 : STD_LOGIC;
  signal tmp_14_fu_825_p2_carry_i_2_n_0 : STD_LOGIC;
  signal tmp_14_fu_825_p2_carry_i_3_n_0 : STD_LOGIC;
  signal tmp_14_fu_825_p2_carry_i_4_n_0 : STD_LOGIC;
  signal tmp_14_fu_825_p2_carry_n_0 : STD_LOGIC;
  signal tmp_14_fu_825_p2_carry_n_1 : STD_LOGIC;
  signal tmp_14_fu_825_p2_carry_n_2 : STD_LOGIC;
  signal tmp_14_fu_825_p2_carry_n_3 : STD_LOGIC;
  signal tmp_14_reg_1197 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tmp_18_fu_942_p2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal tmp_26_fu_990_p2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal tmp_27_fu_1002_p2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal tmp_29_fu_797_p1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \tmp_29_fu_797_p1__0\ : STD_LOGIC_VECTOR ( 30 downto 16 );
  signal tmp_30_fu_801_p1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \tmp_30_fu_801_p1__0\ : STD_LOGIC_VECTOR ( 30 downto 16 );
  signal tmp_33_fu_831_p1 : STD_LOGIC_VECTOR ( 30 downto 16 );
  signal \tmp_33_fu_831_p1__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tmp_34_fu_835_p1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \tmp_34_fu_835_p1__0\ : STD_LOGIC_VECTOR ( 30 downto 16 );
  signal tmp_4_fu_488_p2 : STD_LOGIC;
  signal tmp_4_reg_1124 : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_10_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_11_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_12_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_13_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_14_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_15_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_16_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_17_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_18_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_19_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_4_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_5_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_6_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_7_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_8_n_0\ : STD_LOGIC;
  signal \tmp_4_reg_1124[0]_i_9_n_0\ : STD_LOGIC;
  signal tmp_5_fu_810_p2 : STD_LOGIC;
  signal \tmp_5_fu_810_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tmp_5_fu_810_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tmp_5_fu_810_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tmp_5_fu_810_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tmp_5_fu_810_p2_carry__0_n_0\ : STD_LOGIC;
  signal \tmp_5_fu_810_p2_carry__0_n_1\ : STD_LOGIC;
  signal \tmp_5_fu_810_p2_carry__0_n_2\ : STD_LOGIC;
  signal \tmp_5_fu_810_p2_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_5_fu_810_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tmp_5_fu_810_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tmp_5_fu_810_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tmp_5_fu_810_p2_carry__1_n_2\ : STD_LOGIC;
  signal \tmp_5_fu_810_p2_carry__1_n_3\ : STD_LOGIC;
  signal tmp_5_fu_810_p2_carry_i_1_n_0 : STD_LOGIC;
  signal tmp_5_fu_810_p2_carry_i_2_n_0 : STD_LOGIC;
  signal tmp_5_fu_810_p2_carry_i_3_n_0 : STD_LOGIC;
  signal tmp_5_fu_810_p2_carry_i_4_n_0 : STD_LOGIC;
  signal tmp_5_fu_810_p2_carry_n_0 : STD_LOGIC;
  signal tmp_5_fu_810_p2_carry_n_1 : STD_LOGIC;
  signal tmp_5_fu_810_p2_carry_n_2 : STD_LOGIC;
  signal tmp_5_fu_810_p2_carry_n_3 : STD_LOGIC;
  signal tmp_5_reg_1176 : STD_LOGIC;
  signal \tmp_5_reg_1176[0]_i_1_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__0_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__0_n_1\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__0_n_2\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__1_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__1_n_1\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__1_n_2\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__1_n_3\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__2_n_1\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__2_n_2\ : STD_LOGIC;
  signal \tmp_6_fu_724_p2_carry__2_n_3\ : STD_LOGIC;
  signal tmp_6_fu_724_p2_carry_i_1_n_0 : STD_LOGIC;
  signal tmp_6_fu_724_p2_carry_i_2_n_0 : STD_LOGIC;
  signal tmp_6_fu_724_p2_carry_i_3_n_0 : STD_LOGIC;
  signal tmp_6_fu_724_p2_carry_i_4_n_0 : STD_LOGIC;
  signal tmp_6_fu_724_p2_carry_i_5_n_0 : STD_LOGIC;
  signal tmp_6_fu_724_p2_carry_i_6_n_0 : STD_LOGIC;
  signal tmp_6_fu_724_p2_carry_i_7_n_0 : STD_LOGIC;
  signal tmp_6_fu_724_p2_carry_i_8_n_0 : STD_LOGIC;
  signal tmp_6_fu_724_p2_carry_n_0 : STD_LOGIC;
  signal tmp_6_fu_724_p2_carry_n_1 : STD_LOGIC;
  signal tmp_6_fu_724_p2_carry_n_2 : STD_LOGIC;
  signal tmp_6_fu_724_p2_carry_n_3 : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__0_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__0_n_1\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__0_n_2\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__1_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__1_n_1\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__1_n_2\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__1_n_3\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__2_n_1\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__2_n_2\ : STD_LOGIC;
  signal \tmp_7_fu_748_p2_carry__2_n_3\ : STD_LOGIC;
  signal tmp_7_fu_748_p2_carry_i_1_n_0 : STD_LOGIC;
  signal tmp_7_fu_748_p2_carry_i_2_n_0 : STD_LOGIC;
  signal tmp_7_fu_748_p2_carry_i_3_n_0 : STD_LOGIC;
  signal tmp_7_fu_748_p2_carry_i_4_n_0 : STD_LOGIC;
  signal tmp_7_fu_748_p2_carry_i_5_n_0 : STD_LOGIC;
  signal tmp_7_fu_748_p2_carry_i_6_n_0 : STD_LOGIC;
  signal tmp_7_fu_748_p2_carry_i_7_n_0 : STD_LOGIC;
  signal tmp_7_fu_748_p2_carry_i_8_n_0 : STD_LOGIC;
  signal tmp_7_fu_748_p2_carry_n_0 : STD_LOGIC;
  signal tmp_7_fu_748_p2_carry_n_1 : STD_LOGIC;
  signal tmp_7_fu_748_p2_carry_n_2 : STD_LOGIC;
  signal tmp_7_fu_748_p2_carry_n_3 : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__0_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__0_n_1\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__0_n_2\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__1_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__1_n_1\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__1_n_2\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__1_n_3\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__2_n_0\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__2_n_1\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__2_n_2\ : STD_LOGIC;
  signal \tmp_8_fu_773_p2_carry__2_n_3\ : STD_LOGIC;
  signal tmp_8_fu_773_p2_carry_i_1_n_0 : STD_LOGIC;
  signal tmp_8_fu_773_p2_carry_i_2_n_0 : STD_LOGIC;
  signal tmp_8_fu_773_p2_carry_i_3_n_0 : STD_LOGIC;
  signal tmp_8_fu_773_p2_carry_i_4_n_0 : STD_LOGIC;
  signal tmp_8_fu_773_p2_carry_i_5_n_0 : STD_LOGIC;
  signal tmp_8_fu_773_p2_carry_i_6_n_0 : STD_LOGIC;
  signal tmp_8_fu_773_p2_carry_i_7_n_0 : STD_LOGIC;
  signal tmp_8_fu_773_p2_carry_i_8_n_0 : STD_LOGIC;
  signal tmp_8_fu_773_p2_carry_n_0 : STD_LOGIC;
  signal tmp_8_fu_773_p2_carry_n_1 : STD_LOGIC;
  signal tmp_8_fu_773_p2_carry_n_2 : STD_LOGIC;
  signal tmp_8_fu_773_p2_carry_n_3 : STD_LOGIC;
  signal tmp_9_fu_805_p2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \tmp_9_fu_805_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__0_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__0_n_1\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__0_n_2\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__1_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__1_n_1\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__1_n_2\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__1_n_3\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__2_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__2_n_1\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__2_n_2\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__2_n_3\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__3_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__3_n_1\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__3_n_2\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__3_n_3\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__4_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__4_n_1\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__4_n_2\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__4_n_3\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__5_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__5_n_1\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__5_n_2\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__5_n_3\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__6_n_2\ : STD_LOGIC;
  signal \tmp_9_fu_805_p2_carry__6_n_3\ : STD_LOGIC;
  signal tmp_9_fu_805_p2_carry_i_1_n_0 : STD_LOGIC;
  signal tmp_9_fu_805_p2_carry_i_2_n_0 : STD_LOGIC;
  signal tmp_9_fu_805_p2_carry_i_3_n_0 : STD_LOGIC;
  signal tmp_9_fu_805_p2_carry_i_4_n_0 : STD_LOGIC;
  signal tmp_9_fu_805_p2_carry_n_0 : STD_LOGIC;
  signal tmp_9_fu_805_p2_carry_n_1 : STD_LOGIC;
  signal tmp_9_fu_805_p2_carry_n_2 : STD_LOGIC;
  signal tmp_9_fu_805_p2_carry_n_3 : STD_LOGIC;
  signal tmp_reg_1168 : STD_LOGIC;
  signal \tmp_reg_1168_reg[0]_rep_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__0_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__0_n_1\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__0_n_2\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__1_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__1_n_1\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__1_n_2\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__1_n_3\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__2_n_1\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__2_n_2\ : STD_LOGIC;
  signal \tmp_s_fu_699_p2_carry__2_n_3\ : STD_LOGIC;
  signal tmp_s_fu_699_p2_carry_i_1_n_0 : STD_LOGIC;
  signal tmp_s_fu_699_p2_carry_i_2_n_0 : STD_LOGIC;
  signal tmp_s_fu_699_p2_carry_i_3_n_0 : STD_LOGIC;
  signal tmp_s_fu_699_p2_carry_i_4_n_0 : STD_LOGIC;
  signal tmp_s_fu_699_p2_carry_i_5_n_0 : STD_LOGIC;
  signal tmp_s_fu_699_p2_carry_i_6_n_0 : STD_LOGIC;
  signal tmp_s_fu_699_p2_carry_i_7_n_0 : STD_LOGIC;
  signal tmp_s_fu_699_p2_carry_i_8_n_0 : STD_LOGIC;
  signal tmp_s_fu_699_p2_carry_n_0 : STD_LOGIC;
  signal tmp_s_fu_699_p2_carry_n_1 : STD_LOGIC;
  signal tmp_s_fu_699_p2_carry_n_2 : STD_LOGIC;
  signal tmp_s_fu_699_p2_carry_n_3 : STD_LOGIC;
  signal upper_edge : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal upper_edge0 : STD_LOGIC;
  signal upper_edge_flag_2_reg_232 : STD_LOGIC;
  signal \upper_edge_flag_2_reg_232[0]_i_2_n_0\ : STD_LOGIC;
  signal \upper_edge_flag_2_reg_232_reg_n_0_[0]\ : STD_LOGIC;
  signal upper_edge_flag_3_reg_384 : STD_LOGIC;
  signal \upper_edge_flag_3_reg_384[0]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_flag_3_reg_384_reg_n_0_[0]\ : STD_LOGIC;
  signal upper_edge_loc_2_reg_252 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \upper_edge_loc_2_reg_252[0]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[10]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[11]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[12]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[13]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[14]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[15]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[16]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[17]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[18]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[19]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[1]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[20]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[21]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[22]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[23]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[24]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[25]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[26]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[27]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[28]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[29]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[2]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[30]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[31]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[31]_i_2_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[3]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[4]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[5]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[6]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[7]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[8]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_loc_2_reg_252[9]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[0]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[10]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[11]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[12]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[13]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[14]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[15]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[16]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[17]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[18]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[19]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[1]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[20]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[21]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[22]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[23]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[24]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[25]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[26]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[27]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[28]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[29]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[2]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[30]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[31]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[3]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[4]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[5]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[6]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[7]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[8]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242[9]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[0]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[10]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[11]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[12]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[13]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[14]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[15]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[16]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[17]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[18]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[19]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[1]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[20]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[21]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[22]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[23]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[24]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[25]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[26]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[27]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[28]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[29]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[2]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[30]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[31]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[3]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[4]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[5]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[6]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[7]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[8]\ : STD_LOGIC;
  signal \upper_edge_new_2_reg_242_reg_n_0_[9]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[0]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[10]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[11]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[12]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[13]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[14]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[15]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[16]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[17]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[18]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[19]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[1]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[20]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[21]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[22]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[23]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[24]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[25]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[26]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[27]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[28]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[29]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[2]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[30]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[31]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[3]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[4]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[5]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[6]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[7]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[8]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394[9]_i_1_n_0\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[0]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[10]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[11]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[12]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[13]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[14]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[15]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[16]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[17]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[18]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[19]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[1]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[20]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[21]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[22]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[23]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[24]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[25]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[26]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[27]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[28]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[29]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[2]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[30]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[31]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[3]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[4]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[5]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[6]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[7]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[8]\ : STD_LOGIC;
  signal \upper_edge_new_3_reg_394_reg_n_0_[9]\ : STD_LOGIC;
  signal val_assign_fu_861_p2 : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal width_left_edge_load_fu_510_p3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal width_left_edge_load_reg_1140 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^x_cord_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \x_cord_out[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x_cord_out[12]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \x_cord_out[12]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \x_cord_out[12]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \x_cord_out[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x_cord_out[16]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \x_cord_out[16]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \x_cord_out[16]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \x_cord_out[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x_cord_out[20]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \x_cord_out[20]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \x_cord_out[20]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \x_cord_out[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x_cord_out[24]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \x_cord_out[24]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \x_cord_out[24]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \x_cord_out[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x_cord_out[28]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \x_cord_out[28]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \x_cord_out[28]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \x_cord_out[31]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \x_cord_out[31]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \x_cord_out[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x_cord_out[4]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \x_cord_out[4]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \x_cord_out[4]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \x_cord_out[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \x_cord_out[8]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \x_cord_out[8]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \x_cord_out[8]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \y_cord_out[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y_cord_out[12]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \y_cord_out[12]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \y_cord_out[12]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \y_cord_out[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y_cord_out[16]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \y_cord_out[16]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \y_cord_out[16]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \y_cord_out[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y_cord_out[20]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \y_cord_out[20]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \y_cord_out[20]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \y_cord_out[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y_cord_out[24]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \y_cord_out[24]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \y_cord_out[24]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \y_cord_out[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y_cord_out[28]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \y_cord_out[28]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \y_cord_out[28]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \y_cord_out[31]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \y_cord_out[31]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \y_cord_out[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y_cord_out[4]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \y_cord_out[4]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \y_cord_out[4]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \y_cord_out[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \y_cord_out[8]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \y_cord_out[8]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \y_cord_out[8]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \NLW_data_p1_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_data_p1_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_data_p1_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_data_p1_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_grp_fu_448_p2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_grp_fu_448_p2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_grp_fu_453_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_grp_fu_453_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_grp_fu_453_p2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_grp_fu_453_p2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_other1_below_fu_669_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_other2_below_fu_663_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_neg1_fu_882_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_p_neg1_fu_882_p2_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_neg1_fu_882_p2_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_p_neg_fu_927_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_p_neg_fu_927_p2_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p_neg_fu_927_p2_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_target_above_fu_675_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_11_fu_819_p2_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_tmp_11_fu_819_p2_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_11_fu_819_p2_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_11_fu_819_p2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tmp_11_fu_819_p2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmp_14_fu_825_p2_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_tmp_14_fu_825_p2_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_14_fu_825_p2_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_14_fu_825_p2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tmp_14_fu_825_p2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_tmp_5_fu_810_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_5_fu_810_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_5_fu_810_p2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tmp_5_fu_810_p2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_6_fu_724_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_6_fu_724_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_6_fu_724_p2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_6_fu_724_p2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_7_fu_748_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_7_fu_748_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_7_fu_748_p2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_7_fu_748_p2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_8_fu_773_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_8_fu_773_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_8_fu_773_p2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_8_fu_773_p2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_9_fu_805_p2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tmp_9_fu_805_p2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_tmp_s_fu_699_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_s_fu_699_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_s_fu_699_p2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_s_fu_699_p2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_x_cord_out[31]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_x_cord_out[31]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y_cord_out[31]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_cord_out[31]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair82";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \ap_CS_fsm_reg[2]\ : label is "ap_CS_fsm_reg[2]";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]_rep\ : label is "none";
  attribute ORIG_CELL_NAME of \ap_CS_fsm_reg[2]_rep\ : label is "ap_CS_fsm_reg[2]";
  attribute SOFT_HLUTNM of \bottom_edge_flag_2_reg_261[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \bottom_edge_flag_3_reg_404[0]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \current_x_cord[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \current_x_cord[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \current_x_cord[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \current_x_cord[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \current_x_cord[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \current_x_cord[14]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \current_x_cord[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \current_x_cord[16]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \current_x_cord[17]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \current_x_cord[18]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \current_x_cord[19]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \current_x_cord[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \current_x_cord[20]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \current_x_cord[21]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \current_x_cord[22]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \current_x_cord[23]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \current_x_cord[24]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \current_x_cord[25]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \current_x_cord[26]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current_x_cord[27]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \current_x_cord[28]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \current_x_cord[29]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_x_cord[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \current_x_cord[30]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_x_cord[31]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \current_x_cord[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \current_x_cord[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_x_cord[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \current_x_cord[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \current_x_cord[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \current_x_cord[8]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \current_x_cord[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \current_x_cord_flag_1_reg_323[0]_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \current_y_cord_flag_2_reg_344[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[0]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[10]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[11]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[12]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[13]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[14]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[15]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[16]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[17]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[18]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[19]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[1]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[20]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[21]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[22]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[23]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[24]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[25]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[26]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[27]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[28]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[29]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[2]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[30]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[31]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[3]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[4]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[5]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[6]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[7]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[8]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \current_y_cord_new_2_reg_353[9]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of edgeout_val_ap_vld_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[0]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[10]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[11]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[12]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[13]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[14]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[15]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[16]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[17]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[18]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[19]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[1]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[20]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[21]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[22]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[23]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[24]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[25]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[26]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[27]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[28]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[29]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[2]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[30]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[31]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[3]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[4]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[5]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[6]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[7]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[8]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \height_upper_edge_lo_reg_1147[9]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \left_edge_flag_2_reg_203[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \left_edge_flag_3_reg_364[0]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[0]_i_1\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[10]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[11]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[12]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[13]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[14]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[15]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[16]_i_1\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[17]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[18]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[19]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[1]_i_1\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[20]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[21]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[22]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[23]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[24]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[25]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[26]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[27]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[28]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[29]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[2]_i_1\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[30]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[31]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[3]_i_1\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[4]_i_1\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[5]_i_1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[6]_i_1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[7]_i_1\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[8]_i_1\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \p_bottom_edge_load_reg_1154[9]_i_1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[0]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[10]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[11]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[12]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[13]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[14]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[15]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[16]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[17]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[18]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[19]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[1]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[20]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[21]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[22]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[23]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[24]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[25]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[26]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[27]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[28]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[29]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[2]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[30]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[31]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[3]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[5]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[7]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[8]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \p_current_x_cord_load_reg_1099[9]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[0]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[10]_i_1\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[11]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[12]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[13]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[14]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[15]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[16]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[17]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[18]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[19]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[20]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[21]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[22]_i_1\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[23]_i_1\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[24]_i_1\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[25]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[26]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[27]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[28]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[29]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[2]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[30]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[31]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[4]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[5]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[6]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[7]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[8]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \p_current_y_cord_load_reg_1111[9]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[0]_i_1\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[10]_i_1\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[11]_i_1\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[12]_i_1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[13]_i_1\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[14]_i_1\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[15]_i_1\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[16]_i_1\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[17]_i_1\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[18]_i_1\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[19]_i_1\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[1]_i_1\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[20]_i_1\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[21]_i_1\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[22]_i_1\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[23]_i_1\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[24]_i_1\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[25]_i_1\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[26]_i_1\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[27]_i_1\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[28]_i_1\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[29]_i_1\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[2]_i_1\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[30]_i_1\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[31]_i_1\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[3]_i_1\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[4]_i_1\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[5]_i_1\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[6]_i_1\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[7]_i_1\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[8]_i_1\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \p_right_edge_load_reg_1161[9]_i_1\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \right_edge_flag_2_reg_292[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \right_edge_flag_3_reg_426[0]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of target_above_fu_675_p2_carry_i_17 : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of target_above_fu_675_p2_carry_i_18 : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \tmp_10_reg_1181[0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \tmp_4_reg_1124[0]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tmp_4_reg_1124[0]_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tmp_4_reg_1124[0]_i_12\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \tmp_4_reg_1124[0]_i_13\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \tmp_4_reg_1124[0]_i_14\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \tmp_4_reg_1124[0]_i_15\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \tmp_4_reg_1124[0]_i_16\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \tmp_4_reg_1124[0]_i_17\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \tmp_4_reg_1124[0]_i_18\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \tmp_4_reg_1124[0]_i_19\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \tmp_4_reg_1124[0]_i_8\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \tmp_4_reg_1124[0]_i_9\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \tmp_5_reg_1176[0]_i_1\ : label is "soft_lutpair68";
  attribute ORIG_CELL_NAME of \tmp_reg_1168_reg[0]\ : label is "tmp_reg_1168_reg[0]";
  attribute ORIG_CELL_NAME of \tmp_reg_1168_reg[0]_rep\ : label is "tmp_reg_1168_reg[0]";
  attribute SOFT_HLUTNM of \upper_edge_flag_2_reg_232[0]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \upper_edge_flag_3_reg_384[0]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[0]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[10]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[11]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[12]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[13]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[14]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[15]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[16]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[17]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[18]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[19]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[20]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[21]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[22]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[23]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[24]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[25]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[26]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[27]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[28]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[29]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[2]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[30]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[31]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[3]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[4]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[5]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[6]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[7]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[8]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \width_left_edge_load_reg_1140[9]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \x_cord_out[0]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \x_cord_out[10]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \x_cord_out[11]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \x_cord_out[12]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \x_cord_out[13]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \x_cord_out[14]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \x_cord_out[15]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \x_cord_out[16]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \x_cord_out[17]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \x_cord_out[18]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \x_cord_out[19]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \x_cord_out[1]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \x_cord_out[20]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \x_cord_out[21]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \x_cord_out[22]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \x_cord_out[23]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \x_cord_out[24]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \x_cord_out[25]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \x_cord_out[26]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \x_cord_out[27]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \x_cord_out[28]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \x_cord_out[29]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \x_cord_out[2]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \x_cord_out[30]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \x_cord_out[31]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \x_cord_out[3]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \x_cord_out[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \x_cord_out[5]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \x_cord_out[6]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \x_cord_out[7]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \x_cord_out[8]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \x_cord_out[9]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \y_cord_out[0]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \y_cord_out[10]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \y_cord_out[11]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \y_cord_out[12]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \y_cord_out[13]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \y_cord_out[14]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \y_cord_out[15]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \y_cord_out[16]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \y_cord_out[17]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \y_cord_out[18]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \y_cord_out[19]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \y_cord_out[1]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \y_cord_out[20]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \y_cord_out[21]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \y_cord_out[22]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \y_cord_out[23]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \y_cord_out[24]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \y_cord_out[25]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \y_cord_out[26]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \y_cord_out[27]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \y_cord_out[28]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \y_cord_out[29]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \y_cord_out[2]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \y_cord_out[30]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \y_cord_out[31]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \y_cord_out[3]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \y_cord_out[4]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \y_cord_out[5]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \y_cord_out[6]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \y_cord_out[7]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \y_cord_out[8]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \y_cord_out[9]_INST_0\ : label is "soft_lutpair71";
begin
  E(0) <= \^e\(0);
  Q(0) <= \^q\(0);
  led_exist <= \^led_exist\;
  or_cond_7_reg_1172 <= \^or_cond_7_reg_1172\;
  x_cord_out(31 downto 0) <= \^x_cord_out\(31 downto 0);
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2AAA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I1 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I2 => tmp_5_reg_1176,
      I3 => tmp_10_reg_1181,
      I4 => sig_det_color_cord_cord_out_V_full_n,
      O => \ap_CS_fsm[0]_i_1_n_0\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => ap_CS_fsm_state2,
      I3 => ap_CS_fsm_state3,
      O => \ap_CS_fsm[1]_i_1_n_0\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DFD"
    )
        port map (
      I0 => \ap_CS_fsm[0]_i_1_n_0\,
      I1 => ap_CS_fsm_state2,
      I2 => \^q\(0),
      I3 => \state_reg[0]\(0),
      O => \ap_CS_fsm[2]_i_1_n_0\
    );
\ap_CS_fsm[2]_rep_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DFD"
    )
        port map (
      I0 => \ap_CS_fsm[0]_i_1_n_0\,
      I1 => ap_CS_fsm_state2,
      I2 => \^q\(0),
      I3 => \state_reg[0]\(0),
      O => \ap_CS_fsm[2]_rep_i_1_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \ap_CS_fsm[0]_i_1_n_0\,
      Q => \^q\(0),
      S => SR(0)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \ap_CS_fsm[1]_i_1_n_0\,
      Q => ap_CS_fsm_state2,
      R => SR(0)
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \ap_CS_fsm[2]_i_1_n_0\,
      Q => ap_CS_fsm_state3,
      R => SR(0)
    );
\ap_CS_fsm_reg[2]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \ap_CS_fsm[2]_rep_i_1_n_0\,
      Q => \ap_CS_fsm_reg[2]_rep_n_0\,
      R => SR(0)
    );
\bottom_edge[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(0),
      I3 => bottom_edge_new_3_reg_414(0),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(0)
    );
\bottom_edge[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(10),
      I3 => bottom_edge_new_3_reg_414(10),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(10)
    );
\bottom_edge[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(11),
      I3 => bottom_edge_new_3_reg_414(11),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(11)
    );
\bottom_edge[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(12),
      I3 => bottom_edge_new_3_reg_414(12),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(12)
    );
\bottom_edge[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(13),
      I3 => bottom_edge_new_3_reg_414(13),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(13)
    );
\bottom_edge[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(14),
      I3 => bottom_edge_new_3_reg_414(14),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(14)
    );
\bottom_edge[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(15),
      I3 => bottom_edge_new_3_reg_414(15),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(15)
    );
\bottom_edge[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(16),
      I3 => bottom_edge_new_3_reg_414(16),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(16)
    );
\bottom_edge[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(17),
      I3 => bottom_edge_new_3_reg_414(17),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(17)
    );
\bottom_edge[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(18),
      I3 => bottom_edge_new_3_reg_414(18),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(18)
    );
\bottom_edge[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(19),
      I3 => bottom_edge_new_3_reg_414(19),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(19)
    );
\bottom_edge[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(1),
      I3 => bottom_edge_new_3_reg_414(1),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(1)
    );
\bottom_edge[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(20),
      I3 => bottom_edge_new_3_reg_414(20),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(20)
    );
\bottom_edge[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(21),
      I3 => bottom_edge_new_3_reg_414(21),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(21)
    );
\bottom_edge[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(22),
      I3 => bottom_edge_new_3_reg_414(22),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(22)
    );
\bottom_edge[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(23),
      I3 => bottom_edge_new_3_reg_414(23),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(23)
    );
\bottom_edge[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(24),
      I3 => bottom_edge_new_3_reg_414(24),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(24)
    );
\bottom_edge[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(25),
      I3 => bottom_edge_new_3_reg_414(25),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(25)
    );
\bottom_edge[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(26),
      I3 => bottom_edge_new_3_reg_414(26),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(26)
    );
\bottom_edge[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(27),
      I3 => bottom_edge_new_3_reg_414(27),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(27)
    );
\bottom_edge[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(28),
      I3 => bottom_edge_new_3_reg_414(28),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(28)
    );
\bottom_edge[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(29),
      I3 => bottom_edge_new_3_reg_414(29),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(29)
    );
\bottom_edge[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(2),
      I3 => bottom_edge_new_3_reg_414(2),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(2)
    );
\bottom_edge[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(30),
      I3 => bottom_edge_new_3_reg_414(30),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(30)
    );
\bottom_edge[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0807000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => \ap_CS_fsm[0]_i_1_n_0\,
      I3 => bottom_edge_flag_3_reg_404,
      I4 => bottom_edge_flag_2_reg_261,
      O => bottom_edge0
    );
\bottom_edge[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(31),
      I3 => bottom_edge_new_3_reg_414(31),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(31)
    );
\bottom_edge[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(3),
      I3 => bottom_edge_new_3_reg_414(3),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(3)
    );
\bottom_edge[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(4),
      I3 => bottom_edge_new_3_reg_414(4),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(4)
    );
\bottom_edge[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(5),
      I3 => bottom_edge_new_3_reg_414(5),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(5)
    );
\bottom_edge[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(6),
      I3 => bottom_edge_new_3_reg_414(6),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(6)
    );
\bottom_edge[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(7),
      I3 => bottom_edge_new_3_reg_414(7),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(7)
    );
\bottom_edge[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(8),
      I3 => bottom_edge_new_3_reg_414(8),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(8)
    );
\bottom_edge[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => bottom_edge_new_2_reg_271(9),
      I3 => bottom_edge_new_3_reg_414(9),
      O => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(9)
    );
\bottom_edge_flag_2_reg_261[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => tmp_4_fu_488_p2,
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => tmp_4_reg_1124,
      I3 => p_0_in3_in,
      O => \bottom_edge_flag_2_reg_261[0]_i_1_n_0\
    );
\bottom_edge_flag_2_reg_261_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \bottom_edge_flag_2_reg_261[0]_i_1_n_0\,
      Q => bottom_edge_flag_2_reg_261,
      R => '0'
    );
\bottom_edge_flag_3_reg_404[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => tmp_4_fu_488_p2,
      I3 => bottom_edge_flag_2_reg_261,
      O => \bottom_edge_flag_3_reg_404[0]_i_1_n_0\
    );
\bottom_edge_flag_3_reg_404_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \bottom_edge_flag_3_reg_404[0]_i_1_n_0\,
      Q => bottom_edge_flag_3_reg_404,
      R => '0'
    );
\bottom_edge_loc_2_reg_283[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(0),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(0),
      O => \bottom_edge_loc_2_reg_283[0]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(10),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(10),
      O => \bottom_edge_loc_2_reg_283[10]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(11),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(11),
      O => \bottom_edge_loc_2_reg_283[11]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(12),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(12),
      O => \bottom_edge_loc_2_reg_283[12]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(13),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(13),
      O => \bottom_edge_loc_2_reg_283[13]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(14),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(14),
      O => \bottom_edge_loc_2_reg_283[14]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(15),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(15),
      O => \bottom_edge_loc_2_reg_283[15]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(16),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(16),
      O => \bottom_edge_loc_2_reg_283[16]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(17),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(17),
      O => \bottom_edge_loc_2_reg_283[17]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(18),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(18),
      O => \bottom_edge_loc_2_reg_283[18]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(19),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(19),
      O => \bottom_edge_loc_2_reg_283[19]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(1),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(1),
      O => \bottom_edge_loc_2_reg_283[1]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(20),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(20),
      O => \bottom_edge_loc_2_reg_283[20]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(21),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(21),
      O => \bottom_edge_loc_2_reg_283[21]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(22),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(22),
      O => \bottom_edge_loc_2_reg_283[22]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(23),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(23),
      O => \bottom_edge_loc_2_reg_283[23]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(24),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(24),
      O => \bottom_edge_loc_2_reg_283[24]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(25),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(25),
      O => \bottom_edge_loc_2_reg_283[25]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(26),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(26),
      O => \bottom_edge_loc_2_reg_283[26]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(27),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(27),
      O => \bottom_edge_loc_2_reg_283[27]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(28),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(28),
      O => \bottom_edge_loc_2_reg_283[28]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(29),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(29),
      O => \bottom_edge_loc_2_reg_283[29]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(2),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(2),
      O => \bottom_edge_loc_2_reg_283[2]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(30),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_29_fu_797_p1__0\(30),
      O => \bottom_edge_loc_2_reg_283[30]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(31),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \bottom_edge_loc_2_reg_283[31]_i_2_n_0\,
      O => \bottom_edge_loc_2_reg_283[31]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(31),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(31),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(31),
      O => \bottom_edge_loc_2_reg_283[31]_i_2_n_0\
    );
\bottom_edge_loc_2_reg_283[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(3),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(3),
      O => \bottom_edge_loc_2_reg_283[3]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(4),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(4),
      O => \bottom_edge_loc_2_reg_283[4]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(5),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(5),
      O => \bottom_edge_loc_2_reg_283[5]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(6),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(6),
      O => \bottom_edge_loc_2_reg_283[6]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(7),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(7),
      O => \bottom_edge_loc_2_reg_283[7]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(8),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(8),
      O => \bottom_edge_loc_2_reg_283[8]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => bottom_edge(9),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_29_fu_797_p1(9),
      O => \bottom_edge_loc_2_reg_283[9]_i_1_n_0\
    );
\bottom_edge_loc_2_reg_283_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[0]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(0),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[10]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(10),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[11]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(11),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[12]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(12),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[13]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(13),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[14]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(14),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[15]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(15),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[16]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(16),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[17]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(17),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[18]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(18),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[19]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(19),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[1]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(1),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[20]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(20),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[21]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(21),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[22]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(22),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[23]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(23),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[24]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(24),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[25]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(25),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[26]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(26),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[27]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(27),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[28]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(28),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[29]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(29),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[2]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(2),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[30]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(30),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[31]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(31),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[3]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(3),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[4]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(4),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[5]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(5),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[6]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(6),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[7]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(7),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[8]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(8),
      R => '0'
    );
\bottom_edge_loc_2_reg_283_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bottom_edge_loc_2_reg_283[9]_i_1_n_0\,
      Q => bottom_edge_loc_2_reg_283(9),
      R => '0'
    );
\bottom_edge_new_2_reg_271[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[0]_0\,
      I1 => p_0_in3_in,
      I2 => bottom_edge_flag_2_reg_2610,
      O => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \^or_cond_7_reg_1172\,
      O => bottom_edge_flag_2_reg_2610
    );
\bottom_edge_new_2_reg_271_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(0),
      Q => bottom_edge_new_2_reg_271(0),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(10),
      Q => bottom_edge_new_2_reg_271(10),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(11),
      Q => bottom_edge_new_2_reg_271(11),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(12),
      Q => bottom_edge_new_2_reg_271(12),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(13),
      Q => bottom_edge_new_2_reg_271(13),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(14),
      Q => bottom_edge_new_2_reg_271(14),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(15),
      Q => bottom_edge_new_2_reg_271(15),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(16),
      Q => bottom_edge_new_2_reg_271(16),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(17),
      Q => bottom_edge_new_2_reg_271(17),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(18),
      Q => bottom_edge_new_2_reg_271(18),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(19),
      Q => bottom_edge_new_2_reg_271(19),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(1),
      Q => bottom_edge_new_2_reg_271(1),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(20),
      Q => bottom_edge_new_2_reg_271(20),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(21),
      Q => bottom_edge_new_2_reg_271(21),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(22),
      Q => bottom_edge_new_2_reg_271(22),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(23),
      Q => bottom_edge_new_2_reg_271(23),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(24),
      Q => bottom_edge_new_2_reg_271(24),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(25),
      Q => bottom_edge_new_2_reg_271(25),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(26),
      Q => bottom_edge_new_2_reg_271(26),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(27),
      Q => bottom_edge_new_2_reg_271(27),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(28),
      Q => bottom_edge_new_2_reg_271(28),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(29),
      Q => bottom_edge_new_2_reg_271(29),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(2),
      Q => bottom_edge_new_2_reg_271(2),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(30),
      Q => bottom_edge_new_2_reg_271(30),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(31),
      Q => bottom_edge_new_2_reg_271(31),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(3),
      Q => bottom_edge_new_2_reg_271(3),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(4),
      Q => bottom_edge_new_2_reg_271(4),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(5),
      Q => bottom_edge_new_2_reg_271(5),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(6),
      Q => bottom_edge_new_2_reg_271(6),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(7),
      Q => bottom_edge_new_2_reg_271(7),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(8),
      Q => bottom_edge_new_2_reg_271(8),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_2_reg_271_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_y_cord_load_reg_1111(9),
      Q => bottom_edge_new_2_reg_271(9),
      R => \bottom_edge_new_2_reg_271[31]_i_1_n_0\
    );
\bottom_edge_new_3_reg_414_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(0),
      Q => bottom_edge_new_3_reg_414(0),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(10),
      Q => bottom_edge_new_3_reg_414(10),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(11),
      Q => bottom_edge_new_3_reg_414(11),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(12),
      Q => bottom_edge_new_3_reg_414(12),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(13),
      Q => bottom_edge_new_3_reg_414(13),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(14),
      Q => bottom_edge_new_3_reg_414(14),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(15),
      Q => bottom_edge_new_3_reg_414(15),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(16),
      Q => bottom_edge_new_3_reg_414(16),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(17),
      Q => bottom_edge_new_3_reg_414(17),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(18),
      Q => bottom_edge_new_3_reg_414(18),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(19),
      Q => bottom_edge_new_3_reg_414(19),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(1),
      Q => bottom_edge_new_3_reg_414(1),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(20),
      Q => bottom_edge_new_3_reg_414(20),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(21),
      Q => bottom_edge_new_3_reg_414(21),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(22),
      Q => bottom_edge_new_3_reg_414(22),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(23),
      Q => bottom_edge_new_3_reg_414(23),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(24),
      Q => bottom_edge_new_3_reg_414(24),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(25),
      Q => bottom_edge_new_3_reg_414(25),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(26),
      Q => bottom_edge_new_3_reg_414(26),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(27),
      Q => bottom_edge_new_3_reg_414(27),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(28),
      Q => bottom_edge_new_3_reg_414(28),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(29),
      Q => bottom_edge_new_3_reg_414(29),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(2),
      Q => bottom_edge_new_3_reg_414(2),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(30),
      Q => bottom_edge_new_3_reg_414(30),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(31),
      Q => bottom_edge_new_3_reg_414(31),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(3),
      Q => bottom_edge_new_3_reg_414(3),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(4),
      Q => bottom_edge_new_3_reg_414(4),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(5),
      Q => bottom_edge_new_3_reg_414(5),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(6),
      Q => bottom_edge_new_3_reg_414(6),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(7),
      Q => bottom_edge_new_3_reg_414(7),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(8),
      Q => bottom_edge_new_3_reg_414(8),
      R => ap_NS_fsm14_out
    );
\bottom_edge_new_3_reg_414_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => bottom_edge_new_2_reg_271(9),
      Q => bottom_edge_new_3_reg_414(9),
      R => ap_NS_fsm14_out
    );
\bottom_edge_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(0),
      Q => bottom_edge(0),
      R => '0'
    );
\bottom_edge_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(10),
      Q => bottom_edge(10),
      R => '0'
    );
\bottom_edge_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(11),
      Q => bottom_edge(11),
      R => '0'
    );
\bottom_edge_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(12),
      Q => bottom_edge(12),
      R => '0'
    );
\bottom_edge_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(13),
      Q => bottom_edge(13),
      R => '0'
    );
\bottom_edge_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(14),
      Q => bottom_edge(14),
      R => '0'
    );
\bottom_edge_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(15),
      Q => bottom_edge(15),
      R => '0'
    );
\bottom_edge_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(16),
      Q => bottom_edge(16),
      R => '0'
    );
\bottom_edge_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(17),
      Q => bottom_edge(17),
      R => '0'
    );
\bottom_edge_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(18),
      Q => bottom_edge(18),
      R => '0'
    );
\bottom_edge_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(19),
      Q => bottom_edge(19),
      R => '0'
    );
\bottom_edge_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(1),
      Q => bottom_edge(1),
      R => '0'
    );
\bottom_edge_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(20),
      Q => bottom_edge(20),
      R => '0'
    );
\bottom_edge_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(21),
      Q => bottom_edge(21),
      R => '0'
    );
\bottom_edge_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(22),
      Q => bottom_edge(22),
      R => '0'
    );
\bottom_edge_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(23),
      Q => bottom_edge(23),
      R => '0'
    );
\bottom_edge_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(24),
      Q => bottom_edge(24),
      R => '0'
    );
\bottom_edge_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(25),
      Q => bottom_edge(25),
      R => '0'
    );
\bottom_edge_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(26),
      Q => bottom_edge(26),
      R => '0'
    );
\bottom_edge_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(27),
      Q => bottom_edge(27),
      R => '0'
    );
\bottom_edge_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(28),
      Q => bottom_edge(28),
      R => '0'
    );
\bottom_edge_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(29),
      Q => bottom_edge(29),
      R => '0'
    );
\bottom_edge_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(2),
      Q => bottom_edge(2),
      R => '0'
    );
\bottom_edge_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(30),
      Q => bottom_edge(30),
      R => '0'
    );
\bottom_edge_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(31),
      Q => bottom_edge(31),
      R => '0'
    );
\bottom_edge_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(3),
      Q => bottom_edge(3),
      R => '0'
    );
\bottom_edge_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(4),
      Q => bottom_edge(4),
      R => '0'
    );
\bottom_edge_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(5),
      Q => bottom_edge(5),
      R => '0'
    );
\bottom_edge_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(6),
      Q => bottom_edge(6),
      R => '0'
    );
\bottom_edge_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(7),
      Q => bottom_edge(7),
      R => '0'
    );
\bottom_edge_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(8),
      Q => bottom_edge(8),
      R => '0'
    );
\bottom_edge_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => bottom_edge0,
      D => ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4(9),
      Q => bottom_edge(9),
      R => '0'
    );
\current_x_cord[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"777F0008"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => p_0_in,
      I3 => p_current_x_cord_load_reg_1099(0),
      I4 => current_x_cord_new_1_reg_333(0),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(0)
    );
\current_x_cord[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(10),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(10),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(10)
    );
\current_x_cord[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(11),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(11),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(11)
    );
\current_x_cord[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(12),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(12),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(12)
    );
\current_x_cord[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(13),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(13),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(13)
    );
\current_x_cord[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(14),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(14),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(14)
    );
\current_x_cord[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(15),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(15),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(15)
    );
\current_x_cord[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(16),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(16),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(16)
    );
\current_x_cord[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(17),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(17),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(17)
    );
\current_x_cord[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(18),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(18),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(18)
    );
\current_x_cord[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(19),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(19),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(19)
    );
\current_x_cord[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(1),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(1),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(1)
    );
\current_x_cord[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(20),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(20),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(20)
    );
\current_x_cord[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(21),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(21),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(21)
    );
\current_x_cord[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(22),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(22),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(22)
    );
\current_x_cord[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(23),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(23),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(23)
    );
\current_x_cord[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(24),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(24),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(24)
    );
\current_x_cord[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(25),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(25),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(25)
    );
\current_x_cord[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(26),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(26),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(26)
    );
\current_x_cord[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(27),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(27),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(27)
    );
\current_x_cord[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(28),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(28),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(28)
    );
\current_x_cord[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(29),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(29),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(29)
    );
\current_x_cord[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(2),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(2),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(2)
    );
\current_x_cord[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(30),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(30),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(30)
    );
\current_x_cord[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => \ap_CS_fsm[0]_i_1_n_0\,
      I3 => current_x_cord_flag_1_reg_323,
      O => current_x_cord0
    );
\current_x_cord[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(31),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(31),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(31)
    );
\current_x_cord[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(3),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(3),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(3)
    );
\current_x_cord[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(4),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(4),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(4)
    );
\current_x_cord[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(5),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(5),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(5)
    );
\current_x_cord[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(6),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(6),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(6)
    );
\current_x_cord[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(7),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(7),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(7)
    );
\current_x_cord[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(8),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(8),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(8)
    );
\current_x_cord[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70080"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_27_fu_1002_p2(9),
      I3 => p_0_in,
      I4 => current_x_cord_new_1_reg_333(9),
      O => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(9)
    );
\current_x_cord_flag_1_reg_323[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => \^e\(0),
      O => upper_edge_flag_3_reg_384
    );
\current_x_cord_flag_1_reg_323[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F2D0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => \^e\(0),
      I3 => reset,
      O => \current_x_cord_flag_1_reg_323[0]_i_2_n_0\
    );
\current_x_cord_flag_1_reg_323_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \current_x_cord_flag_1_reg_323[0]_i_2_n_0\,
      Q => current_x_cord_flag_1_reg_323,
      R => '0'
    );
\current_x_cord_new_1_reg_333[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      O => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(0),
      Q => current_x_cord_new_1_reg_333(0),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(10),
      Q => current_x_cord_new_1_reg_333(10),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(11),
      Q => current_x_cord_new_1_reg_333(11),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(12),
      Q => current_x_cord_new_1_reg_333(12),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(13),
      Q => current_x_cord_new_1_reg_333(13),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(14),
      Q => current_x_cord_new_1_reg_333(14),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(15),
      Q => current_x_cord_new_1_reg_333(15),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(16),
      Q => current_x_cord_new_1_reg_333(16),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(17),
      Q => current_x_cord_new_1_reg_333(17),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(18),
      Q => current_x_cord_new_1_reg_333(18),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(19),
      Q => current_x_cord_new_1_reg_333(19),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(1),
      Q => current_x_cord_new_1_reg_333(1),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(20),
      Q => current_x_cord_new_1_reg_333(20),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(21),
      Q => current_x_cord_new_1_reg_333(21),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(22),
      Q => current_x_cord_new_1_reg_333(22),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(23),
      Q => current_x_cord_new_1_reg_333(23),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(24),
      Q => current_x_cord_new_1_reg_333(24),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(25),
      Q => current_x_cord_new_1_reg_333(25),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(26),
      Q => current_x_cord_new_1_reg_333(26),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(27),
      Q => current_x_cord_new_1_reg_333(27),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(28),
      Q => current_x_cord_new_1_reg_333(28),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(29),
      Q => current_x_cord_new_1_reg_333(29),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(2),
      Q => current_x_cord_new_1_reg_333(2),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(30),
      Q => current_x_cord_new_1_reg_333(30),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(31),
      Q => current_x_cord_new_1_reg_333(31),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(3),
      Q => current_x_cord_new_1_reg_333(3),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(4),
      Q => current_x_cord_new_1_reg_333(4),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(5),
      Q => current_x_cord_new_1_reg_333(5),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(6),
      Q => current_x_cord_new_1_reg_333(6),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(7),
      Q => current_x_cord_new_1_reg_333(7),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(8),
      Q => current_x_cord_new_1_reg_333(8),
      R => ap_NS_fsm14_out
    );
\current_x_cord_new_1_reg_333_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^x_cord_out\(9),
      Q => current_x_cord_new_1_reg_333(9),
      R => ap_NS_fsm14_out
    );
\current_x_cord_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(0),
      Q => current_x_cord(0),
      R => '0'
    );
\current_x_cord_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(10),
      Q => current_x_cord(10),
      R => '0'
    );
\current_x_cord_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(11),
      Q => current_x_cord(11),
      R => '0'
    );
\current_x_cord_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(12),
      Q => current_x_cord(12),
      R => '0'
    );
\current_x_cord_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(13),
      Q => current_x_cord(13),
      R => '0'
    );
\current_x_cord_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(14),
      Q => current_x_cord(14),
      R => '0'
    );
\current_x_cord_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(15),
      Q => current_x_cord(15),
      R => '0'
    );
\current_x_cord_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(16),
      Q => current_x_cord(16),
      R => '0'
    );
\current_x_cord_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(17),
      Q => current_x_cord(17),
      R => '0'
    );
\current_x_cord_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(18),
      Q => current_x_cord(18),
      R => '0'
    );
\current_x_cord_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(19),
      Q => current_x_cord(19),
      R => '0'
    );
\current_x_cord_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(1),
      Q => current_x_cord(1),
      R => '0'
    );
\current_x_cord_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(20),
      Q => current_x_cord(20),
      R => '0'
    );
\current_x_cord_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(21),
      Q => current_x_cord(21),
      R => '0'
    );
\current_x_cord_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(22),
      Q => current_x_cord(22),
      R => '0'
    );
\current_x_cord_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(23),
      Q => current_x_cord(23),
      R => '0'
    );
\current_x_cord_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(24),
      Q => current_x_cord(24),
      R => '0'
    );
\current_x_cord_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(25),
      Q => current_x_cord(25),
      R => '0'
    );
\current_x_cord_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(26),
      Q => current_x_cord(26),
      R => '0'
    );
\current_x_cord_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(27),
      Q => current_x_cord(27),
      R => '0'
    );
\current_x_cord_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(28),
      Q => current_x_cord(28),
      R => '0'
    );
\current_x_cord_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(29),
      Q => current_x_cord(29),
      R => '0'
    );
\current_x_cord_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(2),
      Q => current_x_cord(2),
      R => '0'
    );
\current_x_cord_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(30),
      Q => current_x_cord(30),
      R => '0'
    );
\current_x_cord_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(31),
      Q => current_x_cord(31),
      R => '0'
    );
\current_x_cord_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(3),
      Q => current_x_cord(3),
      R => '0'
    );
\current_x_cord_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(4),
      Q => current_x_cord(4),
      R => '0'
    );
\current_x_cord_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(5),
      Q => current_x_cord(5),
      R => '0'
    );
\current_x_cord_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(6),
      Q => current_x_cord(6),
      R => '0'
    );
\current_x_cord_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(7),
      Q => current_x_cord(7),
      R => '0'
    );
\current_x_cord_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(8),
      Q => current_x_cord(8),
      R => '0'
    );
\current_x_cord_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_x_cord0,
      D => ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4(9),
      Q => current_x_cord(9),
      R => '0'
    );
\current_y_cord[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77777F7700000800"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_5_reg_1176,
      I3 => p_0_in,
      I4 => p_current_y_cord_load_reg_1111(0),
      I5 => current_y_cord_new_2_reg_353(0),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(0)
    );
\current_y_cord[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(10),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(10),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(10)
    );
\current_y_cord[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(11),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(11),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(11)
    );
\current_y_cord[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(12),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(12),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(12)
    );
\current_y_cord[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(13),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(13),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(13)
    );
\current_y_cord[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(14),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(14),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(14)
    );
\current_y_cord[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(15),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(15),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(15)
    );
\current_y_cord[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(16),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(16),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(16)
    );
\current_y_cord[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(17),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(17),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(17)
    );
\current_y_cord[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(18),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(18),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(18)
    );
\current_y_cord[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(19),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(19),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(19)
    );
\current_y_cord[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(1),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(1),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(1)
    );
\current_y_cord[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(20),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(20),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(20)
    );
\current_y_cord[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(21),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(21),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(21)
    );
\current_y_cord[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(22),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(22),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(22)
    );
\current_y_cord[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(23),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(23),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(23)
    );
\current_y_cord[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(24),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(24),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(24)
    );
\current_y_cord[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(25),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(25),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(25)
    );
\current_y_cord[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(26),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(26),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(26)
    );
\current_y_cord[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(27),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(27),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(27)
    );
\current_y_cord[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(28),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(28),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(28)
    );
\current_y_cord[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(29),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(29),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(29)
    );
\current_y_cord[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(2),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(2),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(2)
    );
\current_y_cord[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(30),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(30),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(30)
    );
\current_y_cord[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F080F080F0807000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => \ap_CS_fsm[0]_i_1_n_0\,
      I3 => current_y_cord_flag_2_reg_344,
      I4 => p_0_in,
      I5 => reset,
      O => current_y_cord0
    );
\current_y_cord[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(31),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(31),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(31)
    );
\current_y_cord[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(3),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(3),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(3)
    );
\current_y_cord[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(4),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(4),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(4)
    );
\current_y_cord[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(5),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(5),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(5)
    );
\current_y_cord[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(6),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(6),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(6)
    );
\current_y_cord[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(7),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(7),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(7)
    );
\current_y_cord[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(8),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(8),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(8)
    );
\current_y_cord[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7777700800000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_26_fu_990_p2(9),
      I3 => tmp_5_reg_1176,
      I4 => p_0_in,
      I5 => current_y_cord_new_2_reg_353(9),
      O => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(9)
    );
\current_y_cord_flag_2_reg_344[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => p_0_in,
      I3 => reset,
      O => \current_y_cord_flag_2_reg_344[0]_i_1_n_0\
    );
\current_y_cord_flag_2_reg_344_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \current_y_cord_flag_2_reg_344[0]_i_1_n_0\,
      Q => current_y_cord_flag_2_reg_344,
      R => '0'
    );
\current_y_cord_new_2_reg_353[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => p_0_in,
      I2 => p_current_y_cord_load_reg_1111(0),
      O => current_y_cord_new_1_fu_1013_p3(0)
    );
\current_y_cord_new_2_reg_353[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(10),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(10)
    );
\current_y_cord_new_2_reg_353[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(11),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(11)
    );
\current_y_cord_new_2_reg_353[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(12),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(12)
    );
\current_y_cord_new_2_reg_353[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(13),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(13)
    );
\current_y_cord_new_2_reg_353[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(14),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(14)
    );
\current_y_cord_new_2_reg_353[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(15),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(15)
    );
\current_y_cord_new_2_reg_353[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(16),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(16)
    );
\current_y_cord_new_2_reg_353[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(17),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(17)
    );
\current_y_cord_new_2_reg_353[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(18),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(18)
    );
\current_y_cord_new_2_reg_353[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(19),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(19)
    );
\current_y_cord_new_2_reg_353[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(1),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(1)
    );
\current_y_cord_new_2_reg_353[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(20),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(20)
    );
\current_y_cord_new_2_reg_353[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(21),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(21)
    );
\current_y_cord_new_2_reg_353[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(22),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(22)
    );
\current_y_cord_new_2_reg_353[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(23),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(23)
    );
\current_y_cord_new_2_reg_353[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(24),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(24)
    );
\current_y_cord_new_2_reg_353[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(25),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(25)
    );
\current_y_cord_new_2_reg_353[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(26),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(26)
    );
\current_y_cord_new_2_reg_353[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(27),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(27)
    );
\current_y_cord_new_2_reg_353[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(28),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(28)
    );
\current_y_cord_new_2_reg_353[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(29),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(29)
    );
\current_y_cord_new_2_reg_353[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(2),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(2)
    );
\current_y_cord_new_2_reg_353[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(30),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(30)
    );
\current_y_cord_new_2_reg_353[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(31),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(31)
    );
\current_y_cord_new_2_reg_353[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(3),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(3)
    );
\current_y_cord_new_2_reg_353[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(4),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(4)
    );
\current_y_cord_new_2_reg_353[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(5),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(5)
    );
\current_y_cord_new_2_reg_353[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(6),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(6)
    );
\current_y_cord_new_2_reg_353[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(7),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(7)
    );
\current_y_cord_new_2_reg_353[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(8),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(8)
    );
\current_y_cord_new_2_reg_353[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => tmp_26_fu_990_p2(9),
      I1 => tmp_5_reg_1176,
      I2 => p_0_in,
      O => current_y_cord_new_1_fu_1013_p3(9)
    );
\current_y_cord_new_2_reg_353_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(0),
      Q => current_y_cord_new_2_reg_353(0),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(10),
      Q => current_y_cord_new_2_reg_353(10),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(11),
      Q => current_y_cord_new_2_reg_353(11),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(12),
      Q => current_y_cord_new_2_reg_353(12),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(13),
      Q => current_y_cord_new_2_reg_353(13),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(14),
      Q => current_y_cord_new_2_reg_353(14),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(15),
      Q => current_y_cord_new_2_reg_353(15),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(16),
      Q => current_y_cord_new_2_reg_353(16),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(17),
      Q => current_y_cord_new_2_reg_353(17),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(18),
      Q => current_y_cord_new_2_reg_353(18),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(19),
      Q => current_y_cord_new_2_reg_353(19),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(1),
      Q => current_y_cord_new_2_reg_353(1),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(20),
      Q => current_y_cord_new_2_reg_353(20),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(21),
      Q => current_y_cord_new_2_reg_353(21),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(22),
      Q => current_y_cord_new_2_reg_353(22),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(23),
      Q => current_y_cord_new_2_reg_353(23),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(24),
      Q => current_y_cord_new_2_reg_353(24),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(25),
      Q => current_y_cord_new_2_reg_353(25),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(26),
      Q => current_y_cord_new_2_reg_353(26),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(27),
      Q => current_y_cord_new_2_reg_353(27),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(28),
      Q => current_y_cord_new_2_reg_353(28),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(29),
      Q => current_y_cord_new_2_reg_353(29),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(2),
      Q => current_y_cord_new_2_reg_353(2),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(30),
      Q => current_y_cord_new_2_reg_353(30),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(31),
      Q => current_y_cord_new_2_reg_353(31),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(3),
      Q => current_y_cord_new_2_reg_353(3),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(4),
      Q => current_y_cord_new_2_reg_353(4),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(5),
      Q => current_y_cord_new_2_reg_353(5),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(6),
      Q => current_y_cord_new_2_reg_353(6),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(7),
      Q => current_y_cord_new_2_reg_353(7),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(8),
      Q => current_y_cord_new_2_reg_353(8),
      R => ap_NS_fsm14_out
    );
\current_y_cord_new_2_reg_353_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => current_y_cord_new_1_fu_1013_p3(9),
      Q => current_y_cord_new_2_reg_353(9),
      R => ap_NS_fsm14_out
    );
\current_y_cord_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(0),
      Q => current_y_cord(0),
      R => '0'
    );
\current_y_cord_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(10),
      Q => current_y_cord(10),
      R => '0'
    );
\current_y_cord_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(11),
      Q => current_y_cord(11),
      R => '0'
    );
\current_y_cord_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(12),
      Q => current_y_cord(12),
      R => '0'
    );
\current_y_cord_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(13),
      Q => current_y_cord(13),
      R => '0'
    );
\current_y_cord_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(14),
      Q => current_y_cord(14),
      R => '0'
    );
\current_y_cord_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(15),
      Q => current_y_cord(15),
      R => '0'
    );
\current_y_cord_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(16),
      Q => current_y_cord(16),
      R => '0'
    );
\current_y_cord_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(17),
      Q => current_y_cord(17),
      R => '0'
    );
\current_y_cord_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(18),
      Q => current_y_cord(18),
      R => '0'
    );
\current_y_cord_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(19),
      Q => current_y_cord(19),
      R => '0'
    );
\current_y_cord_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(1),
      Q => current_y_cord(1),
      R => '0'
    );
\current_y_cord_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(20),
      Q => current_y_cord(20),
      R => '0'
    );
\current_y_cord_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(21),
      Q => current_y_cord(21),
      R => '0'
    );
\current_y_cord_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(22),
      Q => current_y_cord(22),
      R => '0'
    );
\current_y_cord_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(23),
      Q => current_y_cord(23),
      R => '0'
    );
\current_y_cord_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(24),
      Q => current_y_cord(24),
      R => '0'
    );
\current_y_cord_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(25),
      Q => current_y_cord(25),
      R => '0'
    );
\current_y_cord_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(26),
      Q => current_y_cord(26),
      R => '0'
    );
\current_y_cord_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(27),
      Q => current_y_cord(27),
      R => '0'
    );
\current_y_cord_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(28),
      Q => current_y_cord(28),
      R => '0'
    );
\current_y_cord_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(29),
      Q => current_y_cord(29),
      R => '0'
    );
\current_y_cord_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(2),
      Q => current_y_cord(2),
      R => '0'
    );
\current_y_cord_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(30),
      Q => current_y_cord(30),
      R => '0'
    );
\current_y_cord_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(31),
      Q => current_y_cord(31),
      R => '0'
    );
\current_y_cord_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(3),
      Q => current_y_cord(3),
      R => '0'
    );
\current_y_cord_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(4),
      Q => current_y_cord(4),
      R => '0'
    );
\current_y_cord_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(5),
      Q => current_y_cord(5),
      R => '0'
    );
\current_y_cord_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(6),
      Q => current_y_cord(6),
      R => '0'
    );
\current_y_cord_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(7),
      Q => current_y_cord(7),
      R => '0'
    );
\current_y_cord_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(8),
      Q => current_y_cord(8),
      R => '0'
    );
\current_y_cord_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => current_y_cord0,
      D => ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4(9),
      Q => current_y_cord(9),
      R => '0'
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(0),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(1),
      I3 => tmp_14_reg_1197(31),
      I4 => p_neg_fu_927_p2(1),
      I5 => led_exist_load_reg_1185,
      O => D(0)
    );
\data_p1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(10),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(11),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(10),
      I5 => led_exist_load_reg_1185,
      O => D(10)
    );
\data_p1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(11),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(12),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(11),
      I5 => led_exist_load_reg_1185,
      O => D(11)
    );
\data_p1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(12),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(13),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(12),
      I5 => led_exist_load_reg_1185,
      O => D(12)
    );
\data_p1[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(13),
      O => \data_p1[12]_i_3_n_0\
    );
\data_p1[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(12),
      O => \data_p1[12]_i_4_n_0\
    );
\data_p1[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(11),
      O => \data_p1[12]_i_5_n_0\
    );
\data_p1[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(10),
      O => \data_p1[12]_i_6_n_0\
    );
\data_p1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(13),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(14),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(13),
      I5 => led_exist_load_reg_1185,
      O => D(13)
    );
\data_p1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(14),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(15),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(14),
      I5 => led_exist_load_reg_1185,
      O => D(14)
    );
\data_p1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(15),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(16),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(15),
      I5 => led_exist_load_reg_1185,
      O => D(15)
    );
\data_p1[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(16),
      O => \data_p1[15]_i_3_n_0\
    );
\data_p1[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(15),
      O => \data_p1[15]_i_4_n_0\
    );
\data_p1[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(14),
      O => \data_p1[15]_i_5_n_0\
    );
\data_p1[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(16),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(1),
      I3 => tmp_11_reg_1190(31),
      I4 => p_neg1_fu_882_p2(1),
      I5 => led_exist_load_reg_1185,
      O => D(16)
    );
\data_p1[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(17),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(2),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(1),
      I5 => led_exist_load_reg_1185,
      O => D(17)
    );
\data_p1[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(18),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(3),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(2),
      I5 => led_exist_load_reg_1185,
      O => D(18)
    );
\data_p1[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(19),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(4),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(3),
      I5 => led_exist_load_reg_1185,
      O => D(19)
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(1),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(2),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(1),
      I5 => led_exist_load_reg_1185,
      O => D(1)
    );
\data_p1[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(20),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(5),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(4),
      I5 => led_exist_load_reg_1185,
      O => D(20)
    );
\data_p1[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(1),
      O => \data_p1[20]_i_3_n_0\
    );
\data_p1[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(5),
      O => \data_p1[20]_i_4_n_0\
    );
\data_p1[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(4),
      O => \data_p1[20]_i_5_n_0\
    );
\data_p1[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(3),
      O => \data_p1[20]_i_6_n_0\
    );
\data_p1[20]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(2),
      O => \data_p1[20]_i_7_n_0\
    );
\data_p1[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(21),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(6),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(5),
      I5 => led_exist_load_reg_1185,
      O => D(21)
    );
\data_p1[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(22),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(7),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(6),
      I5 => led_exist_load_reg_1185,
      O => D(22)
    );
\data_p1[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(23),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(8),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(7),
      I5 => led_exist_load_reg_1185,
      O => D(23)
    );
\data_p1[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(24),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(9),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(8),
      I5 => led_exist_load_reg_1185,
      O => D(24)
    );
\data_p1[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(9),
      O => \data_p1[24]_i_3_n_0\
    );
\data_p1[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(8),
      O => \data_p1[24]_i_4_n_0\
    );
\data_p1[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(7),
      O => \data_p1[24]_i_5_n_0\
    );
\data_p1[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(6),
      O => \data_p1[24]_i_6_n_0\
    );
\data_p1[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(25),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(10),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(9),
      I5 => led_exist_load_reg_1185,
      O => D(25)
    );
\data_p1[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(26),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(11),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(10),
      I5 => led_exist_load_reg_1185,
      O => D(26)
    );
\data_p1[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(27),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(12),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(11),
      I5 => led_exist_load_reg_1185,
      O => D(27)
    );
\data_p1[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(28),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(13),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(12),
      I5 => led_exist_load_reg_1185,
      O => D(28)
    );
\data_p1[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(13),
      O => \data_p1[28]_i_3_n_0\
    );
\data_p1[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(12),
      O => \data_p1[28]_i_4_n_0\
    );
\data_p1[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(11),
      O => \data_p1[28]_i_5_n_0\
    );
\data_p1[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(10),
      O => \data_p1[28]_i_6_n_0\
    );
\data_p1[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(29),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(14),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(13),
      I5 => led_exist_load_reg_1185,
      O => D(29)
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(2),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(3),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(2),
      I5 => led_exist_load_reg_1185,
      O => D(2)
    );
\data_p1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(30),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(15),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(14),
      I5 => led_exist_load_reg_1185,
      O => D(30)
    );
\data_p1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(31),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_11_reg_1190(16),
      I3 => tmp_11_reg_1190(31),
      I4 => tmp_13_fu_897_p2(15),
      I5 => led_exist_load_reg_1185,
      O => D(31)
    );
\data_p1[31]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(16),
      O => \data_p1[31]_i_4_n_0\
    );
\data_p1[31]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(15),
      O => \data_p1[31]_i_5_n_0\
    );
\data_p1[31]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg1_fu_882_p2(14),
      O => \data_p1[31]_i_6_n_0\
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(3),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(4),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(3),
      I5 => led_exist_load_reg_1185,
      O => D(3)
    );
\data_p1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(4),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(5),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(4),
      I5 => led_exist_load_reg_1185,
      O => D(4)
    );
\data_p1[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(1),
      O => \data_p1[4]_i_3_n_0\
    );
\data_p1[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(5),
      O => \data_p1[4]_i_4_n_0\
    );
\data_p1[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(4),
      O => \data_p1[4]_i_5_n_0\
    );
\data_p1[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(3),
      O => \data_p1[4]_i_6_n_0\
    );
\data_p1[4]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(2),
      O => \data_p1[4]_i_7_n_0\
    );
\data_p1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(5),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(6),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(5),
      I5 => led_exist_load_reg_1185,
      O => D(5)
    );
\data_p1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(6),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(7),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(6),
      I5 => led_exist_load_reg_1185,
      O => D(6)
    );
\data_p1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(7),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(8),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(7),
      I5 => led_exist_load_reg_1185,
      O => D(7)
    );
\data_p1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(8),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(9),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(8),
      I5 => led_exist_load_reg_1185,
      O => D(8)
    );
\data_p1[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(9),
      O => \data_p1[8]_i_3_n_0\
    );
\data_p1[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(8),
      O => \data_p1[8]_i_4_n_0\
    );
\data_p1[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(7),
      O => \data_p1[8]_i_5_n_0\
    );
\data_p1[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_neg_fu_927_p2(6),
      O => \data_p1[8]_i_6_n_0\
    );
\data_p1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B8BBBBBBBB"
    )
        port map (
      I0 => \data_p2_reg[31]\(9),
      I1 => \FSM_sequential_state_reg[0]\,
      I2 => tmp_14_reg_1197(10),
      I3 => tmp_14_reg_1197(31),
      I4 => tmp_18_fu_942_p2(9),
      I5 => led_exist_load_reg_1185,
      O => D(9)
    );
\data_p1_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_p1_reg[8]_i_2_n_0\,
      CO(3) => \data_p1_reg[12]_i_2_n_0\,
      CO(2) => \data_p1_reg[12]_i_2_n_1\,
      CO(1) => \data_p1_reg[12]_i_2_n_2\,
      CO(0) => \data_p1_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_18_fu_942_p2(12 downto 9),
      S(3) => \data_p1[12]_i_3_n_0\,
      S(2) => \data_p1[12]_i_4_n_0\,
      S(1) => \data_p1[12]_i_5_n_0\,
      S(0) => \data_p1[12]_i_6_n_0\
    );
\data_p1_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_p1_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_data_p1_reg[15]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \data_p1_reg[15]_i_2_n_2\,
      CO(0) => \data_p1_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_data_p1_reg[15]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => tmp_18_fu_942_p2(15 downto 13),
      S(3) => '0',
      S(2) => \data_p1[15]_i_3_n_0\,
      S(1) => \data_p1[15]_i_4_n_0\,
      S(0) => \data_p1[15]_i_5_n_0\
    );
\data_p1_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_p1_reg[20]_i_2_n_0\,
      CO(2) => \data_p1_reg[20]_i_2_n_1\,
      CO(1) => \data_p1_reg[20]_i_2_n_2\,
      CO(0) => \data_p1_reg[20]_i_2_n_3\,
      CYINIT => \data_p1[20]_i_3_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_13_fu_897_p2(4 downto 1),
      S(3) => \data_p1[20]_i_4_n_0\,
      S(2) => \data_p1[20]_i_5_n_0\,
      S(1) => \data_p1[20]_i_6_n_0\,
      S(0) => \data_p1[20]_i_7_n_0\
    );
\data_p1_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_p1_reg[20]_i_2_n_0\,
      CO(3) => \data_p1_reg[24]_i_2_n_0\,
      CO(2) => \data_p1_reg[24]_i_2_n_1\,
      CO(1) => \data_p1_reg[24]_i_2_n_2\,
      CO(0) => \data_p1_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_13_fu_897_p2(8 downto 5),
      S(3) => \data_p1[24]_i_3_n_0\,
      S(2) => \data_p1[24]_i_4_n_0\,
      S(1) => \data_p1[24]_i_5_n_0\,
      S(0) => \data_p1[24]_i_6_n_0\
    );
\data_p1_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_p1_reg[24]_i_2_n_0\,
      CO(3) => \data_p1_reg[28]_i_2_n_0\,
      CO(2) => \data_p1_reg[28]_i_2_n_1\,
      CO(1) => \data_p1_reg[28]_i_2_n_2\,
      CO(0) => \data_p1_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_13_fu_897_p2(12 downto 9),
      S(3) => \data_p1[28]_i_3_n_0\,
      S(2) => \data_p1[28]_i_4_n_0\,
      S(1) => \data_p1[28]_i_5_n_0\,
      S(0) => \data_p1[28]_i_6_n_0\
    );
\data_p1_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_p1_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_data_p1_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \data_p1_reg[31]_i_3_n_2\,
      CO(0) => \data_p1_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_data_p1_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => tmp_13_fu_897_p2(15 downto 13),
      S(3) => '0',
      S(2) => \data_p1[31]_i_4_n_0\,
      S(1) => \data_p1[31]_i_5_n_0\,
      S(0) => \data_p1[31]_i_6_n_0\
    );
\data_p1_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_p1_reg[4]_i_2_n_0\,
      CO(2) => \data_p1_reg[4]_i_2_n_1\,
      CO(1) => \data_p1_reg[4]_i_2_n_2\,
      CO(0) => \data_p1_reg[4]_i_2_n_3\,
      CYINIT => \data_p1[4]_i_3_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_18_fu_942_p2(4 downto 1),
      S(3) => \data_p1[4]_i_4_n_0\,
      S(2) => \data_p1[4]_i_5_n_0\,
      S(1) => \data_p1[4]_i_6_n_0\,
      S(0) => \data_p1[4]_i_7_n_0\
    );
\data_p1_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_p1_reg[4]_i_2_n_0\,
      CO(3) => \data_p1_reg[8]_i_2_n_0\,
      CO(2) => \data_p1_reg[8]_i_2_n_1\,
      CO(1) => \data_p1_reg[8]_i_2_n_2\,
      CO(0) => \data_p1_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_18_fu_942_p2(8 downto 5),
      S(3) => \data_p1[8]_i_3_n_0\,
      S(2) => \data_p1[8]_i_4_n_0\,
      S(1) => \data_p1[8]_i_5_n_0\,
      S(0) => \data_p1[8]_i_6_n_0\
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(1),
      I1 => tmp_14_reg_1197(31),
      I2 => p_neg_fu_927_p2(1),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(0)
    );
\data_p2[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(11),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(10),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(10)
    );
\data_p2[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(12),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(11),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(11)
    );
\data_p2[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(13),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(12),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(12)
    );
\data_p2[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(14),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(13),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(13)
    );
\data_p2[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(15),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(14),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(14)
    );
\data_p2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(16),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(15),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(15)
    );
\data_p2[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(1),
      I1 => tmp_11_reg_1190(31),
      I2 => p_neg1_fu_882_p2(1),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(16)
    );
\data_p2[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(2),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(1),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(17)
    );
\data_p2[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(3),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(2),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(18)
    );
\data_p2[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(4),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(3),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(19)
    );
\data_p2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(2),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(1),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(1)
    );
\data_p2[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(5),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(4),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(20)
    );
\data_p2[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(6),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(5),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(21)
    );
\data_p2[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(7),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(6),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(22)
    );
\data_p2[23]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(8),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(7),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(23)
    );
\data_p2[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(9),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(8),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(24)
    );
\data_p2[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(10),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(9),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(25)
    );
\data_p2[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(11),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(10),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(26)
    );
\data_p2[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(12),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(11),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(27)
    );
\data_p2[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(13),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(12),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(28)
    );
\data_p2[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(14),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(13),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(29)
    );
\data_p2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(3),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(2),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(2)
    );
\data_p2[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(15),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(14),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(30)
    );
\data_p2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_11_reg_1190(16),
      I1 => tmp_11_reg_1190(31),
      I2 => tmp_13_fu_897_p2(15),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(31)
    );
\data_p2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(4),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(3),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(3)
    );
\data_p2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(5),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(4),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(4)
    );
\data_p2[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(6),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(5),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(5)
    );
\data_p2[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(7),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(6),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(6)
    );
\data_p2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(8),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(7),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(7)
    );
\data_p2[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(9),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(8),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(8)
    );
\data_p2[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => tmp_14_reg_1197(10),
      I1 => tmp_14_reg_1197(31),
      I2 => tmp_18_fu_942_p2(9),
      I3 => led_exist_load_reg_1185,
      O => \edgeout_val[63]\(9)
    );
edgeout_val_ap_vld_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I1 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I2 => tmp_5_reg_1176,
      I3 => tmp_10_reg_1181,
      I4 => sig_det_color_cord_cord_out_V_full_n,
      O => edgeout_val_ap_vld
    );
grp_fu_448_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => grp_fu_448_p2_carry_n_0,
      CO(2) => grp_fu_448_p2_carry_n_1,
      CO(1) => grp_fu_448_p2_carry_n_2,
      CO(0) => grp_fu_448_p2_carry_n_3,
      CYINIT => width(0),
      DI(3 downto 0) => width(4 downto 1),
      O(3 downto 0) => grp_fu_448_p2(4 downto 1),
      S(3) => grp_fu_448_p2_carry_i_1_n_0,
      S(2) => grp_fu_448_p2_carry_i_2_n_0,
      S(1) => grp_fu_448_p2_carry_i_3_n_0,
      S(0) => grp_fu_448_p2_carry_i_4_n_0
    );
\grp_fu_448_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => grp_fu_448_p2_carry_n_0,
      CO(3) => \grp_fu_448_p2_carry__0_n_0\,
      CO(2) => \grp_fu_448_p2_carry__0_n_1\,
      CO(1) => \grp_fu_448_p2_carry__0_n_2\,
      CO(0) => \grp_fu_448_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => width(8 downto 5),
      O(3 downto 0) => grp_fu_448_p2(8 downto 5),
      S(3) => \grp_fu_448_p2_carry__0_i_1_n_0\,
      S(2) => \grp_fu_448_p2_carry__0_i_2_n_0\,
      S(1) => \grp_fu_448_p2_carry__0_i_3_n_0\,
      S(0) => \grp_fu_448_p2_carry__0_i_4_n_0\
    );
\grp_fu_448_p2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(8),
      O => \grp_fu_448_p2_carry__0_i_1_n_0\
    );
\grp_fu_448_p2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(7),
      O => \grp_fu_448_p2_carry__0_i_2_n_0\
    );
\grp_fu_448_p2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(6),
      O => \grp_fu_448_p2_carry__0_i_3_n_0\
    );
\grp_fu_448_p2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(5),
      O => \grp_fu_448_p2_carry__0_i_4_n_0\
    );
\grp_fu_448_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \grp_fu_448_p2_carry__0_n_0\,
      CO(3) => \grp_fu_448_p2_carry__1_n_0\,
      CO(2) => \grp_fu_448_p2_carry__1_n_1\,
      CO(1) => \grp_fu_448_p2_carry__1_n_2\,
      CO(0) => \grp_fu_448_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => width(12 downto 9),
      O(3 downto 0) => grp_fu_448_p2(12 downto 9),
      S(3) => \grp_fu_448_p2_carry__1_i_1_n_0\,
      S(2) => \grp_fu_448_p2_carry__1_i_2_n_0\,
      S(1) => \grp_fu_448_p2_carry__1_i_3_n_0\,
      S(0) => \grp_fu_448_p2_carry__1_i_4_n_0\
    );
\grp_fu_448_p2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(12),
      O => \grp_fu_448_p2_carry__1_i_1_n_0\
    );
\grp_fu_448_p2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(11),
      O => \grp_fu_448_p2_carry__1_i_2_n_0\
    );
\grp_fu_448_p2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(10),
      O => \grp_fu_448_p2_carry__1_i_3_n_0\
    );
\grp_fu_448_p2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(9),
      O => \grp_fu_448_p2_carry__1_i_4_n_0\
    );
\grp_fu_448_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \grp_fu_448_p2_carry__1_n_0\,
      CO(3) => \grp_fu_448_p2_carry__2_n_0\,
      CO(2) => \grp_fu_448_p2_carry__2_n_1\,
      CO(1) => \grp_fu_448_p2_carry__2_n_2\,
      CO(0) => \grp_fu_448_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => width(16 downto 13),
      O(3 downto 0) => grp_fu_448_p2(16 downto 13),
      S(3) => \grp_fu_448_p2_carry__2_i_1_n_0\,
      S(2) => \grp_fu_448_p2_carry__2_i_2_n_0\,
      S(1) => \grp_fu_448_p2_carry__2_i_3_n_0\,
      S(0) => \grp_fu_448_p2_carry__2_i_4_n_0\
    );
\grp_fu_448_p2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(16),
      O => \grp_fu_448_p2_carry__2_i_1_n_0\
    );
\grp_fu_448_p2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(15),
      O => \grp_fu_448_p2_carry__2_i_2_n_0\
    );
\grp_fu_448_p2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(14),
      O => \grp_fu_448_p2_carry__2_i_3_n_0\
    );
\grp_fu_448_p2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(13),
      O => \grp_fu_448_p2_carry__2_i_4_n_0\
    );
\grp_fu_448_p2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \grp_fu_448_p2_carry__2_n_0\,
      CO(3) => \grp_fu_448_p2_carry__3_n_0\,
      CO(2) => \grp_fu_448_p2_carry__3_n_1\,
      CO(1) => \grp_fu_448_p2_carry__3_n_2\,
      CO(0) => \grp_fu_448_p2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => width(20 downto 17),
      O(3 downto 0) => grp_fu_448_p2(20 downto 17),
      S(3) => \grp_fu_448_p2_carry__3_i_1_n_0\,
      S(2) => \grp_fu_448_p2_carry__3_i_2_n_0\,
      S(1) => \grp_fu_448_p2_carry__3_i_3_n_0\,
      S(0) => \grp_fu_448_p2_carry__3_i_4_n_0\
    );
\grp_fu_448_p2_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(20),
      O => \grp_fu_448_p2_carry__3_i_1_n_0\
    );
\grp_fu_448_p2_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(19),
      O => \grp_fu_448_p2_carry__3_i_2_n_0\
    );
\grp_fu_448_p2_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(18),
      O => \grp_fu_448_p2_carry__3_i_3_n_0\
    );
\grp_fu_448_p2_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(17),
      O => \grp_fu_448_p2_carry__3_i_4_n_0\
    );
\grp_fu_448_p2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \grp_fu_448_p2_carry__3_n_0\,
      CO(3) => \grp_fu_448_p2_carry__4_n_0\,
      CO(2) => \grp_fu_448_p2_carry__4_n_1\,
      CO(1) => \grp_fu_448_p2_carry__4_n_2\,
      CO(0) => \grp_fu_448_p2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => width(24 downto 21),
      O(3 downto 0) => grp_fu_448_p2(24 downto 21),
      S(3) => \grp_fu_448_p2_carry__4_i_1_n_0\,
      S(2) => \grp_fu_448_p2_carry__4_i_2_n_0\,
      S(1) => \grp_fu_448_p2_carry__4_i_3_n_0\,
      S(0) => \grp_fu_448_p2_carry__4_i_4_n_0\
    );
\grp_fu_448_p2_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(24),
      O => \grp_fu_448_p2_carry__4_i_1_n_0\
    );
\grp_fu_448_p2_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(23),
      O => \grp_fu_448_p2_carry__4_i_2_n_0\
    );
\grp_fu_448_p2_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(22),
      O => \grp_fu_448_p2_carry__4_i_3_n_0\
    );
\grp_fu_448_p2_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(21),
      O => \grp_fu_448_p2_carry__4_i_4_n_0\
    );
\grp_fu_448_p2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \grp_fu_448_p2_carry__4_n_0\,
      CO(3) => \grp_fu_448_p2_carry__5_n_0\,
      CO(2) => \grp_fu_448_p2_carry__5_n_1\,
      CO(1) => \grp_fu_448_p2_carry__5_n_2\,
      CO(0) => \grp_fu_448_p2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => width(28 downto 25),
      O(3 downto 0) => grp_fu_448_p2(28 downto 25),
      S(3) => \grp_fu_448_p2_carry__5_i_1_n_0\,
      S(2) => \grp_fu_448_p2_carry__5_i_2_n_0\,
      S(1) => \grp_fu_448_p2_carry__5_i_3_n_0\,
      S(0) => \grp_fu_448_p2_carry__5_i_4_n_0\
    );
\grp_fu_448_p2_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(28),
      O => \grp_fu_448_p2_carry__5_i_1_n_0\
    );
\grp_fu_448_p2_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(27),
      O => \grp_fu_448_p2_carry__5_i_2_n_0\
    );
\grp_fu_448_p2_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(26),
      O => \grp_fu_448_p2_carry__5_i_3_n_0\
    );
\grp_fu_448_p2_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(25),
      O => \grp_fu_448_p2_carry__5_i_4_n_0\
    );
\grp_fu_448_p2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \grp_fu_448_p2_carry__5_n_0\,
      CO(3 downto 2) => \NLW_grp_fu_448_p2_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \grp_fu_448_p2_carry__6_n_2\,
      CO(0) => \grp_fu_448_p2_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => width(30 downto 29),
      O(3) => \NLW_grp_fu_448_p2_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => grp_fu_448_p2(31 downto 29),
      S(3) => '0',
      S(2) => \grp_fu_448_p2_carry__6_i_1_n_0\,
      S(1) => \grp_fu_448_p2_carry__6_i_2_n_0\,
      S(0) => \grp_fu_448_p2_carry__6_i_3_n_0\
    );
\grp_fu_448_p2_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(31),
      O => \grp_fu_448_p2_carry__6_i_1_n_0\
    );
\grp_fu_448_p2_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(30),
      O => \grp_fu_448_p2_carry__6_i_2_n_0\
    );
\grp_fu_448_p2_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(29),
      O => \grp_fu_448_p2_carry__6_i_3_n_0\
    );
grp_fu_448_p2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(4),
      O => grp_fu_448_p2_carry_i_1_n_0
    );
grp_fu_448_p2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(3),
      O => grp_fu_448_p2_carry_i_2_n_0
    );
grp_fu_448_p2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(2),
      O => grp_fu_448_p2_carry_i_3_n_0
    );
grp_fu_448_p2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => width(1),
      O => grp_fu_448_p2_carry_i_4_n_0
    );
grp_fu_453_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => grp_fu_453_p2_carry_n_0,
      CO(2) => grp_fu_453_p2_carry_n_1,
      CO(1) => grp_fu_453_p2_carry_n_2,
      CO(0) => grp_fu_453_p2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_grp_fu_453_p2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => grp_fu_453_p2_carry_i_1_n_0,
      S(2) => grp_fu_453_p2_carry_i_2_n_0,
      S(1) => grp_fu_453_p2_carry_i_3_n_0,
      S(0) => grp_fu_453_p2_carry_i_4_n_0
    );
\grp_fu_453_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => grp_fu_453_p2_carry_n_0,
      CO(3) => \grp_fu_453_p2_carry__0_n_0\,
      CO(2) => \grp_fu_453_p2_carry__0_n_1\,
      CO(1) => \grp_fu_453_p2_carry__0_n_2\,
      CO(0) => \grp_fu_453_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_grp_fu_453_p2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \grp_fu_453_p2_carry__0_i_1_n_0\,
      S(2) => \grp_fu_453_p2_carry__0_i_2_n_0\,
      S(1) => \grp_fu_453_p2_carry__0_i_3_n_0\,
      S(0) => \grp_fu_453_p2_carry__0_i_4_n_0\
    );
\grp_fu_453_p2_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => grp_fu_448_p2(21),
      I1 => p_current_x_cord_load_reg_1099(21),
      I2 => grp_fu_448_p2(22),
      I3 => p_current_x_cord_load_reg_1099(22),
      I4 => p_current_x_cord_load_reg_1099(23),
      I5 => grp_fu_448_p2(23),
      O => \grp_fu_453_p2_carry__0_i_1_n_0\
    );
\grp_fu_453_p2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => grp_fu_448_p2(18),
      I1 => p_current_x_cord_load_reg_1099(18),
      I2 => grp_fu_448_p2(20),
      I3 => p_current_x_cord_load_reg_1099(20),
      I4 => p_current_x_cord_load_reg_1099(19),
      I5 => grp_fu_448_p2(19),
      O => \grp_fu_453_p2_carry__0_i_2_n_0\
    );
\grp_fu_453_p2_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => grp_fu_448_p2(15),
      I1 => p_current_x_cord_load_reg_1099(15),
      I2 => grp_fu_448_p2(17),
      I3 => p_current_x_cord_load_reg_1099(17),
      I4 => p_current_x_cord_load_reg_1099(16),
      I5 => grp_fu_448_p2(16),
      O => \grp_fu_453_p2_carry__0_i_3_n_0\
    );
\grp_fu_453_p2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => grp_fu_448_p2(13),
      I1 => p_current_x_cord_load_reg_1099(13),
      I2 => grp_fu_448_p2(14),
      I3 => p_current_x_cord_load_reg_1099(14),
      I4 => p_current_x_cord_load_reg_1099(12),
      I5 => grp_fu_448_p2(12),
      O => \grp_fu_453_p2_carry__0_i_4_n_0\
    );
\grp_fu_453_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \grp_fu_453_p2_carry__0_n_0\,
      CO(3) => \NLW_grp_fu_453_p2_carry__1_CO_UNCONNECTED\(3),
      CO(2) => p_0_in,
      CO(1) => \grp_fu_453_p2_carry__1_n_2\,
      CO(0) => \grp_fu_453_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_grp_fu_453_p2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \grp_fu_453_p2_carry__1_i_1_n_0\,
      S(1) => \grp_fu_453_p2_carry__1_i_2_n_0\,
      S(0) => \grp_fu_453_p2_carry__1_i_3_n_0\
    );
\grp_fu_453_p2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(31),
      I1 => grp_fu_448_p2(31),
      I2 => p_current_x_cord_load_reg_1099(30),
      I3 => grp_fu_448_p2(30),
      O => \grp_fu_453_p2_carry__1_i_1_n_0\
    );
\grp_fu_453_p2_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => grp_fu_448_p2(27),
      I1 => p_current_x_cord_load_reg_1099(27),
      I2 => grp_fu_448_p2(29),
      I3 => p_current_x_cord_load_reg_1099(29),
      I4 => p_current_x_cord_load_reg_1099(28),
      I5 => grp_fu_448_p2(28),
      O => \grp_fu_453_p2_carry__1_i_2_n_0\
    );
\grp_fu_453_p2_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => grp_fu_448_p2(24),
      I1 => p_current_x_cord_load_reg_1099(24),
      I2 => grp_fu_448_p2(25),
      I3 => p_current_x_cord_load_reg_1099(25),
      I4 => p_current_x_cord_load_reg_1099(26),
      I5 => grp_fu_448_p2(26),
      O => \grp_fu_453_p2_carry__1_i_3_n_0\
    );
grp_fu_453_p2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => grp_fu_448_p2(10),
      I1 => p_current_x_cord_load_reg_1099(10),
      I2 => grp_fu_448_p2(11),
      I3 => p_current_x_cord_load_reg_1099(11),
      I4 => p_current_x_cord_load_reg_1099(9),
      I5 => grp_fu_448_p2(9),
      O => grp_fu_453_p2_carry_i_1_n_0
    );
grp_fu_453_p2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => grp_fu_448_p2(7),
      I1 => p_current_x_cord_load_reg_1099(7),
      I2 => grp_fu_448_p2(8),
      I3 => p_current_x_cord_load_reg_1099(8),
      I4 => p_current_x_cord_load_reg_1099(6),
      I5 => grp_fu_448_p2(6),
      O => grp_fu_453_p2_carry_i_2_n_0
    );
grp_fu_453_p2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => grp_fu_448_p2(4),
      I1 => p_current_x_cord_load_reg_1099(4),
      I2 => grp_fu_448_p2(5),
      I3 => p_current_x_cord_load_reg_1099(5),
      I4 => p_current_x_cord_load_reg_1099(3),
      I5 => grp_fu_448_p2(3),
      O => grp_fu_453_p2_carry_i_3_n_0
    );
grp_fu_453_p2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(0),
      I1 => width(0),
      I2 => grp_fu_448_p2(1),
      I3 => p_current_x_cord_load_reg_1099(1),
      I4 => grp_fu_448_p2(2),
      I5 => p_current_x_cord_load_reg_1099(2),
      O => grp_fu_453_p2_carry_i_4_n_0
    );
\height_upper_edge_lo_reg_1147[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(0),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(0),
      O => height_upper_edge_lo_fu_518_p3(0)
    );
\height_upper_edge_lo_reg_1147[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(10),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(10),
      O => height_upper_edge_lo_fu_518_p3(10)
    );
\height_upper_edge_lo_reg_1147[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(11),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(11),
      O => height_upper_edge_lo_fu_518_p3(11)
    );
\height_upper_edge_lo_reg_1147[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(12),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(12),
      O => height_upper_edge_lo_fu_518_p3(12)
    );
\height_upper_edge_lo_reg_1147[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(13),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(13),
      O => height_upper_edge_lo_fu_518_p3(13)
    );
\height_upper_edge_lo_reg_1147[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(14),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(14),
      O => height_upper_edge_lo_fu_518_p3(14)
    );
\height_upper_edge_lo_reg_1147[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(15),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(15),
      O => height_upper_edge_lo_fu_518_p3(15)
    );
\height_upper_edge_lo_reg_1147[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(16),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(16),
      O => height_upper_edge_lo_fu_518_p3(16)
    );
\height_upper_edge_lo_reg_1147[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(17),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(17),
      O => height_upper_edge_lo_fu_518_p3(17)
    );
\height_upper_edge_lo_reg_1147[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(18),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(18),
      O => height_upper_edge_lo_fu_518_p3(18)
    );
\height_upper_edge_lo_reg_1147[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(19),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(19),
      O => height_upper_edge_lo_fu_518_p3(19)
    );
\height_upper_edge_lo_reg_1147[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(1),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(1),
      O => height_upper_edge_lo_fu_518_p3(1)
    );
\height_upper_edge_lo_reg_1147[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(20),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(20),
      O => height_upper_edge_lo_fu_518_p3(20)
    );
\height_upper_edge_lo_reg_1147[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(21),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(21),
      O => height_upper_edge_lo_fu_518_p3(21)
    );
\height_upper_edge_lo_reg_1147[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(22),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(22),
      O => height_upper_edge_lo_fu_518_p3(22)
    );
\height_upper_edge_lo_reg_1147[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(23),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(23),
      O => height_upper_edge_lo_fu_518_p3(23)
    );
\height_upper_edge_lo_reg_1147[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(24),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(24),
      O => height_upper_edge_lo_fu_518_p3(24)
    );
\height_upper_edge_lo_reg_1147[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(25),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(25),
      O => height_upper_edge_lo_fu_518_p3(25)
    );
\height_upper_edge_lo_reg_1147[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(26),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(26),
      O => height_upper_edge_lo_fu_518_p3(26)
    );
\height_upper_edge_lo_reg_1147[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(27),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(27),
      O => height_upper_edge_lo_fu_518_p3(27)
    );
\height_upper_edge_lo_reg_1147[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(28),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(28),
      O => height_upper_edge_lo_fu_518_p3(28)
    );
\height_upper_edge_lo_reg_1147[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(29),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(29),
      O => height_upper_edge_lo_fu_518_p3(29)
    );
\height_upper_edge_lo_reg_1147[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(2),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(2),
      O => height_upper_edge_lo_fu_518_p3(2)
    );
\height_upper_edge_lo_reg_1147[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(30),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(30),
      O => height_upper_edge_lo_fu_518_p3(30)
    );
\height_upper_edge_lo_reg_1147[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(31),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(31),
      O => height_upper_edge_lo_fu_518_p3(31)
    );
\height_upper_edge_lo_reg_1147[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(3),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(3),
      O => height_upper_edge_lo_fu_518_p3(3)
    );
\height_upper_edge_lo_reg_1147[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(4),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(4),
      O => height_upper_edge_lo_fu_518_p3(4)
    );
\height_upper_edge_lo_reg_1147[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(5),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(5),
      O => height_upper_edge_lo_fu_518_p3(5)
    );
\height_upper_edge_lo_reg_1147[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(6),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(6),
      O => height_upper_edge_lo_fu_518_p3(6)
    );
\height_upper_edge_lo_reg_1147[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(7),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(7),
      O => height_upper_edge_lo_fu_518_p3(7)
    );
\height_upper_edge_lo_reg_1147[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(8),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(8),
      O => height_upper_edge_lo_fu_518_p3(8)
    );
\height_upper_edge_lo_reg_1147[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => height(9),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(9),
      O => height_upper_edge_lo_fu_518_p3(9)
    );
\height_upper_edge_lo_reg_1147_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(0),
      Q => height_upper_edge_lo_reg_1147(0),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(10),
      Q => height_upper_edge_lo_reg_1147(10),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(11),
      Q => height_upper_edge_lo_reg_1147(11),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(12),
      Q => height_upper_edge_lo_reg_1147(12),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(13),
      Q => height_upper_edge_lo_reg_1147(13),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(14),
      Q => height_upper_edge_lo_reg_1147(14),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(15),
      Q => height_upper_edge_lo_reg_1147(15),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(16),
      Q => height_upper_edge_lo_reg_1147(16),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(17),
      Q => height_upper_edge_lo_reg_1147(17),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(18),
      Q => height_upper_edge_lo_reg_1147(18),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(19),
      Q => height_upper_edge_lo_reg_1147(19),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(1),
      Q => height_upper_edge_lo_reg_1147(1),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(20),
      Q => height_upper_edge_lo_reg_1147(20),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(21),
      Q => height_upper_edge_lo_reg_1147(21),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(22),
      Q => height_upper_edge_lo_reg_1147(22),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(23),
      Q => height_upper_edge_lo_reg_1147(23),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(24),
      Q => height_upper_edge_lo_reg_1147(24),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(25),
      Q => height_upper_edge_lo_reg_1147(25),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(26),
      Q => height_upper_edge_lo_reg_1147(26),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(27),
      Q => height_upper_edge_lo_reg_1147(27),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(28),
      Q => height_upper_edge_lo_reg_1147(28),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(29),
      Q => height_upper_edge_lo_reg_1147(29),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(2),
      Q => height_upper_edge_lo_reg_1147(2),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(30),
      Q => height_upper_edge_lo_reg_1147(30),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(31),
      Q => height_upper_edge_lo_reg_1147(31),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(3),
      Q => height_upper_edge_lo_reg_1147(3),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(4),
      Q => height_upper_edge_lo_reg_1147(4),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(5),
      Q => height_upper_edge_lo_reg_1147(5),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(6),
      Q => height_upper_edge_lo_reg_1147(6),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(7),
      Q => height_upper_edge_lo_reg_1147(7),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(8),
      Q => height_upper_edge_lo_reg_1147(8),
      R => '0'
    );
\height_upper_edge_lo_reg_1147_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => height_upper_edge_lo_fu_518_p3(9),
      Q => height_upper_edge_lo_reg_1147(9),
      R => '0'
    );
\led_exist_load_reg_1185_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => \^led_exist\,
      Q => led_exist_load_reg_1185,
      R => '0'
    );
\led_exist_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \led_exist_reg[0]_5\,
      Q => \^led_exist\,
      R => '0'
    );
\left_edge[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(0),
      I3 => left_edge_new_3_reg_374(0),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(0)
    );
\left_edge[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(10),
      I3 => left_edge_new_3_reg_374(10),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(10)
    );
\left_edge[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(11),
      I3 => left_edge_new_3_reg_374(11),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(11)
    );
\left_edge[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(12),
      I3 => left_edge_new_3_reg_374(12),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(12)
    );
\left_edge[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(13),
      I3 => left_edge_new_3_reg_374(13),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(13)
    );
\left_edge[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(14),
      I3 => left_edge_new_3_reg_374(14),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(14)
    );
\left_edge[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(15),
      I3 => left_edge_new_3_reg_374(15),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(15)
    );
\left_edge[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(16),
      I3 => left_edge_new_3_reg_374(16),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(16)
    );
\left_edge[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(17),
      I3 => left_edge_new_3_reg_374(17),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(17)
    );
\left_edge[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(18),
      I3 => left_edge_new_3_reg_374(18),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(18)
    );
\left_edge[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(19),
      I3 => left_edge_new_3_reg_374(19),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(19)
    );
\left_edge[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(1),
      I3 => left_edge_new_3_reg_374(1),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(1)
    );
\left_edge[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(20),
      I3 => left_edge_new_3_reg_374(20),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(20)
    );
\left_edge[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(21),
      I3 => left_edge_new_3_reg_374(21),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(21)
    );
\left_edge[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(22),
      I3 => left_edge_new_3_reg_374(22),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(22)
    );
\left_edge[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(23),
      I3 => left_edge_new_3_reg_374(23),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(23)
    );
\left_edge[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(24),
      I3 => left_edge_new_3_reg_374(24),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(24)
    );
\left_edge[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(25),
      I3 => left_edge_new_3_reg_374(25),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(25)
    );
\left_edge[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(26),
      I3 => left_edge_new_3_reg_374(26),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(26)
    );
\left_edge[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(27),
      I3 => left_edge_new_3_reg_374(27),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(27)
    );
\left_edge[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(28),
      I3 => left_edge_new_3_reg_374(28),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(28)
    );
\left_edge[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(29),
      I3 => left_edge_new_3_reg_374(29),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(29)
    );
\left_edge[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(2),
      I3 => left_edge_new_3_reg_374(2),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(2)
    );
\left_edge[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(30),
      I3 => left_edge_new_3_reg_374(30),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(30)
    );
\left_edge[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0807000"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \ap_CS_fsm[0]_i_1_n_0\,
      I3 => left_edge_flag_3_reg_364,
      I4 => left_edge_flag_2_reg_203,
      O => left_edge0
    );
\left_edge[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(31),
      I3 => left_edge_new_3_reg_374(31),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(31)
    );
\left_edge[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(3),
      I3 => left_edge_new_3_reg_374(3),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(3)
    );
\left_edge[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(4),
      I3 => left_edge_new_3_reg_374(4),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(4)
    );
\left_edge[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(5),
      I3 => left_edge_new_3_reg_374(5),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(5)
    );
\left_edge[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(6),
      I3 => left_edge_new_3_reg_374(6),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(6)
    );
\left_edge[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(7),
      I3 => left_edge_new_3_reg_374(7),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(7)
    );
\left_edge[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(8),
      I3 => left_edge_new_3_reg_374(8),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(8)
    );
\left_edge[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => left_edge_new_2_reg_213(9),
      I3 => left_edge_new_3_reg_374(9),
      O => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(9)
    );
\left_edge_flag_2_reg_203[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => tmp_4_fu_488_p2,
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => tmp_4_reg_1124,
      I3 => p_0_in1_in,
      O => \left_edge_flag_2_reg_203[0]_i_1_n_0\
    );
\left_edge_flag_2_reg_203_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_flag_2_reg_203[0]_i_1_n_0\,
      Q => left_edge_flag_2_reg_203,
      R => '0'
    );
\left_edge_flag_3_reg_364[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => tmp_4_fu_488_p2,
      I3 => left_edge_flag_2_reg_203,
      O => \left_edge_flag_3_reg_364[0]_i_1_n_0\
    );
\left_edge_flag_3_reg_364_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_flag_3_reg_364[0]_i_1_n_0\,
      Q => left_edge_flag_3_reg_364,
      R => '0'
    );
\left_edge_loc_2_reg_223[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(0),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(0),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(0),
      O => \left_edge_loc_2_reg_223[0]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(0),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(0),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(0),
      O => \tmp_33_fu_831_p1__0\(0)
    );
\left_edge_loc_2_reg_223[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(10),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(10),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(10),
      O => \left_edge_loc_2_reg_223[10]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(10),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(10),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(10),
      O => \tmp_33_fu_831_p1__0\(10)
    );
\left_edge_loc_2_reg_223[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(11),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(11),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(11),
      O => \left_edge_loc_2_reg_223[11]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(11),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(11),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(11),
      O => \tmp_33_fu_831_p1__0\(11)
    );
\left_edge_loc_2_reg_223[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(12),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(12),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(12),
      O => \left_edge_loc_2_reg_223[12]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(12),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(12),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(12),
      O => \tmp_33_fu_831_p1__0\(12)
    );
\left_edge_loc_2_reg_223[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(13),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(13),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(13),
      O => \left_edge_loc_2_reg_223[13]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(13),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(13),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(13),
      O => \tmp_33_fu_831_p1__0\(13)
    );
\left_edge_loc_2_reg_223[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(14),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(14),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(14),
      O => \left_edge_loc_2_reg_223[14]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(14),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(14),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(14),
      O => \tmp_33_fu_831_p1__0\(14)
    );
\left_edge_loc_2_reg_223[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(15),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(15),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(15),
      O => \left_edge_loc_2_reg_223[15]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(15),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(15),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(15),
      O => \tmp_33_fu_831_p1__0\(15)
    );
\left_edge_loc_2_reg_223[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(16),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(16),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(16),
      O => \left_edge_loc_2_reg_223[16]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(16),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(16),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(16),
      O => tmp_33_fu_831_p1(16)
    );
\left_edge_loc_2_reg_223[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(17),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(17),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(17),
      O => \left_edge_loc_2_reg_223[17]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(17),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(17),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(17),
      O => tmp_33_fu_831_p1(17)
    );
\left_edge_loc_2_reg_223[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(18),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(18),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(18),
      O => \left_edge_loc_2_reg_223[18]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(18),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(18),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(18),
      O => tmp_33_fu_831_p1(18)
    );
\left_edge_loc_2_reg_223[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(19),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(19),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(19),
      O => \left_edge_loc_2_reg_223[19]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(19),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(19),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(19),
      O => tmp_33_fu_831_p1(19)
    );
\left_edge_loc_2_reg_223[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(1),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(1),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(1),
      O => \left_edge_loc_2_reg_223[1]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(1),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(1),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(1),
      O => \tmp_33_fu_831_p1__0\(1)
    );
\left_edge_loc_2_reg_223[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(20),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(20),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(20),
      O => \left_edge_loc_2_reg_223[20]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(20),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(20),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(20),
      O => tmp_33_fu_831_p1(20)
    );
\left_edge_loc_2_reg_223[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(21),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(21),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(21),
      O => \left_edge_loc_2_reg_223[21]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(21),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(21),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(21),
      O => tmp_33_fu_831_p1(21)
    );
\left_edge_loc_2_reg_223[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(22),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(22),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(22),
      O => \left_edge_loc_2_reg_223[22]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(22),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(22),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(22),
      O => tmp_33_fu_831_p1(22)
    );
\left_edge_loc_2_reg_223[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(23),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(23),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(23),
      O => \left_edge_loc_2_reg_223[23]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(23),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(23),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(23),
      O => tmp_33_fu_831_p1(23)
    );
\left_edge_loc_2_reg_223[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(24),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(24),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(24),
      O => \left_edge_loc_2_reg_223[24]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(24),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(24),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(24),
      O => tmp_33_fu_831_p1(24)
    );
\left_edge_loc_2_reg_223[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(25),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(25),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(25),
      O => \left_edge_loc_2_reg_223[25]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(25),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(25),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(25),
      O => tmp_33_fu_831_p1(25)
    );
\left_edge_loc_2_reg_223[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(26),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(26),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(26),
      O => \left_edge_loc_2_reg_223[26]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(26),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(26),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(26),
      O => tmp_33_fu_831_p1(26)
    );
\left_edge_loc_2_reg_223[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(27),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(27),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(27),
      O => \left_edge_loc_2_reg_223[27]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(27),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(27),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(27),
      O => tmp_33_fu_831_p1(27)
    );
\left_edge_loc_2_reg_223[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(28),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(28),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(28),
      O => \left_edge_loc_2_reg_223[28]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(28),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(28),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(28),
      O => tmp_33_fu_831_p1(28)
    );
\left_edge_loc_2_reg_223[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(29),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(29),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(29),
      O => \left_edge_loc_2_reg_223[29]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(29),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(29),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(29),
      O => tmp_33_fu_831_p1(29)
    );
\left_edge_loc_2_reg_223[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(2),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(2),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(2),
      O => \left_edge_loc_2_reg_223[2]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(2),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(2),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(2),
      O => \tmp_33_fu_831_p1__0\(2)
    );
\left_edge_loc_2_reg_223[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(30),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(30),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_33_fu_831_p1(30),
      O => \left_edge_loc_2_reg_223[30]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(30),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(30),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(30),
      O => tmp_33_fu_831_p1(30)
    );
\left_edge_loc_2_reg_223[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(31),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(31),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \left_edge_loc_2_reg_223[31]_i_2_n_0\,
      O => \left_edge_loc_2_reg_223[31]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(31),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(31),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(31),
      O => \left_edge_loc_2_reg_223[31]_i_2_n_0\
    );
\left_edge_loc_2_reg_223[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(3),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(3),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(3),
      O => \left_edge_loc_2_reg_223[3]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(3),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(3),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(3),
      O => \tmp_33_fu_831_p1__0\(3)
    );
\left_edge_loc_2_reg_223[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(4),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(4),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(4),
      O => \left_edge_loc_2_reg_223[4]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(4),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(4),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(4),
      O => \tmp_33_fu_831_p1__0\(4)
    );
\left_edge_loc_2_reg_223[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(5),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(5),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(5),
      O => \left_edge_loc_2_reg_223[5]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(5),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(5),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(5),
      O => \tmp_33_fu_831_p1__0\(5)
    );
\left_edge_loc_2_reg_223[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(6),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(6),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(6),
      O => \left_edge_loc_2_reg_223[6]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(6),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(6),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(6),
      O => \tmp_33_fu_831_p1__0\(6)
    );
\left_edge_loc_2_reg_223[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(7),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(7),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(7),
      O => \left_edge_loc_2_reg_223[7]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(7),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(7),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(7),
      O => \tmp_33_fu_831_p1__0\(7)
    );
\left_edge_loc_2_reg_223[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(8),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(8),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(8),
      O => \left_edge_loc_2_reg_223[8]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(8),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(8),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(8),
      O => \tmp_33_fu_831_p1__0\(8)
    );
\left_edge_loc_2_reg_223[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => width(9),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(9),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_33_fu_831_p1__0\(9),
      O => \left_edge_loc_2_reg_223[9]_i_1_n_0\
    );
\left_edge_loc_2_reg_223[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(9),
      I1 => p_0_in1_in,
      I2 => width_left_edge_load_reg_1140(9),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => left_edge_loc_2_reg_223(9),
      O => \tmp_33_fu_831_p1__0\(9)
    );
\left_edge_loc_2_reg_223_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[0]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(0),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[10]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(10),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[11]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(11),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[12]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(12),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[13]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(13),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[14]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(14),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[15]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(15),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[16]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(16),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[17]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(17),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[18]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(18),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[19]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(19),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[1]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(1),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[20]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(20),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[21]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(21),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[22]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(22),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[23]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(23),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[24]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(24),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[25]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(25),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[26]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(26),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[27]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(27),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[28]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(28),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[29]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(29),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[2]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(2),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[30]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(30),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[31]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(31),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[3]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(3),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[4]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(4),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[5]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(5),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[6]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(6),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[7]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(7),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[8]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(8),
      R => '0'
    );
\left_edge_loc_2_reg_223_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \left_edge_loc_2_reg_223[9]_i_1_n_0\,
      Q => left_edge_loc_2_reg_223(9),
      R => '0'
    );
\left_edge_new_2_reg_213[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(0),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(0),
      O => \left_edge_new_2_reg_213[0]_i_1_n_0\
    );
\left_edge_new_2_reg_213[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(10),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(10),
      O => \left_edge_new_2_reg_213[10]_i_1_n_0\
    );
\left_edge_new_2_reg_213[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(11),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(11),
      O => \left_edge_new_2_reg_213[11]_i_1_n_0\
    );
\left_edge_new_2_reg_213[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(12),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(12),
      O => \left_edge_new_2_reg_213[12]_i_1_n_0\
    );
\left_edge_new_2_reg_213[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(13),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(13),
      O => \left_edge_new_2_reg_213[13]_i_1_n_0\
    );
\left_edge_new_2_reg_213[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(14),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(14),
      O => \left_edge_new_2_reg_213[14]_i_1_n_0\
    );
\left_edge_new_2_reg_213[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(15),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(15),
      O => \left_edge_new_2_reg_213[15]_i_1_n_0\
    );
\left_edge_new_2_reg_213[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(16),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(16),
      O => \left_edge_new_2_reg_213[16]_i_1_n_0\
    );
\left_edge_new_2_reg_213[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(17),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(17),
      O => \left_edge_new_2_reg_213[17]_i_1_n_0\
    );
\left_edge_new_2_reg_213[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(18),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(18),
      O => \left_edge_new_2_reg_213[18]_i_1_n_0\
    );
\left_edge_new_2_reg_213[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(19),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(19),
      O => \left_edge_new_2_reg_213[19]_i_1_n_0\
    );
\left_edge_new_2_reg_213[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(1),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(1),
      O => \left_edge_new_2_reg_213[1]_i_1_n_0\
    );
\left_edge_new_2_reg_213[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(20),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(20),
      O => \left_edge_new_2_reg_213[20]_i_1_n_0\
    );
\left_edge_new_2_reg_213[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(21),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(21),
      O => \left_edge_new_2_reg_213[21]_i_1_n_0\
    );
\left_edge_new_2_reg_213[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(22),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(22),
      O => \left_edge_new_2_reg_213[22]_i_1_n_0\
    );
\left_edge_new_2_reg_213[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(23),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(23),
      O => \left_edge_new_2_reg_213[23]_i_1_n_0\
    );
\left_edge_new_2_reg_213[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(24),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(24),
      O => \left_edge_new_2_reg_213[24]_i_1_n_0\
    );
\left_edge_new_2_reg_213[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(25),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(25),
      O => \left_edge_new_2_reg_213[25]_i_1_n_0\
    );
\left_edge_new_2_reg_213[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(26),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(26),
      O => \left_edge_new_2_reg_213[26]_i_1_n_0\
    );
\left_edge_new_2_reg_213[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(27),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(27),
      O => \left_edge_new_2_reg_213[27]_i_1_n_0\
    );
\left_edge_new_2_reg_213[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(28),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(28),
      O => \left_edge_new_2_reg_213[28]_i_1_n_0\
    );
\left_edge_new_2_reg_213[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(29),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(29),
      O => \left_edge_new_2_reg_213[29]_i_1_n_0\
    );
\left_edge_new_2_reg_213[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(2),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(2),
      O => \left_edge_new_2_reg_213[2]_i_1_n_0\
    );
\left_edge_new_2_reg_213[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(30),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(30),
      O => \left_edge_new_2_reg_213[30]_i_1_n_0\
    );
\left_edge_new_2_reg_213[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(31),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(31),
      O => \left_edge_new_2_reg_213[31]_i_1_n_0\
    );
\left_edge_new_2_reg_213[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(3),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(3),
      O => \left_edge_new_2_reg_213[3]_i_1_n_0\
    );
\left_edge_new_2_reg_213[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(4),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(4),
      O => \left_edge_new_2_reg_213[4]_i_1_n_0\
    );
\left_edge_new_2_reg_213[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(5),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(5),
      O => \left_edge_new_2_reg_213[5]_i_1_n_0\
    );
\left_edge_new_2_reg_213[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(6),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(6),
      O => \left_edge_new_2_reg_213[6]_i_1_n_0\
    );
\left_edge_new_2_reg_213[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(7),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(7),
      O => \left_edge_new_2_reg_213[7]_i_1_n_0\
    );
\left_edge_new_2_reg_213[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(8),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(8),
      O => \left_edge_new_2_reg_213[8]_i_1_n_0\
    );
\left_edge_new_2_reg_213[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => width(9),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => p_0_in1_in,
      I3 => p_current_x_cord_load_reg_1099(9),
      O => \left_edge_new_2_reg_213[9]_i_1_n_0\
    );
\left_edge_new_2_reg_213_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[0]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(0),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[10]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(10),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[11]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(11),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[12]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(12),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[13]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(13),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[14]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(14),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[15]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(15),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[16]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(16),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[17]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(17),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[18]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(18),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[19]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(19),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[1]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(1),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[20]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(20),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[21]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(21),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[22]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(22),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[23]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(23),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[24]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(24),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[25]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(25),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[26]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(26),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[27]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(27),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[28]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(28),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[29]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(29),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[2]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(2),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[30]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(30),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[31]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(31),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[3]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(3),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[4]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(4),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[5]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(5),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[6]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(6),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[7]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(7),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[8]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(8),
      R => '0'
    );
\left_edge_new_2_reg_213_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \left_edge_new_2_reg_213[9]_i_1_n_0\,
      Q => left_edge_new_2_reg_213(9),
      R => '0'
    );
\left_edge_new_3_reg_374[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(0),
      I3 => left_edge_new_2_reg_213(0),
      O => \left_edge_new_3_reg_374[0]_i_1_n_0\
    );
\left_edge_new_3_reg_374[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(10),
      I3 => left_edge_new_2_reg_213(10),
      O => \left_edge_new_3_reg_374[10]_i_1_n_0\
    );
\left_edge_new_3_reg_374[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(11),
      I3 => left_edge_new_2_reg_213(11),
      O => \left_edge_new_3_reg_374[11]_i_1_n_0\
    );
\left_edge_new_3_reg_374[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(12),
      I3 => left_edge_new_2_reg_213(12),
      O => \left_edge_new_3_reg_374[12]_i_1_n_0\
    );
\left_edge_new_3_reg_374[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(13),
      I3 => left_edge_new_2_reg_213(13),
      O => \left_edge_new_3_reg_374[13]_i_1_n_0\
    );
\left_edge_new_3_reg_374[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(14),
      I3 => left_edge_new_2_reg_213(14),
      O => \left_edge_new_3_reg_374[14]_i_1_n_0\
    );
\left_edge_new_3_reg_374[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(15),
      I3 => left_edge_new_2_reg_213(15),
      O => \left_edge_new_3_reg_374[15]_i_1_n_0\
    );
\left_edge_new_3_reg_374[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(16),
      I3 => left_edge_new_2_reg_213(16),
      O => \left_edge_new_3_reg_374[16]_i_1_n_0\
    );
\left_edge_new_3_reg_374[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(17),
      I3 => left_edge_new_2_reg_213(17),
      O => \left_edge_new_3_reg_374[17]_i_1_n_0\
    );
\left_edge_new_3_reg_374[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(18),
      I3 => left_edge_new_2_reg_213(18),
      O => \left_edge_new_3_reg_374[18]_i_1_n_0\
    );
\left_edge_new_3_reg_374[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(19),
      I3 => left_edge_new_2_reg_213(19),
      O => \left_edge_new_3_reg_374[19]_i_1_n_0\
    );
\left_edge_new_3_reg_374[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(1),
      I3 => left_edge_new_2_reg_213(1),
      O => \left_edge_new_3_reg_374[1]_i_1_n_0\
    );
\left_edge_new_3_reg_374[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(20),
      I3 => left_edge_new_2_reg_213(20),
      O => \left_edge_new_3_reg_374[20]_i_1_n_0\
    );
\left_edge_new_3_reg_374[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(21),
      I3 => left_edge_new_2_reg_213(21),
      O => \left_edge_new_3_reg_374[21]_i_1_n_0\
    );
\left_edge_new_3_reg_374[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(22),
      I3 => left_edge_new_2_reg_213(22),
      O => \left_edge_new_3_reg_374[22]_i_1_n_0\
    );
\left_edge_new_3_reg_374[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(23),
      I3 => left_edge_new_2_reg_213(23),
      O => \left_edge_new_3_reg_374[23]_i_1_n_0\
    );
\left_edge_new_3_reg_374[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(24),
      I3 => left_edge_new_2_reg_213(24),
      O => \left_edge_new_3_reg_374[24]_i_1_n_0\
    );
\left_edge_new_3_reg_374[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(25),
      I3 => left_edge_new_2_reg_213(25),
      O => \left_edge_new_3_reg_374[25]_i_1_n_0\
    );
\left_edge_new_3_reg_374[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(26),
      I3 => left_edge_new_2_reg_213(26),
      O => \left_edge_new_3_reg_374[26]_i_1_n_0\
    );
\left_edge_new_3_reg_374[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(27),
      I3 => left_edge_new_2_reg_213(27),
      O => \left_edge_new_3_reg_374[27]_i_1_n_0\
    );
\left_edge_new_3_reg_374[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(28),
      I3 => left_edge_new_2_reg_213(28),
      O => \left_edge_new_3_reg_374[28]_i_1_n_0\
    );
\left_edge_new_3_reg_374[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(29),
      I3 => left_edge_new_2_reg_213(29),
      O => \left_edge_new_3_reg_374[29]_i_1_n_0\
    );
\left_edge_new_3_reg_374[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(2),
      I3 => left_edge_new_2_reg_213(2),
      O => \left_edge_new_3_reg_374[2]_i_1_n_0\
    );
\left_edge_new_3_reg_374[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(30),
      I3 => left_edge_new_2_reg_213(30),
      O => \left_edge_new_3_reg_374[30]_i_1_n_0\
    );
\left_edge_new_3_reg_374[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(31),
      I3 => left_edge_new_2_reg_213(31),
      O => \left_edge_new_3_reg_374[31]_i_1_n_0\
    );
\left_edge_new_3_reg_374[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(3),
      I3 => left_edge_new_2_reg_213(3),
      O => \left_edge_new_3_reg_374[3]_i_1_n_0\
    );
\left_edge_new_3_reg_374[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(4),
      I3 => left_edge_new_2_reg_213(4),
      O => \left_edge_new_3_reg_374[4]_i_1_n_0\
    );
\left_edge_new_3_reg_374[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(5),
      I3 => left_edge_new_2_reg_213(5),
      O => \left_edge_new_3_reg_374[5]_i_1_n_0\
    );
\left_edge_new_3_reg_374[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(6),
      I3 => left_edge_new_2_reg_213(6),
      O => \left_edge_new_3_reg_374[6]_i_1_n_0\
    );
\left_edge_new_3_reg_374[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(7),
      I3 => left_edge_new_2_reg_213(7),
      O => \left_edge_new_3_reg_374[7]_i_1_n_0\
    );
\left_edge_new_3_reg_374[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(8),
      I3 => left_edge_new_2_reg_213(8),
      O => \left_edge_new_3_reg_374[8]_i_1_n_0\
    );
\left_edge_new_3_reg_374[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => width(9),
      I3 => left_edge_new_2_reg_213(9),
      O => \left_edge_new_3_reg_374[9]_i_1_n_0\
    );
\left_edge_new_3_reg_374_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[0]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(0),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[10]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(10),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[11]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(11),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[12]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(12),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[13]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(13),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[14]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(14),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[15]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(15),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[16]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(16),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[17]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(17),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[18]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(18),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[19]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(19),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[1]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(1),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[20]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(20),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[21]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(21),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[22]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(22),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[23]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(23),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[24]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(24),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[25]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(25),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[26]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(26),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[27]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(27),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[28]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(28),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[29]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(29),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[2]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(2),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[30]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(30),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[31]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(31),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[3]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(3),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[4]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(4),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[5]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(5),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[6]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(6),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[7]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(7),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[8]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(8),
      R => '0'
    );
\left_edge_new_3_reg_374_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \left_edge_new_3_reg_374[9]_i_1_n_0\,
      Q => left_edge_new_3_reg_374(9),
      R => '0'
    );
\left_edge_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(0),
      Q => left_edge(0),
      R => '0'
    );
\left_edge_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(10),
      Q => left_edge(10),
      R => '0'
    );
\left_edge_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(11),
      Q => left_edge(11),
      R => '0'
    );
\left_edge_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(12),
      Q => left_edge(12),
      R => '0'
    );
\left_edge_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(13),
      Q => left_edge(13),
      R => '0'
    );
\left_edge_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(14),
      Q => left_edge(14),
      R => '0'
    );
\left_edge_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(15),
      Q => left_edge(15),
      R => '0'
    );
\left_edge_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(16),
      Q => left_edge(16),
      R => '0'
    );
\left_edge_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(17),
      Q => left_edge(17),
      R => '0'
    );
\left_edge_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(18),
      Q => left_edge(18),
      R => '0'
    );
\left_edge_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(19),
      Q => left_edge(19),
      R => '0'
    );
\left_edge_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(1),
      Q => left_edge(1),
      R => '0'
    );
\left_edge_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(20),
      Q => left_edge(20),
      R => '0'
    );
\left_edge_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(21),
      Q => left_edge(21),
      R => '0'
    );
\left_edge_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(22),
      Q => left_edge(22),
      R => '0'
    );
\left_edge_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(23),
      Q => left_edge(23),
      R => '0'
    );
\left_edge_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(24),
      Q => left_edge(24),
      R => '0'
    );
\left_edge_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(25),
      Q => left_edge(25),
      R => '0'
    );
\left_edge_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(26),
      Q => left_edge(26),
      R => '0'
    );
\left_edge_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(27),
      Q => left_edge(27),
      R => '0'
    );
\left_edge_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(28),
      Q => left_edge(28),
      R => '0'
    );
\left_edge_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(29),
      Q => left_edge(29),
      R => '0'
    );
\left_edge_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(2),
      Q => left_edge(2),
      R => '0'
    );
\left_edge_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(30),
      Q => left_edge(30),
      R => '0'
    );
\left_edge_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(31),
      Q => left_edge(31),
      R => '0'
    );
\left_edge_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(3),
      Q => left_edge(3),
      R => '0'
    );
\left_edge_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(4),
      Q => left_edge(4),
      R => '0'
    );
\left_edge_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(5),
      Q => left_edge(5),
      R => '0'
    );
\left_edge_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(6),
      Q => left_edge(6),
      R => '0'
    );
\left_edge_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(7),
      Q => left_edge(7),
      R => '0'
    );
\left_edge_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(8),
      Q => left_edge(8),
      R => '0'
    );
\left_edge_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => left_edge0,
      D => ap_phi_mux_left_edge_new_3_phi_fu_377_p4(9),
      Q => left_edge(9),
      R => '0'
    );
\or_cond_7_reg_1172_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state_reg[0]_0\,
      Q => \^or_cond_7_reg_1172\,
      R => '0'
    );
other1_below_fu_669_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \led_exist_reg[0]_0\(0),
      CO(2) => other1_below_fu_669_p2_carry_n_1,
      CO(1) => other1_below_fu_669_p2_carry_n_2,
      CO(0) => other1_below_fu_669_p2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \data_p1_reg[15]\(3 downto 0),
      O(3 downto 0) => NLW_other1_below_fu_669_p2_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \data_p1_reg[23]\(3 downto 0)
    );
other2_below_fu_663_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \led_exist_reg[0]_1\(0),
      CO(2) => other2_below_fu_663_p2_carry_n_1,
      CO(1) => other2_below_fu_663_p2_carry_n_2,
      CO(0) => other2_below_fu_663_p2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \data_p1_reg[6]\(3 downto 0),
      O(3 downto 0) => NLW_other2_below_fu_663_p2_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => \data_p1_reg[14]\(3 downto 0)
    );
other2_below_fu_663_p2_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => other2_below_fu_663_p2_carry_i_18_n_0,
      I1 => target_color(0),
      I2 => target_color(1),
      I3 => target_color(3),
      I4 => target_color(2),
      O => \led_exist_reg[0]_3\
    );
other2_below_fu_663_p2_carry_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => target_color(7),
      I1 => target_color(6),
      I2 => target_color(4),
      I3 => target_color(5),
      O => other2_below_fu_663_p2_carry_i_18_n_0
    );
\p_4_reg_1204[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(0),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(0),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(0),
      O => tmp_29_fu_797_p1(0)
    );
\p_4_reg_1204[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(10),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(10),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(10),
      O => tmp_29_fu_797_p1(10)
    );
\p_4_reg_1204[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(11),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(11),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(11),
      O => tmp_29_fu_797_p1(11)
    );
\p_4_reg_1204[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(12),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(12),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(12),
      O => tmp_29_fu_797_p1(12)
    );
\p_4_reg_1204[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(13),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(13),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(13),
      O => tmp_29_fu_797_p1(13)
    );
\p_4_reg_1204[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(14),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(14),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(14),
      O => tmp_29_fu_797_p1(14)
    );
\p_4_reg_1204[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(15),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(15),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(15),
      O => tmp_29_fu_797_p1(15)
    );
\p_4_reg_1204[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(0),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(0),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(0),
      O => tmp_34_fu_835_p1(0)
    );
\p_4_reg_1204[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(1),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(1),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(1),
      O => tmp_34_fu_835_p1(1)
    );
\p_4_reg_1204[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(2),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(2),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(2),
      O => tmp_34_fu_835_p1(2)
    );
\p_4_reg_1204[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(3),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(3),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(3),
      O => tmp_34_fu_835_p1(3)
    );
\p_4_reg_1204[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(1),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(1),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(1),
      O => tmp_29_fu_797_p1(1)
    );
\p_4_reg_1204[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(4),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(4),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(4),
      O => tmp_34_fu_835_p1(4)
    );
\p_4_reg_1204[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(5),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(5),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(5),
      O => tmp_34_fu_835_p1(5)
    );
\p_4_reg_1204[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(6),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(6),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(6),
      O => tmp_34_fu_835_p1(6)
    );
\p_4_reg_1204[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(7),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(7),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(7),
      O => tmp_34_fu_835_p1(7)
    );
\p_4_reg_1204[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(8),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(8),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(8),
      O => tmp_34_fu_835_p1(8)
    );
\p_4_reg_1204[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(9),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(9),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(9),
      O => tmp_34_fu_835_p1(9)
    );
\p_4_reg_1204[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(10),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(10),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(10),
      O => tmp_34_fu_835_p1(10)
    );
\p_4_reg_1204[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(11),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(11),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(11),
      O => tmp_34_fu_835_p1(11)
    );
\p_4_reg_1204[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(12),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(12),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(12),
      O => tmp_34_fu_835_p1(12)
    );
\p_4_reg_1204[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(13),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(13),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(13),
      O => tmp_34_fu_835_p1(13)
    );
\p_4_reg_1204[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(2),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(2),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(2),
      O => tmp_29_fu_797_p1(2)
    );
\p_4_reg_1204[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(14),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(14),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(14),
      O => tmp_34_fu_835_p1(14)
    );
\p_4_reg_1204[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(15),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(15),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(15),
      O => tmp_34_fu_835_p1(15)
    );
\p_4_reg_1204[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(0),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(0),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(0),
      O => val_assign_fu_861_p2(32)
    );
\p_4_reg_1204[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(1),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(1),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(1),
      O => val_assign_fu_861_p2(33)
    );
\p_4_reg_1204[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(2),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(2),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(2),
      O => val_assign_fu_861_p2(34)
    );
\p_4_reg_1204[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(3),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(3),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(3),
      O => val_assign_fu_861_p2(35)
    );
\p_4_reg_1204[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(4),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(4),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(4),
      O => val_assign_fu_861_p2(36)
    );
\p_4_reg_1204[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(5),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(5),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(5),
      O => val_assign_fu_861_p2(37)
    );
\p_4_reg_1204[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(6),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(6),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(6),
      O => val_assign_fu_861_p2(38)
    );
\p_4_reg_1204[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(7),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(7),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(7),
      O => val_assign_fu_861_p2(39)
    );
\p_4_reg_1204[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(3),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(3),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(3),
      O => tmp_29_fu_797_p1(3)
    );
\p_4_reg_1204[40]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(8),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(8),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(8),
      O => val_assign_fu_861_p2(40)
    );
\p_4_reg_1204[41]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(9),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(9),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(9),
      O => val_assign_fu_861_p2(41)
    );
\p_4_reg_1204[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(10),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(10),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(10),
      O => val_assign_fu_861_p2(42)
    );
\p_4_reg_1204[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(11),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(11),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(11),
      O => val_assign_fu_861_p2(43)
    );
\p_4_reg_1204[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(12),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(12),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(12),
      O => val_assign_fu_861_p2(44)
    );
\p_4_reg_1204[45]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(13),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(13),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(13),
      O => val_assign_fu_861_p2(45)
    );
\p_4_reg_1204[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(14),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(14),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(14),
      O => val_assign_fu_861_p2(46)
    );
\p_4_reg_1204[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => right_edge_loc_2_reg_314(15),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => p_right_edge_load_reg_1161(15),
      I4 => p_0_in0_in,
      I5 => p_current_x_cord_load_reg_1099(15),
      O => val_assign_fu_861_p2(47)
    );
\p_4_reg_1204[48]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(0),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(0),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(0),
      O => val_assign_fu_861_p2(48)
    );
\p_4_reg_1204[49]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(1),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(1),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(1),
      O => val_assign_fu_861_p2(49)
    );
\p_4_reg_1204[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(4),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(4),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(4),
      O => tmp_29_fu_797_p1(4)
    );
\p_4_reg_1204[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(2),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(2),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(2),
      O => val_assign_fu_861_p2(50)
    );
\p_4_reg_1204[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(3),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(3),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(3),
      O => val_assign_fu_861_p2(51)
    );
\p_4_reg_1204[52]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(4),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(4),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(4),
      O => val_assign_fu_861_p2(52)
    );
\p_4_reg_1204[53]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(5),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(5),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(5),
      O => val_assign_fu_861_p2(53)
    );
\p_4_reg_1204[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(6),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(6),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(6),
      O => val_assign_fu_861_p2(54)
    );
\p_4_reg_1204[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(7),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(7),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(7),
      O => val_assign_fu_861_p2(55)
    );
\p_4_reg_1204[56]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(8),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(8),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(8),
      O => val_assign_fu_861_p2(56)
    );
\p_4_reg_1204[57]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(9),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(9),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(9),
      O => val_assign_fu_861_p2(57)
    );
\p_4_reg_1204[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(10),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(10),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(10),
      O => val_assign_fu_861_p2(58)
    );
\p_4_reg_1204[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(11),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(11),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(11),
      O => val_assign_fu_861_p2(59)
    );
\p_4_reg_1204[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(5),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(5),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(5),
      O => tmp_29_fu_797_p1(5)
    );
\p_4_reg_1204[60]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(12),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(12),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(12),
      O => val_assign_fu_861_p2(60)
    );
\p_4_reg_1204[61]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(13),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(13),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(13),
      O => val_assign_fu_861_p2(61)
    );
\p_4_reg_1204[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(14),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(14),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(14),
      O => val_assign_fu_861_p2(62)
    );
\p_4_reg_1204[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_0_in,
      I1 => tmp_5_fu_810_p2,
      I2 => ap_CS_fsm_state2,
      I3 => \^led_exist\,
      O => p_4_reg_1204
    );
\p_4_reg_1204[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => tmp_5_fu_810_p2,
      I2 => p_0_in,
      O => \p_4_reg_1204[63]_i_2_n_0\
    );
\p_4_reg_1204[63]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => tmp_34_fu_835_p1(15),
      I1 => left_edge_loc_2_reg_223(15),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(15),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(15),
      O => val_assign_fu_861_p2(63)
    );
\p_4_reg_1204[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(6),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(6),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(6),
      O => tmp_29_fu_797_p1(6)
    );
\p_4_reg_1204[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(7),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(7),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(7),
      O => tmp_29_fu_797_p1(7)
    );
\p_4_reg_1204[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(8),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(8),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(8),
      O => tmp_29_fu_797_p1(8)
    );
\p_4_reg_1204[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(9),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(9),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(9),
      O => tmp_29_fu_797_p1(9)
    );
\p_4_reg_1204_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(0),
      Q => \edgeout_val[63]\(32),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(10),
      Q => \edgeout_val[63]\(42),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(11),
      Q => \edgeout_val[63]\(43),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(12),
      Q => \edgeout_val[63]\(44),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(13),
      Q => \edgeout_val[63]\(45),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(14),
      Q => \edgeout_val[63]\(46),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(15),
      Q => \edgeout_val[63]\(47),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(0),
      Q => \edgeout_val[63]\(48),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(1),
      Q => \edgeout_val[63]\(49),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(2),
      Q => \edgeout_val[63]\(50),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(3),
      Q => \edgeout_val[63]\(51),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(1),
      Q => \edgeout_val[63]\(33),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(4),
      Q => \edgeout_val[63]\(52),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(5),
      Q => \edgeout_val[63]\(53),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(6),
      Q => \edgeout_val[63]\(54),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(7),
      Q => \edgeout_val[63]\(55),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(8),
      Q => \edgeout_val[63]\(56),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(9),
      Q => \edgeout_val[63]\(57),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(10),
      Q => \edgeout_val[63]\(58),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(11),
      Q => \edgeout_val[63]\(59),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(12),
      Q => \edgeout_val[63]\(60),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(13),
      Q => \edgeout_val[63]\(61),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(2),
      Q => \edgeout_val[63]\(34),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(14),
      Q => \edgeout_val[63]\(62),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_34_fu_835_p1(15),
      Q => \edgeout_val[63]\(63),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(32),
      Q => \edgeout_val[63]\(64),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(33),
      Q => \edgeout_val[63]\(65),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(34),
      Q => \edgeout_val[63]\(66),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(35),
      Q => \edgeout_val[63]\(67),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(36),
      Q => \edgeout_val[63]\(68),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(37),
      Q => \edgeout_val[63]\(69),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(38),
      Q => \edgeout_val[63]\(70),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(39),
      Q => \edgeout_val[63]\(71),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(3),
      Q => \edgeout_val[63]\(35),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(40),
      Q => \edgeout_val[63]\(72),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(41),
      Q => \edgeout_val[63]\(73),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(42),
      Q => \edgeout_val[63]\(74),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(43),
      Q => \edgeout_val[63]\(75),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(44),
      Q => \edgeout_val[63]\(76),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(45),
      Q => \edgeout_val[63]\(77),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(46),
      Q => \edgeout_val[63]\(78),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(47),
      Q => \edgeout_val[63]\(79),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(48),
      Q => \edgeout_val[63]\(80),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(49),
      Q => \edgeout_val[63]\(81),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(4),
      Q => \edgeout_val[63]\(36),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(50),
      Q => \edgeout_val[63]\(82),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(51),
      Q => \edgeout_val[63]\(83),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(52),
      Q => \edgeout_val[63]\(84),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(53),
      Q => \edgeout_val[63]\(85),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(54),
      Q => \edgeout_val[63]\(86),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(55),
      Q => \edgeout_val[63]\(87),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(56),
      Q => \edgeout_val[63]\(88),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(57),
      Q => \edgeout_val[63]\(89),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(58),
      Q => \edgeout_val[63]\(90),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(59),
      Q => \edgeout_val[63]\(91),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(5),
      Q => \edgeout_val[63]\(37),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(60),
      Q => \edgeout_val[63]\(92),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(61),
      Q => \edgeout_val[63]\(93),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(62),
      Q => \edgeout_val[63]\(94),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => val_assign_fu_861_p2(63),
      Q => \edgeout_val[63]\(95),
      R => p_4_reg_1204
    );
\p_4_reg_1204_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(6),
      Q => \edgeout_val[63]\(38),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(7),
      Q => \edgeout_val[63]\(39),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(8),
      Q => \edgeout_val[63]\(40),
      S => p_4_reg_1204
    );
\p_4_reg_1204_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_29_fu_797_p1(9),
      Q => \edgeout_val[63]\(41),
      S => p_4_reg_1204
    );
\p_bottom_edge_load_reg_1154[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(0),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[0]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(10),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[10]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(11),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[11]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(12),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[12]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(13),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[13]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(14),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[14]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(15),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[15]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(16),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[16]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(17),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[17]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(18),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[18]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(19),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[19]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(1),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[1]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(20),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[20]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(21),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[21]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(22),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[22]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(23),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[23]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(24),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[24]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(25),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[25]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(26),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[26]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(27),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[27]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(28),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[28]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(29),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[29]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(2),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[2]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(30),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[30]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(31),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[31]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(3),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[3]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(4),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[4]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(5),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[5]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(6),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[6]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(7),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[7]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(8),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[8]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bottom_edge(9),
      I1 => tmp_4_fu_488_p2,
      O => \p_bottom_edge_load_reg_1154[9]_i_1_n_0\
    );
\p_bottom_edge_load_reg_1154_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[0]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(0),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[10]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(10),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[11]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(11),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[12]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(12),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[13]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(13),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[14]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(14),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[15]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(15),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[16]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(16),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[17]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(17),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[18]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(18),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[19]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(19),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[1]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(1),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[20]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(20),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[21]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(21),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[22]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(22),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[23]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(23),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[24]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(24),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[25]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(25),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[26]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(26),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[27]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(27),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[28]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(28),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[29]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(29),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[2]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(2),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[30]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(30),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[31]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(31),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[3]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(3),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[4]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(4),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[5]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(5),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[6]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(6),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[7]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(7),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[8]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(8),
      R => '0'
    );
\p_bottom_edge_load_reg_1154_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_bottom_edge_load_reg_1154[9]_i_1_n_0\,
      Q => p_bottom_edge_load_reg_1154(9),
      R => '0'
    );
\p_current_x_cord_load_reg_1099[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(0),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(0)
    );
\p_current_x_cord_load_reg_1099[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(10),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(10)
    );
\p_current_x_cord_load_reg_1099[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(11),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(11)
    );
\p_current_x_cord_load_reg_1099[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(12),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(12)
    );
\p_current_x_cord_load_reg_1099[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(13),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(13)
    );
\p_current_x_cord_load_reg_1099[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(14),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(14)
    );
\p_current_x_cord_load_reg_1099[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(15),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(15)
    );
\p_current_x_cord_load_reg_1099[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(16),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(16)
    );
\p_current_x_cord_load_reg_1099[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(17),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(17)
    );
\p_current_x_cord_load_reg_1099[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(18),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(18)
    );
\p_current_x_cord_load_reg_1099[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(19),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(19)
    );
\p_current_x_cord_load_reg_1099[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(1),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(1)
    );
\p_current_x_cord_load_reg_1099[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(20),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(20)
    );
\p_current_x_cord_load_reg_1099[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(21),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(21)
    );
\p_current_x_cord_load_reg_1099[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(22),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(22)
    );
\p_current_x_cord_load_reg_1099[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(23),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(23)
    );
\p_current_x_cord_load_reg_1099[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(24),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(24)
    );
\p_current_x_cord_load_reg_1099[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(25),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(25)
    );
\p_current_x_cord_load_reg_1099[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(26),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(26)
    );
\p_current_x_cord_load_reg_1099[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(27),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(27)
    );
\p_current_x_cord_load_reg_1099[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(28),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(28)
    );
\p_current_x_cord_load_reg_1099[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(29),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(29)
    );
\p_current_x_cord_load_reg_1099[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(2),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(2)
    );
\p_current_x_cord_load_reg_1099[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(30),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(30)
    );
\p_current_x_cord_load_reg_1099[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(31),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(31)
    );
\p_current_x_cord_load_reg_1099[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(3),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(3)
    );
\p_current_x_cord_load_reg_1099[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(4),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(4)
    );
\p_current_x_cord_load_reg_1099[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(5),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(5)
    );
\p_current_x_cord_load_reg_1099[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(6),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(6)
    );
\p_current_x_cord_load_reg_1099[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(7),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(7)
    );
\p_current_x_cord_load_reg_1099[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(8),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(8)
    );
\p_current_x_cord_load_reg_1099[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_x_cord(9),
      I1 => reset,
      O => p_current_x_cord_load_fu_466_p3(9)
    );
\p_current_x_cord_load_reg_1099_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(0),
      Q => p_current_x_cord_load_reg_1099(0),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(10),
      Q => p_current_x_cord_load_reg_1099(10),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(11),
      Q => p_current_x_cord_load_reg_1099(11),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(12),
      Q => p_current_x_cord_load_reg_1099(12),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(13),
      Q => p_current_x_cord_load_reg_1099(13),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(14),
      Q => p_current_x_cord_load_reg_1099(14),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(15),
      Q => p_current_x_cord_load_reg_1099(15),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(16),
      Q => p_current_x_cord_load_reg_1099(16),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(17),
      Q => p_current_x_cord_load_reg_1099(17),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(18),
      Q => p_current_x_cord_load_reg_1099(18),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(19),
      Q => p_current_x_cord_load_reg_1099(19),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(1),
      Q => p_current_x_cord_load_reg_1099(1),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(20),
      Q => p_current_x_cord_load_reg_1099(20),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(21),
      Q => p_current_x_cord_load_reg_1099(21),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(22),
      Q => p_current_x_cord_load_reg_1099(22),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(23),
      Q => p_current_x_cord_load_reg_1099(23),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(24),
      Q => p_current_x_cord_load_reg_1099(24),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(25),
      Q => p_current_x_cord_load_reg_1099(25),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(26),
      Q => p_current_x_cord_load_reg_1099(26),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(27),
      Q => p_current_x_cord_load_reg_1099(27),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(28),
      Q => p_current_x_cord_load_reg_1099(28),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(29),
      Q => p_current_x_cord_load_reg_1099(29),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(2),
      Q => p_current_x_cord_load_reg_1099(2),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(30),
      Q => p_current_x_cord_load_reg_1099(30),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(31),
      Q => p_current_x_cord_load_reg_1099(31),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(3),
      Q => p_current_x_cord_load_reg_1099(3),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(4),
      Q => p_current_x_cord_load_reg_1099(4),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(5),
      Q => p_current_x_cord_load_reg_1099(5),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(6),
      Q => p_current_x_cord_load_reg_1099(6),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(7),
      Q => p_current_x_cord_load_reg_1099(7),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(8),
      Q => p_current_x_cord_load_reg_1099(8),
      R => '0'
    );
\p_current_x_cord_load_reg_1099_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_x_cord_load_fu_466_p3(9),
      Q => p_current_x_cord_load_reg_1099(9),
      R => '0'
    );
\p_current_y_cord_load_reg_1111[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(0),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(0)
    );
\p_current_y_cord_load_reg_1111[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(10),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(10)
    );
\p_current_y_cord_load_reg_1111[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(11),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(11)
    );
\p_current_y_cord_load_reg_1111[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(12),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(12)
    );
\p_current_y_cord_load_reg_1111[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(13),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(13)
    );
\p_current_y_cord_load_reg_1111[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(14),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(14)
    );
\p_current_y_cord_load_reg_1111[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(15),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(15)
    );
\p_current_y_cord_load_reg_1111[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(16),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(16)
    );
\p_current_y_cord_load_reg_1111[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(17),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(17)
    );
\p_current_y_cord_load_reg_1111[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(18),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(18)
    );
\p_current_y_cord_load_reg_1111[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(19),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(19)
    );
\p_current_y_cord_load_reg_1111[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(1),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(1)
    );
\p_current_y_cord_load_reg_1111[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(20),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(20)
    );
\p_current_y_cord_load_reg_1111[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(21),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(21)
    );
\p_current_y_cord_load_reg_1111[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(22),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(22)
    );
\p_current_y_cord_load_reg_1111[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(23),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(23)
    );
\p_current_y_cord_load_reg_1111[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(24),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(24)
    );
\p_current_y_cord_load_reg_1111[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(25),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(25)
    );
\p_current_y_cord_load_reg_1111[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(26),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(26)
    );
\p_current_y_cord_load_reg_1111[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(27),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(27)
    );
\p_current_y_cord_load_reg_1111[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(28),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(28)
    );
\p_current_y_cord_load_reg_1111[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(29),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(29)
    );
\p_current_y_cord_load_reg_1111[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(2),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(2)
    );
\p_current_y_cord_load_reg_1111[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(30),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(30)
    );
\p_current_y_cord_load_reg_1111[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(31),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(31)
    );
\p_current_y_cord_load_reg_1111[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(3),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(3)
    );
\p_current_y_cord_load_reg_1111[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(4),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(4)
    );
\p_current_y_cord_load_reg_1111[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(5),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(5)
    );
\p_current_y_cord_load_reg_1111[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(6),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(6)
    );
\p_current_y_cord_load_reg_1111[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(7),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(7)
    );
\p_current_y_cord_load_reg_1111[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(8),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(8)
    );
\p_current_y_cord_load_reg_1111[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_y_cord(9),
      I1 => reset,
      O => p_current_y_cord_load_fu_474_p3(9)
    );
\p_current_y_cord_load_reg_1111_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(0),
      Q => p_current_y_cord_load_reg_1111(0),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(10),
      Q => p_current_y_cord_load_reg_1111(10),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(11),
      Q => p_current_y_cord_load_reg_1111(11),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(12),
      Q => p_current_y_cord_load_reg_1111(12),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(13),
      Q => p_current_y_cord_load_reg_1111(13),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(14),
      Q => p_current_y_cord_load_reg_1111(14),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(15),
      Q => p_current_y_cord_load_reg_1111(15),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(16),
      Q => p_current_y_cord_load_reg_1111(16),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(17),
      Q => p_current_y_cord_load_reg_1111(17),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(18),
      Q => p_current_y_cord_load_reg_1111(18),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(19),
      Q => p_current_y_cord_load_reg_1111(19),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(1),
      Q => p_current_y_cord_load_reg_1111(1),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(20),
      Q => p_current_y_cord_load_reg_1111(20),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(21),
      Q => p_current_y_cord_load_reg_1111(21),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(22),
      Q => p_current_y_cord_load_reg_1111(22),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(23),
      Q => p_current_y_cord_load_reg_1111(23),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(24),
      Q => p_current_y_cord_load_reg_1111(24),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(25),
      Q => p_current_y_cord_load_reg_1111(25),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(26),
      Q => p_current_y_cord_load_reg_1111(26),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(27),
      Q => p_current_y_cord_load_reg_1111(27),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(28),
      Q => p_current_y_cord_load_reg_1111(28),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(29),
      Q => p_current_y_cord_load_reg_1111(29),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(2),
      Q => p_current_y_cord_load_reg_1111(2),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(30),
      Q => p_current_y_cord_load_reg_1111(30),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(31),
      Q => p_current_y_cord_load_reg_1111(31),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(3),
      Q => p_current_y_cord_load_reg_1111(3),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(4),
      Q => p_current_y_cord_load_reg_1111(4),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(5),
      Q => p_current_y_cord_load_reg_1111(5),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(6),
      Q => p_current_y_cord_load_reg_1111(6),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(7),
      Q => p_current_y_cord_load_reg_1111(7),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(8),
      Q => p_current_y_cord_load_reg_1111(8),
      R => '0'
    );
\p_current_y_cord_load_reg_1111_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => p_current_y_cord_load_fu_474_p3(9),
      Q => p_current_y_cord_load_reg_1111(9),
      R => '0'
    );
p_neg1_fu_882_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_neg1_fu_882_p2_carry_n_0,
      CO(2) => p_neg1_fu_882_p2_carry_n_1,
      CO(1) => p_neg1_fu_882_p2_carry_n_2,
      CO(0) => p_neg1_fu_882_p2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 1) => p_neg1_fu_882_p2(3 downto 1),
      O(0) => NLW_p_neg1_fu_882_p2_carry_O_UNCONNECTED(0),
      S(3) => p_neg1_fu_882_p2_carry_i_1_n_0,
      S(2) => p_neg1_fu_882_p2_carry_i_2_n_0,
      S(1) => p_neg1_fu_882_p2_carry_i_3_n_0,
      S(0) => tmp_11_reg_1190(0)
    );
\p_neg1_fu_882_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => p_neg1_fu_882_p2_carry_n_0,
      CO(3) => \p_neg1_fu_882_p2_carry__0_n_0\,
      CO(2) => \p_neg1_fu_882_p2_carry__0_n_1\,
      CO(1) => \p_neg1_fu_882_p2_carry__0_n_2\,
      CO(0) => \p_neg1_fu_882_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_neg1_fu_882_p2(7 downto 4),
      S(3) => \p_neg1_fu_882_p2_carry__0_i_1_n_0\,
      S(2) => \p_neg1_fu_882_p2_carry__0_i_2_n_0\,
      S(1) => \p_neg1_fu_882_p2_carry__0_i_3_n_0\,
      S(0) => \p_neg1_fu_882_p2_carry__0_i_4_n_0\
    );
\p_neg1_fu_882_p2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(7),
      O => \p_neg1_fu_882_p2_carry__0_i_1_n_0\
    );
\p_neg1_fu_882_p2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(6),
      O => \p_neg1_fu_882_p2_carry__0_i_2_n_0\
    );
\p_neg1_fu_882_p2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(5),
      O => \p_neg1_fu_882_p2_carry__0_i_3_n_0\
    );
\p_neg1_fu_882_p2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(4),
      O => \p_neg1_fu_882_p2_carry__0_i_4_n_0\
    );
\p_neg1_fu_882_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_neg1_fu_882_p2_carry__0_n_0\,
      CO(3) => \p_neg1_fu_882_p2_carry__1_n_0\,
      CO(2) => \p_neg1_fu_882_p2_carry__1_n_1\,
      CO(1) => \p_neg1_fu_882_p2_carry__1_n_2\,
      CO(0) => \p_neg1_fu_882_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_neg1_fu_882_p2(11 downto 8),
      S(3) => \p_neg1_fu_882_p2_carry__1_i_1_n_0\,
      S(2) => \p_neg1_fu_882_p2_carry__1_i_2_n_0\,
      S(1) => \p_neg1_fu_882_p2_carry__1_i_3_n_0\,
      S(0) => \p_neg1_fu_882_p2_carry__1_i_4_n_0\
    );
\p_neg1_fu_882_p2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(11),
      O => \p_neg1_fu_882_p2_carry__1_i_1_n_0\
    );
\p_neg1_fu_882_p2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(10),
      O => \p_neg1_fu_882_p2_carry__1_i_2_n_0\
    );
\p_neg1_fu_882_p2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(9),
      O => \p_neg1_fu_882_p2_carry__1_i_3_n_0\
    );
\p_neg1_fu_882_p2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(8),
      O => \p_neg1_fu_882_p2_carry__1_i_4_n_0\
    );
\p_neg1_fu_882_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_neg1_fu_882_p2_carry__1_n_0\,
      CO(3) => \p_neg1_fu_882_p2_carry__2_n_0\,
      CO(2) => \p_neg1_fu_882_p2_carry__2_n_1\,
      CO(1) => \p_neg1_fu_882_p2_carry__2_n_2\,
      CO(0) => \p_neg1_fu_882_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_neg1_fu_882_p2(15 downto 12),
      S(3) => \p_neg1_fu_882_p2_carry__2_i_1_n_0\,
      S(2) => \p_neg1_fu_882_p2_carry__2_i_2_n_0\,
      S(1) => \p_neg1_fu_882_p2_carry__2_i_3_n_0\,
      S(0) => \p_neg1_fu_882_p2_carry__2_i_4_n_0\
    );
\p_neg1_fu_882_p2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(15),
      O => \p_neg1_fu_882_p2_carry__2_i_1_n_0\
    );
\p_neg1_fu_882_p2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(14),
      O => \p_neg1_fu_882_p2_carry__2_i_2_n_0\
    );
\p_neg1_fu_882_p2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(13),
      O => \p_neg1_fu_882_p2_carry__2_i_3_n_0\
    );
\p_neg1_fu_882_p2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(12),
      O => \p_neg1_fu_882_p2_carry__2_i_4_n_0\
    );
\p_neg1_fu_882_p2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_neg1_fu_882_p2_carry__2_n_0\,
      CO(3 downto 0) => \NLW_p_neg1_fu_882_p2_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_p_neg1_fu_882_p2_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => p_neg1_fu_882_p2(16),
      S(3 downto 1) => B"000",
      S(0) => \p_neg1_fu_882_p2_carry__3_i_1_n_0\
    );
\p_neg1_fu_882_p2_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(16),
      O => \p_neg1_fu_882_p2_carry__3_i_1_n_0\
    );
p_neg1_fu_882_p2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(3),
      O => p_neg1_fu_882_p2_carry_i_1_n_0
    );
p_neg1_fu_882_p2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(2),
      O => p_neg1_fu_882_p2_carry_i_2_n_0
    );
p_neg1_fu_882_p2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_11_reg_1190(1),
      O => p_neg1_fu_882_p2_carry_i_3_n_0
    );
p_neg_fu_927_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_neg_fu_927_p2_carry_n_0,
      CO(2) => p_neg_fu_927_p2_carry_n_1,
      CO(1) => p_neg_fu_927_p2_carry_n_2,
      CO(0) => p_neg_fu_927_p2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 1) => p_neg_fu_927_p2(3 downto 1),
      O(0) => NLW_p_neg_fu_927_p2_carry_O_UNCONNECTED(0),
      S(3) => p_neg_fu_927_p2_carry_i_1_n_0,
      S(2) => p_neg_fu_927_p2_carry_i_2_n_0,
      S(1) => p_neg_fu_927_p2_carry_i_3_n_0,
      S(0) => tmp_14_reg_1197(0)
    );
\p_neg_fu_927_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => p_neg_fu_927_p2_carry_n_0,
      CO(3) => \p_neg_fu_927_p2_carry__0_n_0\,
      CO(2) => \p_neg_fu_927_p2_carry__0_n_1\,
      CO(1) => \p_neg_fu_927_p2_carry__0_n_2\,
      CO(0) => \p_neg_fu_927_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_neg_fu_927_p2(7 downto 4),
      S(3) => \p_neg_fu_927_p2_carry__0_i_1_n_0\,
      S(2) => \p_neg_fu_927_p2_carry__0_i_2_n_0\,
      S(1) => \p_neg_fu_927_p2_carry__0_i_3_n_0\,
      S(0) => \p_neg_fu_927_p2_carry__0_i_4_n_0\
    );
\p_neg_fu_927_p2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(7),
      O => \p_neg_fu_927_p2_carry__0_i_1_n_0\
    );
\p_neg_fu_927_p2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(6),
      O => \p_neg_fu_927_p2_carry__0_i_2_n_0\
    );
\p_neg_fu_927_p2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(5),
      O => \p_neg_fu_927_p2_carry__0_i_3_n_0\
    );
\p_neg_fu_927_p2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(4),
      O => \p_neg_fu_927_p2_carry__0_i_4_n_0\
    );
\p_neg_fu_927_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_neg_fu_927_p2_carry__0_n_0\,
      CO(3) => \p_neg_fu_927_p2_carry__1_n_0\,
      CO(2) => \p_neg_fu_927_p2_carry__1_n_1\,
      CO(1) => \p_neg_fu_927_p2_carry__1_n_2\,
      CO(0) => \p_neg_fu_927_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_neg_fu_927_p2(11 downto 8),
      S(3) => \p_neg_fu_927_p2_carry__1_i_1_n_0\,
      S(2) => \p_neg_fu_927_p2_carry__1_i_2_n_0\,
      S(1) => \p_neg_fu_927_p2_carry__1_i_3_n_0\,
      S(0) => \p_neg_fu_927_p2_carry__1_i_4_n_0\
    );
\p_neg_fu_927_p2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(11),
      O => \p_neg_fu_927_p2_carry__1_i_1_n_0\
    );
\p_neg_fu_927_p2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(10),
      O => \p_neg_fu_927_p2_carry__1_i_2_n_0\
    );
\p_neg_fu_927_p2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(9),
      O => \p_neg_fu_927_p2_carry__1_i_3_n_0\
    );
\p_neg_fu_927_p2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(8),
      O => \p_neg_fu_927_p2_carry__1_i_4_n_0\
    );
\p_neg_fu_927_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_neg_fu_927_p2_carry__1_n_0\,
      CO(3) => \p_neg_fu_927_p2_carry__2_n_0\,
      CO(2) => \p_neg_fu_927_p2_carry__2_n_1\,
      CO(1) => \p_neg_fu_927_p2_carry__2_n_2\,
      CO(0) => \p_neg_fu_927_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_neg_fu_927_p2(15 downto 12),
      S(3) => \p_neg_fu_927_p2_carry__2_i_1_n_0\,
      S(2) => \p_neg_fu_927_p2_carry__2_i_2_n_0\,
      S(1) => \p_neg_fu_927_p2_carry__2_i_3_n_0\,
      S(0) => \p_neg_fu_927_p2_carry__2_i_4_n_0\
    );
\p_neg_fu_927_p2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(15),
      O => \p_neg_fu_927_p2_carry__2_i_1_n_0\
    );
\p_neg_fu_927_p2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(14),
      O => \p_neg_fu_927_p2_carry__2_i_2_n_0\
    );
\p_neg_fu_927_p2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(13),
      O => \p_neg_fu_927_p2_carry__2_i_3_n_0\
    );
\p_neg_fu_927_p2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(12),
      O => \p_neg_fu_927_p2_carry__2_i_4_n_0\
    );
\p_neg_fu_927_p2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_neg_fu_927_p2_carry__2_n_0\,
      CO(3 downto 0) => \NLW_p_neg_fu_927_p2_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_p_neg_fu_927_p2_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => p_neg_fu_927_p2(16),
      S(3 downto 1) => B"000",
      S(0) => \p_neg_fu_927_p2_carry__3_i_1_n_0\
    );
\p_neg_fu_927_p2_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(16),
      O => \p_neg_fu_927_p2_carry__3_i_1_n_0\
    );
p_neg_fu_927_p2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(3),
      O => p_neg_fu_927_p2_carry_i_1_n_0
    );
p_neg_fu_927_p2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(2),
      O => p_neg_fu_927_p2_carry_i_2_n_0
    );
p_neg_fu_927_p2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_14_reg_1197(1),
      O => p_neg_fu_927_p2_carry_i_3_n_0
    );
\p_right_edge_load_reg_1161[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(0),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[0]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(10),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[10]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(11),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[11]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(12),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[12]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(13),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[13]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(14),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[14]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(15),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[15]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(16),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[16]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(17),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[17]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(18),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[18]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(19),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[19]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(1),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[1]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(20),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[20]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(21),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[21]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(22),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[22]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(23),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[23]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(24),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[24]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(25),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[25]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(26),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[26]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(27),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[27]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(28),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[28]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(29),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[29]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(2),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[2]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(30),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[30]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(31),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[31]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(3),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[3]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(4),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[4]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(5),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[5]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(6),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[6]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(7),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[7]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(8),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[8]_i_1_n_0\
    );
\p_right_edge_load_reg_1161[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => right_edge(9),
      I1 => tmp_4_fu_488_p2,
      O => \p_right_edge_load_reg_1161[9]_i_1_n_0\
    );
\p_right_edge_load_reg_1161_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[0]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(0),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[10]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(10),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[11]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(11),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[12]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(12),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[13]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(13),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[14]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(14),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[15]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(15),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[16]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(16),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[17]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(17),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[18]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(18),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[19]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(19),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[1]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(1),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[20]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(20),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[21]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(21),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[22]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(22),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[23]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(23),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[24]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(24),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[25]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(25),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[26]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(26),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[27]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(27),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[28]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(28),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[29]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(29),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[2]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(2),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[30]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(30),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[31]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(31),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[3]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(3),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[4]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(4),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[5]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(5),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[6]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(6),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[7]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(7),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[8]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(8),
      R => '0'
    );
\p_right_edge_load_reg_1161_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \p_right_edge_load_reg_1161[9]_i_1_n_0\,
      Q => p_right_edge_load_reg_1161(9),
      R => '0'
    );
\right_edge[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(0),
      I3 => right_edge_new_3_reg_436(0),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(0)
    );
\right_edge[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(10),
      I3 => right_edge_new_3_reg_436(10),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(10)
    );
\right_edge[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(11),
      I3 => right_edge_new_3_reg_436(11),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(11)
    );
\right_edge[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(12),
      I3 => right_edge_new_3_reg_436(12),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(12)
    );
\right_edge[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(13),
      I3 => right_edge_new_3_reg_436(13),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(13)
    );
\right_edge[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(14),
      I3 => right_edge_new_3_reg_436(14),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(14)
    );
\right_edge[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(15),
      I3 => right_edge_new_3_reg_436(15),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(15)
    );
\right_edge[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(16),
      I3 => right_edge_new_3_reg_436(16),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(16)
    );
\right_edge[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(17),
      I3 => right_edge_new_3_reg_436(17),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(17)
    );
\right_edge[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(18),
      I3 => right_edge_new_3_reg_436(18),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(18)
    );
\right_edge[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(19),
      I3 => right_edge_new_3_reg_436(19),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(19)
    );
\right_edge[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(1),
      I3 => right_edge_new_3_reg_436(1),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(1)
    );
\right_edge[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(20),
      I3 => right_edge_new_3_reg_436(20),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(20)
    );
\right_edge[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(21),
      I3 => right_edge_new_3_reg_436(21),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(21)
    );
\right_edge[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(22),
      I3 => right_edge_new_3_reg_436(22),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(22)
    );
\right_edge[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(23),
      I3 => right_edge_new_3_reg_436(23),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(23)
    );
\right_edge[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(24),
      I3 => right_edge_new_3_reg_436(24),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(24)
    );
\right_edge[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(25),
      I3 => right_edge_new_3_reg_436(25),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(25)
    );
\right_edge[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(26),
      I3 => right_edge_new_3_reg_436(26),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(26)
    );
\right_edge[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(27),
      I3 => right_edge_new_3_reg_436(27),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(27)
    );
\right_edge[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(28),
      I3 => right_edge_new_3_reg_436(28),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(28)
    );
\right_edge[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(29),
      I3 => right_edge_new_3_reg_436(29),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(29)
    );
\right_edge[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(2),
      I3 => right_edge_new_3_reg_436(2),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(2)
    );
\right_edge[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(30),
      I3 => right_edge_new_3_reg_436(30),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(30)
    );
\right_edge[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0807000"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => \ap_CS_fsm[0]_i_1_n_0\,
      I3 => right_edge_flag_3_reg_426,
      I4 => right_edge_flag_2_reg_292,
      O => right_edge0
    );
\right_edge[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(31),
      I3 => right_edge_new_3_reg_436(31),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(31)
    );
\right_edge[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(3),
      I3 => right_edge_new_3_reg_436(3),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(3)
    );
\right_edge[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(4),
      I3 => right_edge_new_3_reg_436(4),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(4)
    );
\right_edge[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(5),
      I3 => right_edge_new_3_reg_436(5),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(5)
    );
\right_edge[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(6),
      I3 => right_edge_new_3_reg_436(6),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(6)
    );
\right_edge[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(7),
      I3 => right_edge_new_3_reg_436(7),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(7)
    );
\right_edge[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(8),
      I3 => right_edge_new_3_reg_436(8),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(8)
    );
\right_edge[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => right_edge_new_2_reg_302(9),
      I3 => right_edge_new_3_reg_436(9),
      O => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(9)
    );
\right_edge_flag_2_reg_292[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => tmp_4_fu_488_p2,
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => tmp_4_reg_1124,
      I3 => p_0_in0_in,
      O => \right_edge_flag_2_reg_292[0]_i_1_n_0\
    );
\right_edge_flag_2_reg_292_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \right_edge_flag_2_reg_292[0]_i_1_n_0\,
      Q => right_edge_flag_2_reg_292,
      R => '0'
    );
\right_edge_flag_3_reg_426[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => tmp_4_fu_488_p2,
      I3 => right_edge_flag_2_reg_292,
      O => \right_edge_flag_3_reg_426[0]_i_1_n_0\
    );
\right_edge_flag_3_reg_426_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \right_edge_flag_3_reg_426[0]_i_1_n_0\,
      Q => right_edge_flag_3_reg_426,
      R => '0'
    );
\right_edge_loc_2_reg_314[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(0),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(0),
      O => \right_edge_loc_2_reg_314[0]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(10),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(10),
      O => \right_edge_loc_2_reg_314[10]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(11),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(11),
      O => \right_edge_loc_2_reg_314[11]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(12),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(12),
      O => \right_edge_loc_2_reg_314[12]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(13),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(13),
      O => \right_edge_loc_2_reg_314[13]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(14),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(14),
      O => \right_edge_loc_2_reg_314[14]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(15),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(15),
      O => \right_edge_loc_2_reg_314[15]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(16),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(16),
      O => \right_edge_loc_2_reg_314[16]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(17),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(17),
      O => \right_edge_loc_2_reg_314[17]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(18),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(18),
      O => \right_edge_loc_2_reg_314[18]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(19),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(19),
      O => \right_edge_loc_2_reg_314[19]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(1),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(1),
      O => \right_edge_loc_2_reg_314[1]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(20),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(20),
      O => \right_edge_loc_2_reg_314[20]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(21),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(21),
      O => \right_edge_loc_2_reg_314[21]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(22),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(22),
      O => \right_edge_loc_2_reg_314[22]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(23),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(23),
      O => \right_edge_loc_2_reg_314[23]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(24),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(24),
      O => \right_edge_loc_2_reg_314[24]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(25),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(25),
      O => \right_edge_loc_2_reg_314[25]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(26),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(26),
      O => \right_edge_loc_2_reg_314[26]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(27),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(27),
      O => \right_edge_loc_2_reg_314[27]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(28),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(28),
      O => \right_edge_loc_2_reg_314[28]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(29),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(29),
      O => \right_edge_loc_2_reg_314[29]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(2),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(2),
      O => \right_edge_loc_2_reg_314[2]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(30),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \tmp_30_fu_801_p1__0\(30),
      O => \right_edge_loc_2_reg_314[30]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(31),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => \right_edge_loc_2_reg_314[31]_i_2_n_0\,
      O => \right_edge_loc_2_reg_314[31]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(31),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(31),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(31),
      O => \right_edge_loc_2_reg_314[31]_i_2_n_0\
    );
\right_edge_loc_2_reg_314[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(3),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(3),
      O => \right_edge_loc_2_reg_314[3]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(4),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(4),
      O => \right_edge_loc_2_reg_314[4]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(5),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(5),
      O => \right_edge_loc_2_reg_314[5]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(6),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(6),
      O => \right_edge_loc_2_reg_314[6]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(7),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(7),
      O => \right_edge_loc_2_reg_314[7]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(8),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(8),
      O => \right_edge_loc_2_reg_314[8]_i_1_n_0\
    );
\right_edge_loc_2_reg_314[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => right_edge(9),
      I1 => tmp_4_fu_488_p2,
      I2 => \ap_CS_fsm_reg[0]_0\,
      I3 => tmp_30_fu_801_p1(9),
      O => \right_edge_loc_2_reg_314[9]_i_1_n_0\
    );
\right_edge_loc_2_reg_314_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[0]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(0),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[10]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(10),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[11]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(11),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[12]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(12),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[13]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(13),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[14]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(14),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[15]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(15),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[16]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(16),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[17]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(17),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[18]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(18),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[19]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(19),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[1]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(1),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[20]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(20),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[21]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(21),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[22]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(22),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[23]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(23),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[24]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(24),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[25]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(25),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[26]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(26),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[27]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(27),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[28]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(28),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[29]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(29),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[2]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(2),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[30]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(30),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[31]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(31),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[3]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(3),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[4]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(4),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[5]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(5),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[6]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(6),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[7]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(7),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[8]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(8),
      R => '0'
    );
\right_edge_loc_2_reg_314_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \right_edge_loc_2_reg_314[9]_i_1_n_0\,
      Q => right_edge_loc_2_reg_314(9),
      R => '0'
    );
\right_edge_new_2_reg_302[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[0]_0\,
      I1 => p_0_in0_in,
      I2 => bottom_edge_flag_2_reg_2610,
      O => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(0),
      Q => right_edge_new_2_reg_302(0),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(10),
      Q => right_edge_new_2_reg_302(10),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(11),
      Q => right_edge_new_2_reg_302(11),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(12),
      Q => right_edge_new_2_reg_302(12),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(13),
      Q => right_edge_new_2_reg_302(13),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(14),
      Q => right_edge_new_2_reg_302(14),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(15),
      Q => right_edge_new_2_reg_302(15),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(16),
      Q => right_edge_new_2_reg_302(16),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(17),
      Q => right_edge_new_2_reg_302(17),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(18),
      Q => right_edge_new_2_reg_302(18),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(19),
      Q => right_edge_new_2_reg_302(19),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(1),
      Q => right_edge_new_2_reg_302(1),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(20),
      Q => right_edge_new_2_reg_302(20),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(21),
      Q => right_edge_new_2_reg_302(21),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(22),
      Q => right_edge_new_2_reg_302(22),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(23),
      Q => right_edge_new_2_reg_302(23),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(24),
      Q => right_edge_new_2_reg_302(24),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(25),
      Q => right_edge_new_2_reg_302(25),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(26),
      Q => right_edge_new_2_reg_302(26),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(27),
      Q => right_edge_new_2_reg_302(27),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(28),
      Q => right_edge_new_2_reg_302(28),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(29),
      Q => right_edge_new_2_reg_302(29),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(2),
      Q => right_edge_new_2_reg_302(2),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(30),
      Q => right_edge_new_2_reg_302(30),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(31),
      Q => right_edge_new_2_reg_302(31),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(3),
      Q => right_edge_new_2_reg_302(3),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(4),
      Q => right_edge_new_2_reg_302(4),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(5),
      Q => right_edge_new_2_reg_302(5),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(6),
      Q => right_edge_new_2_reg_302(6),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(7),
      Q => right_edge_new_2_reg_302(7),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(8),
      Q => right_edge_new_2_reg_302(8),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_2_reg_302_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => bottom_edge_flag_2_reg_2610,
      D => p_current_x_cord_load_reg_1099(9),
      Q => right_edge_new_2_reg_302(9),
      R => \right_edge_new_2_reg_302[31]_i_1_n_0\
    );
\right_edge_new_3_reg_436_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(0),
      Q => right_edge_new_3_reg_436(0),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(10),
      Q => right_edge_new_3_reg_436(10),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(11),
      Q => right_edge_new_3_reg_436(11),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(12),
      Q => right_edge_new_3_reg_436(12),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(13),
      Q => right_edge_new_3_reg_436(13),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(14),
      Q => right_edge_new_3_reg_436(14),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(15),
      Q => right_edge_new_3_reg_436(15),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(16),
      Q => right_edge_new_3_reg_436(16),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(17),
      Q => right_edge_new_3_reg_436(17),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(18),
      Q => right_edge_new_3_reg_436(18),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(19),
      Q => right_edge_new_3_reg_436(19),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(1),
      Q => right_edge_new_3_reg_436(1),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(20),
      Q => right_edge_new_3_reg_436(20),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(21),
      Q => right_edge_new_3_reg_436(21),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(22),
      Q => right_edge_new_3_reg_436(22),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(23),
      Q => right_edge_new_3_reg_436(23),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(24),
      Q => right_edge_new_3_reg_436(24),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(25),
      Q => right_edge_new_3_reg_436(25),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(26),
      Q => right_edge_new_3_reg_436(26),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(27),
      Q => right_edge_new_3_reg_436(27),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(28),
      Q => right_edge_new_3_reg_436(28),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(29),
      Q => right_edge_new_3_reg_436(29),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(2),
      Q => right_edge_new_3_reg_436(2),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(30),
      Q => right_edge_new_3_reg_436(30),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(31),
      Q => right_edge_new_3_reg_436(31),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(3),
      Q => right_edge_new_3_reg_436(3),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(4),
      Q => right_edge_new_3_reg_436(4),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(5),
      Q => right_edge_new_3_reg_436(5),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(6),
      Q => right_edge_new_3_reg_436(6),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(7),
      Q => right_edge_new_3_reg_436(7),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(8),
      Q => right_edge_new_3_reg_436(8),
      R => ap_NS_fsm14_out
    );
\right_edge_new_3_reg_436_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => right_edge_new_2_reg_302(9),
      Q => right_edge_new_3_reg_436(9),
      R => ap_NS_fsm14_out
    );
\right_edge_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(0),
      Q => right_edge(0),
      R => '0'
    );
\right_edge_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(10),
      Q => right_edge(10),
      R => '0'
    );
\right_edge_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(11),
      Q => right_edge(11),
      R => '0'
    );
\right_edge_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(12),
      Q => right_edge(12),
      R => '0'
    );
\right_edge_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(13),
      Q => right_edge(13),
      R => '0'
    );
\right_edge_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(14),
      Q => right_edge(14),
      R => '0'
    );
\right_edge_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(15),
      Q => right_edge(15),
      R => '0'
    );
\right_edge_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(16),
      Q => right_edge(16),
      R => '0'
    );
\right_edge_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(17),
      Q => right_edge(17),
      R => '0'
    );
\right_edge_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(18),
      Q => right_edge(18),
      R => '0'
    );
\right_edge_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(19),
      Q => right_edge(19),
      R => '0'
    );
\right_edge_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(1),
      Q => right_edge(1),
      R => '0'
    );
\right_edge_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(20),
      Q => right_edge(20),
      R => '0'
    );
\right_edge_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(21),
      Q => right_edge(21),
      R => '0'
    );
\right_edge_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(22),
      Q => right_edge(22),
      R => '0'
    );
\right_edge_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(23),
      Q => right_edge(23),
      R => '0'
    );
\right_edge_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(24),
      Q => right_edge(24),
      R => '0'
    );
\right_edge_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(25),
      Q => right_edge(25),
      R => '0'
    );
\right_edge_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(26),
      Q => right_edge(26),
      R => '0'
    );
\right_edge_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(27),
      Q => right_edge(27),
      R => '0'
    );
\right_edge_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(28),
      Q => right_edge(28),
      R => '0'
    );
\right_edge_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(29),
      Q => right_edge(29),
      R => '0'
    );
\right_edge_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(2),
      Q => right_edge(2),
      R => '0'
    );
\right_edge_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(30),
      Q => right_edge(30),
      R => '0'
    );
\right_edge_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(31),
      Q => right_edge(31),
      R => '0'
    );
\right_edge_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(3),
      Q => right_edge(3),
      R => '0'
    );
\right_edge_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(4),
      Q => right_edge(4),
      R => '0'
    );
\right_edge_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(5),
      Q => right_edge(5),
      R => '0'
    );
\right_edge_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(6),
      Q => right_edge(6),
      R => '0'
    );
\right_edge_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(7),
      Q => right_edge(7),
      R => '0'
    );
\right_edge_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(8),
      Q => right_edge(8),
      R => '0'
    );
\right_edge_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => right_edge0,
      D => ap_phi_mux_right_edge_new_3_phi_fu_440_p4(9),
      Q => right_edge(9),
      R => '0'
    );
\state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => sig_det_color_cord_cord_out_V_full_n,
      I1 => tmp_10_reg_1181,
      I2 => tmp_5_reg_1176,
      I3 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I4 => \ap_CS_fsm_reg[2]_rep_n_0\,
      O => \FSM_sequential_state_reg[1]\
    );
target_above_fu_675_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => target_above_fu_675_p2_carry_n_1,
      CO(1) => target_above_fu_675_p2_carry_n_2,
      CO(0) => target_above_fu_675_p2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_target_above_fu_675_p2_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
target_above_fu_675_p2_carry_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => target_above_fu_675_p2_carry_i_19_n_0,
      I1 => target_color(1),
      I2 => target_color(0),
      O => \led_exist_reg[0]_2\
    );
target_above_fu_675_p2_carry_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => target_above_fu_675_p2_carry_i_19_n_0,
      I1 => target_color(0),
      I2 => target_color(1),
      O => \led_exist_reg[0]_4\
    );
target_above_fu_675_p2_carry_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => target_color(2),
      I1 => target_color(3),
      I2 => target_color(5),
      I3 => target_color(4),
      I4 => target_color(6),
      I5 => target_color(7),
      O => target_above_fu_675_p2_carry_i_19_n_0
    );
\tmp_10_reg_1181[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => p_0_in,
      I1 => tmp_5_fu_810_p2,
      I2 => ap_CS_fsm_state2,
      I3 => tmp_10_reg_1181,
      O => \tmp_10_reg_1181[0]_i_1_n_0\
    );
\tmp_10_reg_1181_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \tmp_10_reg_1181[0]_i_1_n_0\,
      Q => tmp_10_reg_1181,
      R => '0'
    );
tmp_11_fu_819_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tmp_11_fu_819_p2_carry_n_0,
      CO(2) => tmp_11_fu_819_p2_carry_n_1,
      CO(1) => tmp_11_fu_819_p2_carry_n_2,
      CO(0) => tmp_11_fu_819_p2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => tmp_30_fu_801_p1(3 downto 0),
      O(3 downto 0) => tmp_11_fu_819_p2(3 downto 0),
      S(3) => tmp_11_fu_819_p2_carry_i_5_n_0,
      S(2) => tmp_11_fu_819_p2_carry_i_6_n_0,
      S(1) => tmp_11_fu_819_p2_carry_i_7_n_0,
      S(0) => tmp_11_fu_819_p2_carry_i_8_n_0
    );
\tmp_11_fu_819_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tmp_11_fu_819_p2_carry_n_0,
      CO(3) => \tmp_11_fu_819_p2_carry__0_n_0\,
      CO(2) => \tmp_11_fu_819_p2_carry__0_n_1\,
      CO(1) => \tmp_11_fu_819_p2_carry__0_n_2\,
      CO(0) => \tmp_11_fu_819_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tmp_30_fu_801_p1(7 downto 4),
      O(3 downto 0) => tmp_11_fu_819_p2(7 downto 4),
      S(3) => \tmp_11_fu_819_p2_carry__0_i_5_n_0\,
      S(2) => \tmp_11_fu_819_p2_carry__0_i_6_n_0\,
      S(1) => \tmp_11_fu_819_p2_carry__0_i_7_n_0\,
      S(0) => \tmp_11_fu_819_p2_carry__0_i_8_n_0\
    );
\tmp_11_fu_819_p2_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(7),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(7),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(7),
      O => tmp_30_fu_801_p1(7)
    );
\tmp_11_fu_819_p2_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(6),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(6),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(6),
      O => tmp_30_fu_801_p1(6)
    );
\tmp_11_fu_819_p2_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(5),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(5),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(5),
      O => tmp_30_fu_801_p1(5)
    );
\tmp_11_fu_819_p2_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(4),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(4),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(4),
      O => tmp_30_fu_801_p1(4)
    );
\tmp_11_fu_819_p2_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(7),
      I1 => left_edge_loc_2_reg_223(7),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(7),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(7),
      O => \tmp_11_fu_819_p2_carry__0_i_5_n_0\
    );
\tmp_11_fu_819_p2_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(6),
      I1 => left_edge_loc_2_reg_223(6),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(6),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(6),
      O => \tmp_11_fu_819_p2_carry__0_i_6_n_0\
    );
\tmp_11_fu_819_p2_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(5),
      I1 => left_edge_loc_2_reg_223(5),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(5),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(5),
      O => \tmp_11_fu_819_p2_carry__0_i_7_n_0\
    );
\tmp_11_fu_819_p2_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(4),
      I1 => left_edge_loc_2_reg_223(4),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(4),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(4),
      O => \tmp_11_fu_819_p2_carry__0_i_8_n_0\
    );
\tmp_11_fu_819_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_11_fu_819_p2_carry__0_n_0\,
      CO(3) => \tmp_11_fu_819_p2_carry__1_n_0\,
      CO(2) => \tmp_11_fu_819_p2_carry__1_n_1\,
      CO(1) => \tmp_11_fu_819_p2_carry__1_n_2\,
      CO(0) => \tmp_11_fu_819_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tmp_30_fu_801_p1(11 downto 8),
      O(3 downto 0) => tmp_11_fu_819_p2(11 downto 8),
      S(3) => \tmp_11_fu_819_p2_carry__1_i_5_n_0\,
      S(2) => \tmp_11_fu_819_p2_carry__1_i_6_n_0\,
      S(1) => \tmp_11_fu_819_p2_carry__1_i_7_n_0\,
      S(0) => \tmp_11_fu_819_p2_carry__1_i_8_n_0\
    );
\tmp_11_fu_819_p2_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(11),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(11),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(11),
      O => tmp_30_fu_801_p1(11)
    );
\tmp_11_fu_819_p2_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(10),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(10),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(10),
      O => tmp_30_fu_801_p1(10)
    );
\tmp_11_fu_819_p2_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(9),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(9),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(9),
      O => tmp_30_fu_801_p1(9)
    );
\tmp_11_fu_819_p2_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(8),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(8),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(8),
      O => tmp_30_fu_801_p1(8)
    );
\tmp_11_fu_819_p2_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(11),
      I1 => left_edge_loc_2_reg_223(11),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(11),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(11),
      O => \tmp_11_fu_819_p2_carry__1_i_5_n_0\
    );
\tmp_11_fu_819_p2_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(10),
      I1 => left_edge_loc_2_reg_223(10),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(10),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(10),
      O => \tmp_11_fu_819_p2_carry__1_i_6_n_0\
    );
\tmp_11_fu_819_p2_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(9),
      I1 => left_edge_loc_2_reg_223(9),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(9),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(9),
      O => \tmp_11_fu_819_p2_carry__1_i_7_n_0\
    );
\tmp_11_fu_819_p2_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(8),
      I1 => left_edge_loc_2_reg_223(8),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(8),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(8),
      O => \tmp_11_fu_819_p2_carry__1_i_8_n_0\
    );
\tmp_11_fu_819_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_11_fu_819_p2_carry__1_n_0\,
      CO(3) => \tmp_11_fu_819_p2_carry__2_n_0\,
      CO(2) => \tmp_11_fu_819_p2_carry__2_n_1\,
      CO(1) => \tmp_11_fu_819_p2_carry__2_n_2\,
      CO(0) => \tmp_11_fu_819_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tmp_30_fu_801_p1(15 downto 12),
      O(3 downto 0) => tmp_11_fu_819_p2(15 downto 12),
      S(3) => \tmp_11_fu_819_p2_carry__2_i_5_n_0\,
      S(2) => \tmp_11_fu_819_p2_carry__2_i_6_n_0\,
      S(1) => \tmp_11_fu_819_p2_carry__2_i_7_n_0\,
      S(0) => \tmp_11_fu_819_p2_carry__2_i_8_n_0\
    );
\tmp_11_fu_819_p2_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(15),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(15),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(15),
      O => tmp_30_fu_801_p1(15)
    );
\tmp_11_fu_819_p2_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(14),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(14),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(14),
      O => tmp_30_fu_801_p1(14)
    );
\tmp_11_fu_819_p2_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(13),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(13),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(13),
      O => tmp_30_fu_801_p1(13)
    );
\tmp_11_fu_819_p2_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(12),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(12),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(12),
      O => tmp_30_fu_801_p1(12)
    );
\tmp_11_fu_819_p2_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(15),
      I1 => left_edge_loc_2_reg_223(15),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(15),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(15),
      O => \tmp_11_fu_819_p2_carry__2_i_5_n_0\
    );
\tmp_11_fu_819_p2_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(14),
      I1 => left_edge_loc_2_reg_223(14),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(14),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(14),
      O => \tmp_11_fu_819_p2_carry__2_i_6_n_0\
    );
\tmp_11_fu_819_p2_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(13),
      I1 => left_edge_loc_2_reg_223(13),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(13),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(13),
      O => \tmp_11_fu_819_p2_carry__2_i_7_n_0\
    );
\tmp_11_fu_819_p2_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(12),
      I1 => left_edge_loc_2_reg_223(12),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(12),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(12),
      O => \tmp_11_fu_819_p2_carry__2_i_8_n_0\
    );
\tmp_11_fu_819_p2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_11_fu_819_p2_carry__2_n_0\,
      CO(3) => \tmp_11_fu_819_p2_carry__3_n_0\,
      CO(2) => \tmp_11_fu_819_p2_carry__3_n_1\,
      CO(1) => \tmp_11_fu_819_p2_carry__3_n_2\,
      CO(0) => \tmp_11_fu_819_p2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \tmp_30_fu_801_p1__0\(19 downto 16),
      O(3 downto 1) => \NLW_tmp_11_fu_819_p2_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => tmp_11_fu_819_p2(16),
      S(3) => \tmp_11_fu_819_p2_carry__3_i_5_n_0\,
      S(2) => \tmp_11_fu_819_p2_carry__3_i_6_n_0\,
      S(1) => \tmp_11_fu_819_p2_carry__3_i_7_n_0\,
      S(0) => \tmp_11_fu_819_p2_carry__3_i_8_n_0\
    );
\tmp_11_fu_819_p2_carry__3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(19),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(19),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(19),
      O => \tmp_30_fu_801_p1__0\(19)
    );
\tmp_11_fu_819_p2_carry__3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(18),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(18),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(18),
      O => \tmp_30_fu_801_p1__0\(18)
    );
\tmp_11_fu_819_p2_carry__3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(17),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(17),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(17),
      O => \tmp_30_fu_801_p1__0\(17)
    );
\tmp_11_fu_819_p2_carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(16),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(16),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(16),
      O => \tmp_30_fu_801_p1__0\(16)
    );
\tmp_11_fu_819_p2_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(19),
      I1 => left_edge_loc_2_reg_223(19),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(19),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(19),
      O => \tmp_11_fu_819_p2_carry__3_i_5_n_0\
    );
\tmp_11_fu_819_p2_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(18),
      I1 => left_edge_loc_2_reg_223(18),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(18),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(18),
      O => \tmp_11_fu_819_p2_carry__3_i_6_n_0\
    );
\tmp_11_fu_819_p2_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(17),
      I1 => left_edge_loc_2_reg_223(17),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(17),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(17),
      O => \tmp_11_fu_819_p2_carry__3_i_7_n_0\
    );
\tmp_11_fu_819_p2_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(16),
      I1 => left_edge_loc_2_reg_223(16),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(16),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(16),
      O => \tmp_11_fu_819_p2_carry__3_i_8_n_0\
    );
\tmp_11_fu_819_p2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_11_fu_819_p2_carry__3_n_0\,
      CO(3) => \tmp_11_fu_819_p2_carry__4_n_0\,
      CO(2) => \tmp_11_fu_819_p2_carry__4_n_1\,
      CO(1) => \tmp_11_fu_819_p2_carry__4_n_2\,
      CO(0) => \tmp_11_fu_819_p2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \tmp_30_fu_801_p1__0\(23 downto 20),
      O(3 downto 0) => \NLW_tmp_11_fu_819_p2_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_11_fu_819_p2_carry__4_i_5_n_0\,
      S(2) => \tmp_11_fu_819_p2_carry__4_i_6_n_0\,
      S(1) => \tmp_11_fu_819_p2_carry__4_i_7_n_0\,
      S(0) => \tmp_11_fu_819_p2_carry__4_i_8_n_0\
    );
\tmp_11_fu_819_p2_carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(23),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(23),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(23),
      O => \tmp_30_fu_801_p1__0\(23)
    );
\tmp_11_fu_819_p2_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(22),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(22),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(22),
      O => \tmp_30_fu_801_p1__0\(22)
    );
\tmp_11_fu_819_p2_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(21),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(21),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(21),
      O => \tmp_30_fu_801_p1__0\(21)
    );
\tmp_11_fu_819_p2_carry__4_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(20),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(20),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(20),
      O => \tmp_30_fu_801_p1__0\(20)
    );
\tmp_11_fu_819_p2_carry__4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(23),
      I1 => left_edge_loc_2_reg_223(23),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(23),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(23),
      O => \tmp_11_fu_819_p2_carry__4_i_5_n_0\
    );
\tmp_11_fu_819_p2_carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(22),
      I1 => left_edge_loc_2_reg_223(22),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(22),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(22),
      O => \tmp_11_fu_819_p2_carry__4_i_6_n_0\
    );
\tmp_11_fu_819_p2_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(21),
      I1 => left_edge_loc_2_reg_223(21),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(21),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(21),
      O => \tmp_11_fu_819_p2_carry__4_i_7_n_0\
    );
\tmp_11_fu_819_p2_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(20),
      I1 => left_edge_loc_2_reg_223(20),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(20),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(20),
      O => \tmp_11_fu_819_p2_carry__4_i_8_n_0\
    );
\tmp_11_fu_819_p2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_11_fu_819_p2_carry__4_n_0\,
      CO(3) => \tmp_11_fu_819_p2_carry__5_n_0\,
      CO(2) => \tmp_11_fu_819_p2_carry__5_n_1\,
      CO(1) => \tmp_11_fu_819_p2_carry__5_n_2\,
      CO(0) => \tmp_11_fu_819_p2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \tmp_30_fu_801_p1__0\(27 downto 24),
      O(3 downto 0) => \NLW_tmp_11_fu_819_p2_carry__5_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_11_fu_819_p2_carry__5_i_5_n_0\,
      S(2) => \tmp_11_fu_819_p2_carry__5_i_6_n_0\,
      S(1) => \tmp_11_fu_819_p2_carry__5_i_7_n_0\,
      S(0) => \tmp_11_fu_819_p2_carry__5_i_8_n_0\
    );
\tmp_11_fu_819_p2_carry__5_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(27),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(27),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(27),
      O => \tmp_30_fu_801_p1__0\(27)
    );
\tmp_11_fu_819_p2_carry__5_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(26),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(26),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(26),
      O => \tmp_30_fu_801_p1__0\(26)
    );
\tmp_11_fu_819_p2_carry__5_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(25),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(25),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(25),
      O => \tmp_30_fu_801_p1__0\(25)
    );
\tmp_11_fu_819_p2_carry__5_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(24),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(24),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(24),
      O => \tmp_30_fu_801_p1__0\(24)
    );
\tmp_11_fu_819_p2_carry__5_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(27),
      I1 => left_edge_loc_2_reg_223(27),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(27),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(27),
      O => \tmp_11_fu_819_p2_carry__5_i_5_n_0\
    );
\tmp_11_fu_819_p2_carry__5_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(26),
      I1 => left_edge_loc_2_reg_223(26),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(26),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(26),
      O => \tmp_11_fu_819_p2_carry__5_i_6_n_0\
    );
\tmp_11_fu_819_p2_carry__5_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(25),
      I1 => left_edge_loc_2_reg_223(25),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(25),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(25),
      O => \tmp_11_fu_819_p2_carry__5_i_7_n_0\
    );
\tmp_11_fu_819_p2_carry__5_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(24),
      I1 => left_edge_loc_2_reg_223(24),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(24),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(24),
      O => \tmp_11_fu_819_p2_carry__5_i_8_n_0\
    );
\tmp_11_fu_819_p2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_11_fu_819_p2_carry__5_n_0\,
      CO(3) => \NLW_tmp_11_fu_819_p2_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \tmp_11_fu_819_p2_carry__6_n_1\,
      CO(1) => \tmp_11_fu_819_p2_carry__6_n_2\,
      CO(0) => \tmp_11_fu_819_p2_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \tmp_30_fu_801_p1__0\(30 downto 28),
      O(3) => tmp_11_fu_819_p2(31),
      O(2 downto 0) => \NLW_tmp_11_fu_819_p2_carry__6_O_UNCONNECTED\(2 downto 0),
      S(3) => \tmp_11_fu_819_p2_carry__6_i_4_n_0\,
      S(2) => \tmp_11_fu_819_p2_carry__6_i_5_n_0\,
      S(1) => \tmp_11_fu_819_p2_carry__6_i_6_n_0\,
      S(0) => \tmp_11_fu_819_p2_carry__6_i_7_n_0\
    );
\tmp_11_fu_819_p2_carry__6_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(30),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(30),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(30),
      O => \tmp_30_fu_801_p1__0\(30)
    );
\tmp_11_fu_819_p2_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(29),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(29),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(29),
      O => \tmp_30_fu_801_p1__0\(29)
    );
\tmp_11_fu_819_p2_carry__6_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(28),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(28),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(28),
      O => \tmp_30_fu_801_p1__0\(28)
    );
\tmp_11_fu_819_p2_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => left_edge_loc_2_reg_223(31),
      I1 => bottom_edge_flag_2_reg_2610,
      I2 => width_left_edge_load_reg_1140(31),
      I3 => p_0_in1_in,
      I4 => p_current_x_cord_load_reg_1099(31),
      I5 => \right_edge_loc_2_reg_314[31]_i_2_n_0\,
      O => \tmp_11_fu_819_p2_carry__6_i_4_n_0\
    );
\tmp_11_fu_819_p2_carry__6_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(30),
      I1 => left_edge_loc_2_reg_223(30),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(30),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(30),
      O => \tmp_11_fu_819_p2_carry__6_i_5_n_0\
    );
\tmp_11_fu_819_p2_carry__6_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(29),
      I1 => left_edge_loc_2_reg_223(29),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(29),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(29),
      O => \tmp_11_fu_819_p2_carry__6_i_6_n_0\
    );
\tmp_11_fu_819_p2_carry__6_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_30_fu_801_p1__0\(28),
      I1 => left_edge_loc_2_reg_223(28),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(28),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(28),
      O => \tmp_11_fu_819_p2_carry__6_i_7_n_0\
    );
tmp_11_fu_819_p2_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(3),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(3),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(3),
      O => tmp_30_fu_801_p1(3)
    );
tmp_11_fu_819_p2_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(2),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(2),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(2),
      O => tmp_30_fu_801_p1(2)
    );
tmp_11_fu_819_p2_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(1),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(1),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(1),
      O => tmp_30_fu_801_p1(1)
    );
tmp_11_fu_819_p2_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(0),
      I1 => p_0_in0_in,
      I2 => p_right_edge_load_reg_1161(0),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => right_edge_loc_2_reg_314(0),
      O => tmp_30_fu_801_p1(0)
    );
tmp_11_fu_819_p2_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(3),
      I1 => left_edge_loc_2_reg_223(3),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(3),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(3),
      O => tmp_11_fu_819_p2_carry_i_5_n_0
    );
tmp_11_fu_819_p2_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(2),
      I1 => left_edge_loc_2_reg_223(2),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(2),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(2),
      O => tmp_11_fu_819_p2_carry_i_6_n_0
    );
tmp_11_fu_819_p2_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(1),
      I1 => left_edge_loc_2_reg_223(1),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(1),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(1),
      O => tmp_11_fu_819_p2_carry_i_7_n_0
    );
tmp_11_fu_819_p2_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_30_fu_801_p1(0),
      I1 => left_edge_loc_2_reg_223(0),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => width_left_edge_load_reg_1140(0),
      I4 => p_0_in1_in,
      I5 => p_current_x_cord_load_reg_1099(0),
      O => tmp_11_fu_819_p2_carry_i_8_n_0
    );
\tmp_11_reg_1190_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(0),
      Q => tmp_11_reg_1190(0),
      R => '0'
    );
\tmp_11_reg_1190_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(10),
      Q => tmp_11_reg_1190(10),
      R => '0'
    );
\tmp_11_reg_1190_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(11),
      Q => tmp_11_reg_1190(11),
      R => '0'
    );
\tmp_11_reg_1190_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(12),
      Q => tmp_11_reg_1190(12),
      R => '0'
    );
\tmp_11_reg_1190_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(13),
      Q => tmp_11_reg_1190(13),
      R => '0'
    );
\tmp_11_reg_1190_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(14),
      Q => tmp_11_reg_1190(14),
      R => '0'
    );
\tmp_11_reg_1190_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(15),
      Q => tmp_11_reg_1190(15),
      R => '0'
    );
\tmp_11_reg_1190_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(16),
      Q => tmp_11_reg_1190(16),
      R => '0'
    );
\tmp_11_reg_1190_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(1),
      Q => tmp_11_reg_1190(1),
      R => '0'
    );
\tmp_11_reg_1190_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(2),
      Q => tmp_11_reg_1190(2),
      R => '0'
    );
\tmp_11_reg_1190_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(31),
      Q => tmp_11_reg_1190(31),
      R => '0'
    );
\tmp_11_reg_1190_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(3),
      Q => tmp_11_reg_1190(3),
      R => '0'
    );
\tmp_11_reg_1190_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(4),
      Q => tmp_11_reg_1190(4),
      R => '0'
    );
\tmp_11_reg_1190_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(5),
      Q => tmp_11_reg_1190(5),
      R => '0'
    );
\tmp_11_reg_1190_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(6),
      Q => tmp_11_reg_1190(6),
      R => '0'
    );
\tmp_11_reg_1190_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(7),
      Q => tmp_11_reg_1190(7),
      R => '0'
    );
\tmp_11_reg_1190_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(8),
      Q => tmp_11_reg_1190(8),
      R => '0'
    );
\tmp_11_reg_1190_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_11_fu_819_p2(9),
      Q => tmp_11_reg_1190(9),
      R => '0'
    );
tmp_14_fu_825_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tmp_14_fu_825_p2_carry_n_0,
      CO(2) => tmp_14_fu_825_p2_carry_n_1,
      CO(1) => tmp_14_fu_825_p2_carry_n_2,
      CO(0) => tmp_14_fu_825_p2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => tmp_29_fu_797_p1(3 downto 0),
      O(3 downto 0) => tmp_14_fu_825_p2(3 downto 0),
      S(3) => tmp_14_fu_825_p2_carry_i_1_n_0,
      S(2) => tmp_14_fu_825_p2_carry_i_2_n_0,
      S(1) => tmp_14_fu_825_p2_carry_i_3_n_0,
      S(0) => tmp_14_fu_825_p2_carry_i_4_n_0
    );
\tmp_14_fu_825_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tmp_14_fu_825_p2_carry_n_0,
      CO(3) => \tmp_14_fu_825_p2_carry__0_n_0\,
      CO(2) => \tmp_14_fu_825_p2_carry__0_n_1\,
      CO(1) => \tmp_14_fu_825_p2_carry__0_n_2\,
      CO(0) => \tmp_14_fu_825_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tmp_29_fu_797_p1(7 downto 4),
      O(3 downto 0) => tmp_14_fu_825_p2(7 downto 4),
      S(3) => \tmp_14_fu_825_p2_carry__0_i_1_n_0\,
      S(2) => \tmp_14_fu_825_p2_carry__0_i_2_n_0\,
      S(1) => \tmp_14_fu_825_p2_carry__0_i_3_n_0\,
      S(0) => \tmp_14_fu_825_p2_carry__0_i_4_n_0\
    );
\tmp_14_fu_825_p2_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(7),
      I1 => upper_edge_loc_2_reg_252(7),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(7),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(7),
      O => \tmp_14_fu_825_p2_carry__0_i_1_n_0\
    );
\tmp_14_fu_825_p2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(6),
      I1 => upper_edge_loc_2_reg_252(6),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(6),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(6),
      O => \tmp_14_fu_825_p2_carry__0_i_2_n_0\
    );
\tmp_14_fu_825_p2_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(5),
      I1 => upper_edge_loc_2_reg_252(5),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(5),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(5),
      O => \tmp_14_fu_825_p2_carry__0_i_3_n_0\
    );
\tmp_14_fu_825_p2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(4),
      I1 => upper_edge_loc_2_reg_252(4),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(4),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(4),
      O => \tmp_14_fu_825_p2_carry__0_i_4_n_0\
    );
\tmp_14_fu_825_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_14_fu_825_p2_carry__0_n_0\,
      CO(3) => \tmp_14_fu_825_p2_carry__1_n_0\,
      CO(2) => \tmp_14_fu_825_p2_carry__1_n_1\,
      CO(1) => \tmp_14_fu_825_p2_carry__1_n_2\,
      CO(0) => \tmp_14_fu_825_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tmp_29_fu_797_p1(11 downto 8),
      O(3 downto 0) => tmp_14_fu_825_p2(11 downto 8),
      S(3) => \tmp_14_fu_825_p2_carry__1_i_1_n_0\,
      S(2) => \tmp_14_fu_825_p2_carry__1_i_2_n_0\,
      S(1) => \tmp_14_fu_825_p2_carry__1_i_3_n_0\,
      S(0) => \tmp_14_fu_825_p2_carry__1_i_4_n_0\
    );
\tmp_14_fu_825_p2_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(11),
      I1 => upper_edge_loc_2_reg_252(11),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(11),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(11),
      O => \tmp_14_fu_825_p2_carry__1_i_1_n_0\
    );
\tmp_14_fu_825_p2_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(10),
      I1 => upper_edge_loc_2_reg_252(10),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(10),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(10),
      O => \tmp_14_fu_825_p2_carry__1_i_2_n_0\
    );
\tmp_14_fu_825_p2_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(9),
      I1 => upper_edge_loc_2_reg_252(9),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(9),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(9),
      O => \tmp_14_fu_825_p2_carry__1_i_3_n_0\
    );
\tmp_14_fu_825_p2_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(8),
      I1 => upper_edge_loc_2_reg_252(8),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(8),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(8),
      O => \tmp_14_fu_825_p2_carry__1_i_4_n_0\
    );
\tmp_14_fu_825_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_14_fu_825_p2_carry__1_n_0\,
      CO(3) => \tmp_14_fu_825_p2_carry__2_n_0\,
      CO(2) => \tmp_14_fu_825_p2_carry__2_n_1\,
      CO(1) => \tmp_14_fu_825_p2_carry__2_n_2\,
      CO(0) => \tmp_14_fu_825_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tmp_29_fu_797_p1(15 downto 12),
      O(3 downto 0) => tmp_14_fu_825_p2(15 downto 12),
      S(3) => \tmp_14_fu_825_p2_carry__2_i_1_n_0\,
      S(2) => \tmp_14_fu_825_p2_carry__2_i_2_n_0\,
      S(1) => \tmp_14_fu_825_p2_carry__2_i_3_n_0\,
      S(0) => \tmp_14_fu_825_p2_carry__2_i_4_n_0\
    );
\tmp_14_fu_825_p2_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => bottom_edge_loc_2_reg_283(15),
      I1 => bottom_edge_flag_2_reg_2610,
      I2 => p_bottom_edge_load_reg_1154(15),
      I3 => p_0_in3_in,
      I4 => p_current_y_cord_load_reg_1111(15),
      I5 => tmp_34_fu_835_p1(15),
      O => \tmp_14_fu_825_p2_carry__2_i_1_n_0\
    );
\tmp_14_fu_825_p2_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(14),
      I1 => upper_edge_loc_2_reg_252(14),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(14),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(14),
      O => \tmp_14_fu_825_p2_carry__2_i_2_n_0\
    );
\tmp_14_fu_825_p2_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(13),
      I1 => upper_edge_loc_2_reg_252(13),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(13),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(13),
      O => \tmp_14_fu_825_p2_carry__2_i_3_n_0\
    );
\tmp_14_fu_825_p2_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(12),
      I1 => upper_edge_loc_2_reg_252(12),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(12),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(12),
      O => \tmp_14_fu_825_p2_carry__2_i_4_n_0\
    );
\tmp_14_fu_825_p2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_14_fu_825_p2_carry__2_n_0\,
      CO(3) => \tmp_14_fu_825_p2_carry__3_n_0\,
      CO(2) => \tmp_14_fu_825_p2_carry__3_n_1\,
      CO(1) => \tmp_14_fu_825_p2_carry__3_n_2\,
      CO(0) => \tmp_14_fu_825_p2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \tmp_29_fu_797_p1__0\(19 downto 16),
      O(3 downto 1) => \NLW_tmp_14_fu_825_p2_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => tmp_14_fu_825_p2(16),
      S(3) => \tmp_14_fu_825_p2_carry__3_i_5_n_0\,
      S(2) => \tmp_14_fu_825_p2_carry__3_i_6_n_0\,
      S(1) => \tmp_14_fu_825_p2_carry__3_i_7_n_0\,
      S(0) => \tmp_14_fu_825_p2_carry__3_i_8_n_0\
    );
\tmp_14_fu_825_p2_carry__3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(19),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(19),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(19),
      O => \tmp_29_fu_797_p1__0\(19)
    );
\tmp_14_fu_825_p2_carry__3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(18),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(18),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(18),
      O => \tmp_29_fu_797_p1__0\(18)
    );
\tmp_14_fu_825_p2_carry__3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(17),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(17),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(17),
      O => \tmp_29_fu_797_p1__0\(17)
    );
\tmp_14_fu_825_p2_carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(16),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(16),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(16),
      O => \tmp_29_fu_797_p1__0\(16)
    );
\tmp_14_fu_825_p2_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(19),
      I1 => upper_edge_loc_2_reg_252(19),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(19),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(19),
      O => \tmp_14_fu_825_p2_carry__3_i_5_n_0\
    );
\tmp_14_fu_825_p2_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(18),
      I1 => upper_edge_loc_2_reg_252(18),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(18),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(18),
      O => \tmp_14_fu_825_p2_carry__3_i_6_n_0\
    );
\tmp_14_fu_825_p2_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(17),
      I1 => upper_edge_loc_2_reg_252(17),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(17),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(17),
      O => \tmp_14_fu_825_p2_carry__3_i_7_n_0\
    );
\tmp_14_fu_825_p2_carry__3_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(16),
      I1 => upper_edge_loc_2_reg_252(16),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(16),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(16),
      O => \tmp_14_fu_825_p2_carry__3_i_8_n_0\
    );
\tmp_14_fu_825_p2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_14_fu_825_p2_carry__3_n_0\,
      CO(3) => \tmp_14_fu_825_p2_carry__4_n_0\,
      CO(2) => \tmp_14_fu_825_p2_carry__4_n_1\,
      CO(1) => \tmp_14_fu_825_p2_carry__4_n_2\,
      CO(0) => \tmp_14_fu_825_p2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \tmp_29_fu_797_p1__0\(23 downto 20),
      O(3 downto 0) => \NLW_tmp_14_fu_825_p2_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_14_fu_825_p2_carry__4_i_5_n_0\,
      S(2) => \tmp_14_fu_825_p2_carry__4_i_6_n_0\,
      S(1) => \tmp_14_fu_825_p2_carry__4_i_7_n_0\,
      S(0) => \tmp_14_fu_825_p2_carry__4_i_8_n_0\
    );
\tmp_14_fu_825_p2_carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(23),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(23),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(23),
      O => \tmp_29_fu_797_p1__0\(23)
    );
\tmp_14_fu_825_p2_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(22),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(22),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(22),
      O => \tmp_29_fu_797_p1__0\(22)
    );
\tmp_14_fu_825_p2_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(21),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(21),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(21),
      O => \tmp_29_fu_797_p1__0\(21)
    );
\tmp_14_fu_825_p2_carry__4_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(20),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(20),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(20),
      O => \tmp_29_fu_797_p1__0\(20)
    );
\tmp_14_fu_825_p2_carry__4_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(23),
      I1 => upper_edge_loc_2_reg_252(23),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(23),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(23),
      O => \tmp_14_fu_825_p2_carry__4_i_5_n_0\
    );
\tmp_14_fu_825_p2_carry__4_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(22),
      I1 => upper_edge_loc_2_reg_252(22),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(22),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(22),
      O => \tmp_14_fu_825_p2_carry__4_i_6_n_0\
    );
\tmp_14_fu_825_p2_carry__4_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(21),
      I1 => upper_edge_loc_2_reg_252(21),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(21),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(21),
      O => \tmp_14_fu_825_p2_carry__4_i_7_n_0\
    );
\tmp_14_fu_825_p2_carry__4_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(20),
      I1 => upper_edge_loc_2_reg_252(20),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(20),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(20),
      O => \tmp_14_fu_825_p2_carry__4_i_8_n_0\
    );
\tmp_14_fu_825_p2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_14_fu_825_p2_carry__4_n_0\,
      CO(3) => \tmp_14_fu_825_p2_carry__5_n_0\,
      CO(2) => \tmp_14_fu_825_p2_carry__5_n_1\,
      CO(1) => \tmp_14_fu_825_p2_carry__5_n_2\,
      CO(0) => \tmp_14_fu_825_p2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \tmp_29_fu_797_p1__0\(27 downto 24),
      O(3 downto 0) => \NLW_tmp_14_fu_825_p2_carry__5_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_14_fu_825_p2_carry__5_i_5_n_0\,
      S(2) => \tmp_14_fu_825_p2_carry__5_i_6_n_0\,
      S(1) => \tmp_14_fu_825_p2_carry__5_i_7_n_0\,
      S(0) => \tmp_14_fu_825_p2_carry__5_i_8_n_0\
    );
\tmp_14_fu_825_p2_carry__5_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(27),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(27),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(27),
      O => \tmp_29_fu_797_p1__0\(27)
    );
\tmp_14_fu_825_p2_carry__5_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(26),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(26),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(26),
      O => \tmp_29_fu_797_p1__0\(26)
    );
\tmp_14_fu_825_p2_carry__5_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(25),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(25),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(25),
      O => \tmp_29_fu_797_p1__0\(25)
    );
\tmp_14_fu_825_p2_carry__5_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(24),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(24),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(24),
      O => \tmp_29_fu_797_p1__0\(24)
    );
\tmp_14_fu_825_p2_carry__5_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(27),
      I1 => upper_edge_loc_2_reg_252(27),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(27),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(27),
      O => \tmp_14_fu_825_p2_carry__5_i_5_n_0\
    );
\tmp_14_fu_825_p2_carry__5_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(26),
      I1 => upper_edge_loc_2_reg_252(26),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(26),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(26),
      O => \tmp_14_fu_825_p2_carry__5_i_6_n_0\
    );
\tmp_14_fu_825_p2_carry__5_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(25),
      I1 => upper_edge_loc_2_reg_252(25),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(25),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(25),
      O => \tmp_14_fu_825_p2_carry__5_i_7_n_0\
    );
\tmp_14_fu_825_p2_carry__5_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(24),
      I1 => upper_edge_loc_2_reg_252(24),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(24),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(24),
      O => \tmp_14_fu_825_p2_carry__5_i_8_n_0\
    );
\tmp_14_fu_825_p2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_14_fu_825_p2_carry__5_n_0\,
      CO(3) => \NLW_tmp_14_fu_825_p2_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \tmp_14_fu_825_p2_carry__6_n_1\,
      CO(1) => \tmp_14_fu_825_p2_carry__6_n_2\,
      CO(0) => \tmp_14_fu_825_p2_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \tmp_29_fu_797_p1__0\(30 downto 28),
      O(3) => tmp_14_fu_825_p2(31),
      O(2 downto 0) => \NLW_tmp_14_fu_825_p2_carry__6_O_UNCONNECTED\(2 downto 0),
      S(3) => \tmp_14_fu_825_p2_carry__6_i_4_n_0\,
      S(2) => \tmp_14_fu_825_p2_carry__6_i_5_n_0\,
      S(1) => \tmp_14_fu_825_p2_carry__6_i_6_n_0\,
      S(0) => \tmp_14_fu_825_p2_carry__6_i_7_n_0\
    );
\tmp_14_fu_825_p2_carry__6_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(30),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(30),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(30),
      O => \tmp_29_fu_797_p1__0\(30)
    );
\tmp_14_fu_825_p2_carry__6_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(29),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(29),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(29),
      O => \tmp_29_fu_797_p1__0\(29)
    );
\tmp_14_fu_825_p2_carry__6_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(28),
      I1 => p_0_in3_in,
      I2 => p_bottom_edge_load_reg_1154(28),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => bottom_edge_loc_2_reg_283(28),
      O => \tmp_29_fu_797_p1__0\(28)
    );
\tmp_14_fu_825_p2_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111DDD1DEEE222E2"
    )
        port map (
      I0 => upper_edge_loc_2_reg_252(31),
      I1 => bottom_edge_flag_2_reg_2610,
      I2 => height_upper_edge_lo_reg_1147(31),
      I3 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I4 => p_current_y_cord_load_reg_1111(31),
      I5 => \bottom_edge_loc_2_reg_283[31]_i_2_n_0\,
      O => \tmp_14_fu_825_p2_carry__6_i_4_n_0\
    );
\tmp_14_fu_825_p2_carry__6_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(30),
      I1 => upper_edge_loc_2_reg_252(30),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(30),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(30),
      O => \tmp_14_fu_825_p2_carry__6_i_5_n_0\
    );
\tmp_14_fu_825_p2_carry__6_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(29),
      I1 => upper_edge_loc_2_reg_252(29),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(29),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(29),
      O => \tmp_14_fu_825_p2_carry__6_i_6_n_0\
    );
\tmp_14_fu_825_p2_carry__6_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => \tmp_29_fu_797_p1__0\(28),
      I1 => upper_edge_loc_2_reg_252(28),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(28),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(28),
      O => \tmp_14_fu_825_p2_carry__6_i_7_n_0\
    );
tmp_14_fu_825_p2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(3),
      I1 => upper_edge_loc_2_reg_252(3),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(3),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(3),
      O => tmp_14_fu_825_p2_carry_i_1_n_0
    );
tmp_14_fu_825_p2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(2),
      I1 => upper_edge_loc_2_reg_252(2),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(2),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(2),
      O => tmp_14_fu_825_p2_carry_i_2_n_0
    );
tmp_14_fu_825_p2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(1),
      I1 => upper_edge_loc_2_reg_252(1),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(1),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(1),
      O => tmp_14_fu_825_p2_carry_i_3_n_0
    );
tmp_14_fu_825_p2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"565656A6A6A656A6"
    )
        port map (
      I0 => tmp_29_fu_797_p1(0),
      I1 => upper_edge_loc_2_reg_252(0),
      I2 => bottom_edge_flag_2_reg_2610,
      I3 => height_upper_edge_lo_reg_1147(0),
      I4 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I5 => p_current_y_cord_load_reg_1111(0),
      O => tmp_14_fu_825_p2_carry_i_4_n_0
    );
\tmp_14_reg_1197_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(0),
      Q => tmp_14_reg_1197(0),
      R => '0'
    );
\tmp_14_reg_1197_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(10),
      Q => tmp_14_reg_1197(10),
      R => '0'
    );
\tmp_14_reg_1197_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(11),
      Q => tmp_14_reg_1197(11),
      R => '0'
    );
\tmp_14_reg_1197_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(12),
      Q => tmp_14_reg_1197(12),
      R => '0'
    );
\tmp_14_reg_1197_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(13),
      Q => tmp_14_reg_1197(13),
      R => '0'
    );
\tmp_14_reg_1197_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(14),
      Q => tmp_14_reg_1197(14),
      R => '0'
    );
\tmp_14_reg_1197_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(15),
      Q => tmp_14_reg_1197(15),
      R => '0'
    );
\tmp_14_reg_1197_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(16),
      Q => tmp_14_reg_1197(16),
      R => '0'
    );
\tmp_14_reg_1197_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(1),
      Q => tmp_14_reg_1197(1),
      R => '0'
    );
\tmp_14_reg_1197_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(2),
      Q => tmp_14_reg_1197(2),
      R => '0'
    );
\tmp_14_reg_1197_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(31),
      Q => tmp_14_reg_1197(31),
      R => '0'
    );
\tmp_14_reg_1197_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(3),
      Q => tmp_14_reg_1197(3),
      R => '0'
    );
\tmp_14_reg_1197_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(4),
      Q => tmp_14_reg_1197(4),
      R => '0'
    );
\tmp_14_reg_1197_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(5),
      Q => tmp_14_reg_1197(5),
      R => '0'
    );
\tmp_14_reg_1197_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(6),
      Q => tmp_14_reg_1197(6),
      R => '0'
    );
\tmp_14_reg_1197_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(7),
      Q => tmp_14_reg_1197(7),
      R => '0'
    );
\tmp_14_reg_1197_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(8),
      Q => tmp_14_reg_1197(8),
      R => '0'
    );
\tmp_14_reg_1197_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \p_4_reg_1204[63]_i_2_n_0\,
      D => tmp_14_fu_825_p2(9),
      Q => tmp_14_reg_1197(9),
      R => '0'
    );
\tmp_4_reg_1124[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \tmp_4_reg_1124[0]_i_2_n_0\,
      I1 => \tmp_4_reg_1124[0]_i_3_n_0\,
      I2 => \tmp_4_reg_1124[0]_i_4_n_0\,
      I3 => \tmp_4_reg_1124[0]_i_5_n_0\,
      I4 => \tmp_4_reg_1124[0]_i_6_n_0\,
      I5 => \tmp_4_reg_1124[0]_i_7_n_0\,
      O => tmp_4_fu_488_p2
    );
\tmp_4_reg_1124[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => current_y_cord(26),
      I1 => current_x_cord(26),
      I2 => current_y_cord(27),
      I3 => reset,
      I4 => current_x_cord(27),
      O => \tmp_4_reg_1124[0]_i_10_n_0\
    );
\tmp_4_reg_1124[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => current_x_cord(30),
      I1 => current_y_cord(30),
      I2 => current_x_cord(31),
      I3 => reset,
      I4 => current_y_cord(31),
      O => \tmp_4_reg_1124[0]_i_11_n_0\
    );
\tmp_4_reg_1124[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => current_x_cord(0),
      I1 => current_y_cord(0),
      I2 => current_y_cord(1),
      I3 => reset,
      I4 => current_x_cord(1),
      O => \tmp_4_reg_1124[0]_i_12_n_0\
    );
\tmp_4_reg_1124[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => current_x_cord(2),
      I1 => current_y_cord(2),
      I2 => current_y_cord(3),
      I3 => reset,
      I4 => current_x_cord(3),
      O => \tmp_4_reg_1124[0]_i_13_n_0\
    );
\tmp_4_reg_1124[0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => current_x_cord(5),
      I1 => current_y_cord(5),
      I2 => current_x_cord(4),
      I3 => reset,
      I4 => current_y_cord(4),
      O => \tmp_4_reg_1124[0]_i_14_n_0\
    );
\tmp_4_reg_1124[0]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => current_x_cord(7),
      I1 => current_y_cord(7),
      I2 => current_x_cord(6),
      I3 => reset,
      I4 => current_y_cord(6),
      O => \tmp_4_reg_1124[0]_i_15_n_0\
    );
\tmp_4_reg_1124[0]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => current_x_cord(8),
      I1 => current_y_cord(8),
      I2 => current_y_cord(9),
      I3 => reset,
      I4 => current_x_cord(9),
      O => \tmp_4_reg_1124[0]_i_16_n_0\
    );
\tmp_4_reg_1124[0]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => current_x_cord(10),
      I1 => current_y_cord(10),
      I2 => current_y_cord(11),
      I3 => reset,
      I4 => current_x_cord(11),
      O => \tmp_4_reg_1124[0]_i_17_n_0\
    );
\tmp_4_reg_1124[0]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => current_x_cord(13),
      I1 => current_y_cord(13),
      I2 => current_x_cord(12),
      I3 => reset,
      I4 => current_y_cord(12),
      O => \tmp_4_reg_1124[0]_i_18_n_0\
    );
\tmp_4_reg_1124[0]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => current_x_cord(15),
      I1 => current_y_cord(15),
      I2 => current_x_cord(14),
      I3 => reset,
      I4 => current_y_cord(14),
      O => \tmp_4_reg_1124[0]_i_19_n_0\
    );
\tmp_4_reg_1124[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF33333332"
    )
        port map (
      I0 => current_x_cord(17),
      I1 => reset,
      I2 => current_y_cord(17),
      I3 => current_y_cord(16),
      I4 => current_x_cord(16),
      I5 => \tmp_4_reg_1124[0]_i_8_n_0\,
      O => \tmp_4_reg_1124[0]_i_2_n_0\
    );
\tmp_4_reg_1124[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF33333332"
    )
        port map (
      I0 => current_y_cord(20),
      I1 => reset,
      I2 => current_x_cord(20),
      I3 => current_x_cord(21),
      I4 => current_y_cord(21),
      I5 => \tmp_4_reg_1124[0]_i_9_n_0\,
      O => \tmp_4_reg_1124[0]_i_3_n_0\
    );
\tmp_4_reg_1124[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCCCCD"
    )
        port map (
      I0 => current_x_cord(25),
      I1 => reset,
      I2 => current_y_cord(25),
      I3 => current_y_cord(24),
      I4 => current_x_cord(24),
      I5 => \tmp_4_reg_1124[0]_i_10_n_0\,
      O => \tmp_4_reg_1124[0]_i_4_n_0\
    );
\tmp_4_reg_1124[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF33333332"
    )
        port map (
      I0 => current_y_cord(28),
      I1 => reset,
      I2 => current_x_cord(28),
      I3 => current_x_cord(29),
      I4 => current_y_cord(29),
      I5 => \tmp_4_reg_1124[0]_i_11_n_0\,
      O => \tmp_4_reg_1124[0]_i_5_n_0\
    );
\tmp_4_reg_1124[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \tmp_4_reg_1124[0]_i_12_n_0\,
      I1 => \tmp_4_reg_1124[0]_i_13_n_0\,
      I2 => \tmp_4_reg_1124[0]_i_14_n_0\,
      I3 => \tmp_4_reg_1124[0]_i_15_n_0\,
      O => \tmp_4_reg_1124[0]_i_6_n_0\
    );
\tmp_4_reg_1124[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \tmp_4_reg_1124[0]_i_16_n_0\,
      I1 => \tmp_4_reg_1124[0]_i_17_n_0\,
      I2 => \tmp_4_reg_1124[0]_i_18_n_0\,
      I3 => \tmp_4_reg_1124[0]_i_19_n_0\,
      O => \tmp_4_reg_1124[0]_i_7_n_0\
    );
\tmp_4_reg_1124[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => current_y_cord(18),
      I1 => current_x_cord(18),
      I2 => current_y_cord(19),
      I3 => reset,
      I4 => current_x_cord(19),
      O => \tmp_4_reg_1124[0]_i_8_n_0\
    );
\tmp_4_reg_1124[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => current_x_cord(23),
      I1 => current_y_cord(23),
      I2 => current_x_cord(22),
      I3 => reset,
      I4 => current_y_cord(22),
      O => \tmp_4_reg_1124[0]_i_9_n_0\
    );
\tmp_4_reg_1124_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => tmp_4_fu_488_p2,
      Q => tmp_4_reg_1124,
      R => '0'
    );
tmp_5_fu_810_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tmp_5_fu_810_p2_carry_n_0,
      CO(2) => tmp_5_fu_810_p2_carry_n_1,
      CO(1) => tmp_5_fu_810_p2_carry_n_2,
      CO(0) => tmp_5_fu_810_p2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_tmp_5_fu_810_p2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => tmp_5_fu_810_p2_carry_i_1_n_0,
      S(2) => tmp_5_fu_810_p2_carry_i_2_n_0,
      S(1) => tmp_5_fu_810_p2_carry_i_3_n_0,
      S(0) => tmp_5_fu_810_p2_carry_i_4_n_0
    );
\tmp_5_fu_810_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tmp_5_fu_810_p2_carry_n_0,
      CO(3) => \tmp_5_fu_810_p2_carry__0_n_0\,
      CO(2) => \tmp_5_fu_810_p2_carry__0_n_1\,
      CO(1) => \tmp_5_fu_810_p2_carry__0_n_2\,
      CO(0) => \tmp_5_fu_810_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_5_fu_810_p2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_5_fu_810_p2_carry__0_i_1_n_0\,
      S(2) => \tmp_5_fu_810_p2_carry__0_i_2_n_0\,
      S(1) => \tmp_5_fu_810_p2_carry__0_i_3_n_0\,
      S(0) => \tmp_5_fu_810_p2_carry__0_i_4_n_0\
    );
\tmp_5_fu_810_p2_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp_9_fu_805_p2(21),
      I1 => p_current_y_cord_load_reg_1111(21),
      I2 => tmp_9_fu_805_p2(22),
      I3 => p_current_y_cord_load_reg_1111(22),
      I4 => p_current_y_cord_load_reg_1111(23),
      I5 => tmp_9_fu_805_p2(23),
      O => \tmp_5_fu_810_p2_carry__0_i_1_n_0\
    );
\tmp_5_fu_810_p2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp_9_fu_805_p2(18),
      I1 => p_current_y_cord_load_reg_1111(18),
      I2 => tmp_9_fu_805_p2(19),
      I3 => p_current_y_cord_load_reg_1111(19),
      I4 => p_current_y_cord_load_reg_1111(20),
      I5 => tmp_9_fu_805_p2(20),
      O => \tmp_5_fu_810_p2_carry__0_i_2_n_0\
    );
\tmp_5_fu_810_p2_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp_9_fu_805_p2(16),
      I1 => p_current_y_cord_load_reg_1111(16),
      I2 => tmp_9_fu_805_p2(17),
      I3 => p_current_y_cord_load_reg_1111(17),
      I4 => p_current_y_cord_load_reg_1111(15),
      I5 => tmp_9_fu_805_p2(15),
      O => \tmp_5_fu_810_p2_carry__0_i_3_n_0\
    );
\tmp_5_fu_810_p2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp_9_fu_805_p2(13),
      I1 => p_current_y_cord_load_reg_1111(13),
      I2 => tmp_9_fu_805_p2(14),
      I3 => p_current_y_cord_load_reg_1111(14),
      I4 => p_current_y_cord_load_reg_1111(12),
      I5 => tmp_9_fu_805_p2(12),
      O => \tmp_5_fu_810_p2_carry__0_i_4_n_0\
    );
\tmp_5_fu_810_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_5_fu_810_p2_carry__0_n_0\,
      CO(3) => \NLW_tmp_5_fu_810_p2_carry__1_CO_UNCONNECTED\(3),
      CO(2) => tmp_5_fu_810_p2,
      CO(1) => \tmp_5_fu_810_p2_carry__1_n_2\,
      CO(0) => \tmp_5_fu_810_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_5_fu_810_p2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \tmp_5_fu_810_p2_carry__1_i_1_n_0\,
      S(1) => \tmp_5_fu_810_p2_carry__1_i_2_n_0\,
      S(0) => \tmp_5_fu_810_p2_carry__1_i_3_n_0\
    );
\tmp_5_fu_810_p2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(31),
      I1 => tmp_9_fu_805_p2(31),
      I2 => p_current_y_cord_load_reg_1111(30),
      I3 => tmp_9_fu_805_p2(30),
      O => \tmp_5_fu_810_p2_carry__1_i_1_n_0\
    );
\tmp_5_fu_810_p2_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp_9_fu_805_p2(27),
      I1 => p_current_y_cord_load_reg_1111(27),
      I2 => tmp_9_fu_805_p2(29),
      I3 => p_current_y_cord_load_reg_1111(29),
      I4 => p_current_y_cord_load_reg_1111(28),
      I5 => tmp_9_fu_805_p2(28),
      O => \tmp_5_fu_810_p2_carry__1_i_2_n_0\
    );
\tmp_5_fu_810_p2_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp_9_fu_805_p2(25),
      I1 => p_current_y_cord_load_reg_1111(25),
      I2 => tmp_9_fu_805_p2(26),
      I3 => p_current_y_cord_load_reg_1111(26),
      I4 => p_current_y_cord_load_reg_1111(24),
      I5 => tmp_9_fu_805_p2(24),
      O => \tmp_5_fu_810_p2_carry__1_i_3_n_0\
    );
tmp_5_fu_810_p2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp_9_fu_805_p2(10),
      I1 => p_current_y_cord_load_reg_1111(10),
      I2 => tmp_9_fu_805_p2(11),
      I3 => p_current_y_cord_load_reg_1111(11),
      I4 => p_current_y_cord_load_reg_1111(9),
      I5 => tmp_9_fu_805_p2(9),
      O => tmp_5_fu_810_p2_carry_i_1_n_0
    );
tmp_5_fu_810_p2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp_9_fu_805_p2(6),
      I1 => p_current_y_cord_load_reg_1111(6),
      I2 => tmp_9_fu_805_p2(7),
      I3 => p_current_y_cord_load_reg_1111(7),
      I4 => p_current_y_cord_load_reg_1111(8),
      I5 => tmp_9_fu_805_p2(8),
      O => tmp_5_fu_810_p2_carry_i_2_n_0
    );
tmp_5_fu_810_p2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => tmp_9_fu_805_p2(4),
      I1 => p_current_y_cord_load_reg_1111(4),
      I2 => tmp_9_fu_805_p2(5),
      I3 => p_current_y_cord_load_reg_1111(5),
      I4 => p_current_y_cord_load_reg_1111(3),
      I5 => tmp_9_fu_805_p2(3),
      O => tmp_5_fu_810_p2_carry_i_3_n_0
    );
tmp_5_fu_810_p2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(0),
      I1 => height(0),
      I2 => tmp_9_fu_805_p2(1),
      I3 => p_current_y_cord_load_reg_1111(1),
      I4 => tmp_9_fu_805_p2(2),
      I5 => p_current_y_cord_load_reg_1111(2),
      O => tmp_5_fu_810_p2_carry_i_4_n_0
    );
\tmp_5_reg_1176[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_5_fu_810_p2,
      I1 => ap_CS_fsm_state2,
      I2 => tmp_5_reg_1176,
      O => \tmp_5_reg_1176[0]_i_1_n_0\
    );
\tmp_5_reg_1176_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \tmp_5_reg_1176[0]_i_1_n_0\,
      Q => tmp_5_reg_1176,
      R => '0'
    );
tmp_6_fu_724_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tmp_6_fu_724_p2_carry_n_0,
      CO(2) => tmp_6_fu_724_p2_carry_n_1,
      CO(1) => tmp_6_fu_724_p2_carry_n_2,
      CO(0) => tmp_6_fu_724_p2_carry_n_3,
      CYINIT => '0',
      DI(3) => tmp_6_fu_724_p2_carry_i_1_n_0,
      DI(2) => tmp_6_fu_724_p2_carry_i_2_n_0,
      DI(1) => tmp_6_fu_724_p2_carry_i_3_n_0,
      DI(0) => tmp_6_fu_724_p2_carry_i_4_n_0,
      O(3 downto 0) => NLW_tmp_6_fu_724_p2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => tmp_6_fu_724_p2_carry_i_5_n_0,
      S(2) => tmp_6_fu_724_p2_carry_i_6_n_0,
      S(1) => tmp_6_fu_724_p2_carry_i_7_n_0,
      S(0) => tmp_6_fu_724_p2_carry_i_8_n_0
    );
\tmp_6_fu_724_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tmp_6_fu_724_p2_carry_n_0,
      CO(3) => \tmp_6_fu_724_p2_carry__0_n_0\,
      CO(2) => \tmp_6_fu_724_p2_carry__0_n_1\,
      CO(1) => \tmp_6_fu_724_p2_carry__0_n_2\,
      CO(0) => \tmp_6_fu_724_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_6_fu_724_p2_carry__0_i_1_n_0\,
      DI(2) => \tmp_6_fu_724_p2_carry__0_i_2_n_0\,
      DI(1) => \tmp_6_fu_724_p2_carry__0_i_3_n_0\,
      DI(0) => \tmp_6_fu_724_p2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_6_fu_724_p2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_6_fu_724_p2_carry__0_i_5_n_0\,
      S(2) => \tmp_6_fu_724_p2_carry__0_i_6_n_0\,
      S(1) => \tmp_6_fu_724_p2_carry__0_i_7_n_0\,
      S(0) => \tmp_6_fu_724_p2_carry__0_i_8_n_0\
    );
\tmp_6_fu_724_p2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(15),
      I1 => width_left_edge_load_reg_1140(15),
      I2 => width_left_edge_load_reg_1140(14),
      I3 => p_current_x_cord_load_reg_1099(14),
      O => \tmp_6_fu_724_p2_carry__0_i_1_n_0\
    );
\tmp_6_fu_724_p2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(13),
      I1 => width_left_edge_load_reg_1140(13),
      I2 => width_left_edge_load_reg_1140(12),
      I3 => p_current_x_cord_load_reg_1099(12),
      O => \tmp_6_fu_724_p2_carry__0_i_2_n_0\
    );
\tmp_6_fu_724_p2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(11),
      I1 => width_left_edge_load_reg_1140(11),
      I2 => width_left_edge_load_reg_1140(10),
      I3 => p_current_x_cord_load_reg_1099(10),
      O => \tmp_6_fu_724_p2_carry__0_i_3_n_0\
    );
\tmp_6_fu_724_p2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(9),
      I1 => width_left_edge_load_reg_1140(9),
      I2 => width_left_edge_load_reg_1140(8),
      I3 => p_current_x_cord_load_reg_1099(8),
      O => \tmp_6_fu_724_p2_carry__0_i_4_n_0\
    );
\tmp_6_fu_724_p2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(15),
      I1 => p_current_x_cord_load_reg_1099(15),
      I2 => width_left_edge_load_reg_1140(14),
      I3 => p_current_x_cord_load_reg_1099(14),
      O => \tmp_6_fu_724_p2_carry__0_i_5_n_0\
    );
\tmp_6_fu_724_p2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(13),
      I1 => p_current_x_cord_load_reg_1099(13),
      I2 => width_left_edge_load_reg_1140(12),
      I3 => p_current_x_cord_load_reg_1099(12),
      O => \tmp_6_fu_724_p2_carry__0_i_6_n_0\
    );
\tmp_6_fu_724_p2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(11),
      I1 => p_current_x_cord_load_reg_1099(11),
      I2 => width_left_edge_load_reg_1140(10),
      I3 => p_current_x_cord_load_reg_1099(10),
      O => \tmp_6_fu_724_p2_carry__0_i_7_n_0\
    );
\tmp_6_fu_724_p2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(9),
      I1 => p_current_x_cord_load_reg_1099(9),
      I2 => width_left_edge_load_reg_1140(8),
      I3 => p_current_x_cord_load_reg_1099(8),
      O => \tmp_6_fu_724_p2_carry__0_i_8_n_0\
    );
\tmp_6_fu_724_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_6_fu_724_p2_carry__0_n_0\,
      CO(3) => \tmp_6_fu_724_p2_carry__1_n_0\,
      CO(2) => \tmp_6_fu_724_p2_carry__1_n_1\,
      CO(1) => \tmp_6_fu_724_p2_carry__1_n_2\,
      CO(0) => \tmp_6_fu_724_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_6_fu_724_p2_carry__1_i_1_n_0\,
      DI(2) => \tmp_6_fu_724_p2_carry__1_i_2_n_0\,
      DI(1) => \tmp_6_fu_724_p2_carry__1_i_3_n_0\,
      DI(0) => \tmp_6_fu_724_p2_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_6_fu_724_p2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_6_fu_724_p2_carry__1_i_5_n_0\,
      S(2) => \tmp_6_fu_724_p2_carry__1_i_6_n_0\,
      S(1) => \tmp_6_fu_724_p2_carry__1_i_7_n_0\,
      S(0) => \tmp_6_fu_724_p2_carry__1_i_8_n_0\
    );
\tmp_6_fu_724_p2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(23),
      I1 => width_left_edge_load_reg_1140(23),
      I2 => width_left_edge_load_reg_1140(22),
      I3 => p_current_x_cord_load_reg_1099(22),
      O => \tmp_6_fu_724_p2_carry__1_i_1_n_0\
    );
\tmp_6_fu_724_p2_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(21),
      I1 => width_left_edge_load_reg_1140(21),
      I2 => width_left_edge_load_reg_1140(20),
      I3 => p_current_x_cord_load_reg_1099(20),
      O => \tmp_6_fu_724_p2_carry__1_i_2_n_0\
    );
\tmp_6_fu_724_p2_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(19),
      I1 => width_left_edge_load_reg_1140(19),
      I2 => width_left_edge_load_reg_1140(18),
      I3 => p_current_x_cord_load_reg_1099(18),
      O => \tmp_6_fu_724_p2_carry__1_i_3_n_0\
    );
\tmp_6_fu_724_p2_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(17),
      I1 => width_left_edge_load_reg_1140(17),
      I2 => width_left_edge_load_reg_1140(16),
      I3 => p_current_x_cord_load_reg_1099(16),
      O => \tmp_6_fu_724_p2_carry__1_i_4_n_0\
    );
\tmp_6_fu_724_p2_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(23),
      I1 => p_current_x_cord_load_reg_1099(23),
      I2 => width_left_edge_load_reg_1140(22),
      I3 => p_current_x_cord_load_reg_1099(22),
      O => \tmp_6_fu_724_p2_carry__1_i_5_n_0\
    );
\tmp_6_fu_724_p2_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(21),
      I1 => p_current_x_cord_load_reg_1099(21),
      I2 => width_left_edge_load_reg_1140(20),
      I3 => p_current_x_cord_load_reg_1099(20),
      O => \tmp_6_fu_724_p2_carry__1_i_6_n_0\
    );
\tmp_6_fu_724_p2_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(19),
      I1 => p_current_x_cord_load_reg_1099(19),
      I2 => width_left_edge_load_reg_1140(18),
      I3 => p_current_x_cord_load_reg_1099(18),
      O => \tmp_6_fu_724_p2_carry__1_i_7_n_0\
    );
\tmp_6_fu_724_p2_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(17),
      I1 => p_current_x_cord_load_reg_1099(17),
      I2 => width_left_edge_load_reg_1140(16),
      I3 => p_current_x_cord_load_reg_1099(16),
      O => \tmp_6_fu_724_p2_carry__1_i_8_n_0\
    );
\tmp_6_fu_724_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_6_fu_724_p2_carry__1_n_0\,
      CO(3) => p_0_in1_in,
      CO(2) => \tmp_6_fu_724_p2_carry__2_n_1\,
      CO(1) => \tmp_6_fu_724_p2_carry__2_n_2\,
      CO(0) => \tmp_6_fu_724_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_6_fu_724_p2_carry__2_i_1_n_0\,
      DI(2) => \tmp_6_fu_724_p2_carry__2_i_2_n_0\,
      DI(1) => \tmp_6_fu_724_p2_carry__2_i_3_n_0\,
      DI(0) => \tmp_6_fu_724_p2_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_6_fu_724_p2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_6_fu_724_p2_carry__2_i_5_n_0\,
      S(2) => \tmp_6_fu_724_p2_carry__2_i_6_n_0\,
      S(1) => \tmp_6_fu_724_p2_carry__2_i_7_n_0\,
      S(0) => \tmp_6_fu_724_p2_carry__2_i_8_n_0\
    );
\tmp_6_fu_724_p2_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(31),
      I1 => width_left_edge_load_reg_1140(31),
      I2 => width_left_edge_load_reg_1140(30),
      I3 => p_current_x_cord_load_reg_1099(30),
      O => \tmp_6_fu_724_p2_carry__2_i_1_n_0\
    );
\tmp_6_fu_724_p2_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(29),
      I1 => width_left_edge_load_reg_1140(29),
      I2 => width_left_edge_load_reg_1140(28),
      I3 => p_current_x_cord_load_reg_1099(28),
      O => \tmp_6_fu_724_p2_carry__2_i_2_n_0\
    );
\tmp_6_fu_724_p2_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(27),
      I1 => width_left_edge_load_reg_1140(27),
      I2 => width_left_edge_load_reg_1140(26),
      I3 => p_current_x_cord_load_reg_1099(26),
      O => \tmp_6_fu_724_p2_carry__2_i_3_n_0\
    );
\tmp_6_fu_724_p2_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(25),
      I1 => width_left_edge_load_reg_1140(25),
      I2 => width_left_edge_load_reg_1140(24),
      I3 => p_current_x_cord_load_reg_1099(24),
      O => \tmp_6_fu_724_p2_carry__2_i_4_n_0\
    );
\tmp_6_fu_724_p2_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(31),
      I1 => p_current_x_cord_load_reg_1099(31),
      I2 => width_left_edge_load_reg_1140(30),
      I3 => p_current_x_cord_load_reg_1099(30),
      O => \tmp_6_fu_724_p2_carry__2_i_5_n_0\
    );
\tmp_6_fu_724_p2_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(29),
      I1 => p_current_x_cord_load_reg_1099(29),
      I2 => width_left_edge_load_reg_1140(28),
      I3 => p_current_x_cord_load_reg_1099(28),
      O => \tmp_6_fu_724_p2_carry__2_i_6_n_0\
    );
\tmp_6_fu_724_p2_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(27),
      I1 => p_current_x_cord_load_reg_1099(27),
      I2 => width_left_edge_load_reg_1140(26),
      I3 => p_current_x_cord_load_reg_1099(26),
      O => \tmp_6_fu_724_p2_carry__2_i_7_n_0\
    );
\tmp_6_fu_724_p2_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(25),
      I1 => p_current_x_cord_load_reg_1099(25),
      I2 => width_left_edge_load_reg_1140(24),
      I3 => p_current_x_cord_load_reg_1099(24),
      O => \tmp_6_fu_724_p2_carry__2_i_8_n_0\
    );
tmp_6_fu_724_p2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(7),
      I1 => width_left_edge_load_reg_1140(7),
      I2 => width_left_edge_load_reg_1140(6),
      I3 => p_current_x_cord_load_reg_1099(6),
      O => tmp_6_fu_724_p2_carry_i_1_n_0
    );
tmp_6_fu_724_p2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(5),
      I1 => width_left_edge_load_reg_1140(5),
      I2 => width_left_edge_load_reg_1140(4),
      I3 => p_current_x_cord_load_reg_1099(4),
      O => tmp_6_fu_724_p2_carry_i_2_n_0
    );
tmp_6_fu_724_p2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(3),
      I1 => width_left_edge_load_reg_1140(3),
      I2 => width_left_edge_load_reg_1140(2),
      I3 => p_current_x_cord_load_reg_1099(2),
      O => tmp_6_fu_724_p2_carry_i_3_n_0
    );
tmp_6_fu_724_p2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(1),
      I1 => width_left_edge_load_reg_1140(1),
      I2 => width_left_edge_load_reg_1140(0),
      I3 => p_current_x_cord_load_reg_1099(0),
      O => tmp_6_fu_724_p2_carry_i_4_n_0
    );
tmp_6_fu_724_p2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(7),
      I1 => p_current_x_cord_load_reg_1099(7),
      I2 => width_left_edge_load_reg_1140(6),
      I3 => p_current_x_cord_load_reg_1099(6),
      O => tmp_6_fu_724_p2_carry_i_5_n_0
    );
tmp_6_fu_724_p2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(5),
      I1 => p_current_x_cord_load_reg_1099(5),
      I2 => width_left_edge_load_reg_1140(4),
      I3 => p_current_x_cord_load_reg_1099(4),
      O => tmp_6_fu_724_p2_carry_i_6_n_0
    );
tmp_6_fu_724_p2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(3),
      I1 => p_current_x_cord_load_reg_1099(3),
      I2 => width_left_edge_load_reg_1140(2),
      I3 => p_current_x_cord_load_reg_1099(2),
      O => tmp_6_fu_724_p2_carry_i_7_n_0
    );
tmp_6_fu_724_p2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => width_left_edge_load_reg_1140(1),
      I1 => p_current_x_cord_load_reg_1099(1),
      I2 => width_left_edge_load_reg_1140(0),
      I3 => p_current_x_cord_load_reg_1099(0),
      O => tmp_6_fu_724_p2_carry_i_8_n_0
    );
tmp_7_fu_748_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tmp_7_fu_748_p2_carry_n_0,
      CO(2) => tmp_7_fu_748_p2_carry_n_1,
      CO(1) => tmp_7_fu_748_p2_carry_n_2,
      CO(0) => tmp_7_fu_748_p2_carry_n_3,
      CYINIT => '0',
      DI(3) => tmp_7_fu_748_p2_carry_i_1_n_0,
      DI(2) => tmp_7_fu_748_p2_carry_i_2_n_0,
      DI(1) => tmp_7_fu_748_p2_carry_i_3_n_0,
      DI(0) => tmp_7_fu_748_p2_carry_i_4_n_0,
      O(3 downto 0) => NLW_tmp_7_fu_748_p2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => tmp_7_fu_748_p2_carry_i_5_n_0,
      S(2) => tmp_7_fu_748_p2_carry_i_6_n_0,
      S(1) => tmp_7_fu_748_p2_carry_i_7_n_0,
      S(0) => tmp_7_fu_748_p2_carry_i_8_n_0
    );
\tmp_7_fu_748_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tmp_7_fu_748_p2_carry_n_0,
      CO(3) => \tmp_7_fu_748_p2_carry__0_n_0\,
      CO(2) => \tmp_7_fu_748_p2_carry__0_n_1\,
      CO(1) => \tmp_7_fu_748_p2_carry__0_n_2\,
      CO(0) => \tmp_7_fu_748_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_7_fu_748_p2_carry__0_i_1_n_0\,
      DI(2) => \tmp_7_fu_748_p2_carry__0_i_2_n_0\,
      DI(1) => \tmp_7_fu_748_p2_carry__0_i_3_n_0\,
      DI(0) => \tmp_7_fu_748_p2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_7_fu_748_p2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_7_fu_748_p2_carry__0_i_5_n_0\,
      S(2) => \tmp_7_fu_748_p2_carry__0_i_6_n_0\,
      S(1) => \tmp_7_fu_748_p2_carry__0_i_7_n_0\,
      S(0) => \tmp_7_fu_748_p2_carry__0_i_8_n_0\
    );
\tmp_7_fu_748_p2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(15),
      I1 => p_bottom_edge_load_reg_1154(15),
      I2 => p_current_y_cord_load_reg_1111(14),
      I3 => p_bottom_edge_load_reg_1154(14),
      O => \tmp_7_fu_748_p2_carry__0_i_1_n_0\
    );
\tmp_7_fu_748_p2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(13),
      I1 => p_bottom_edge_load_reg_1154(13),
      I2 => p_current_y_cord_load_reg_1111(12),
      I3 => p_bottom_edge_load_reg_1154(12),
      O => \tmp_7_fu_748_p2_carry__0_i_2_n_0\
    );
\tmp_7_fu_748_p2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(11),
      I1 => p_bottom_edge_load_reg_1154(11),
      I2 => p_current_y_cord_load_reg_1111(10),
      I3 => p_bottom_edge_load_reg_1154(10),
      O => \tmp_7_fu_748_p2_carry__0_i_3_n_0\
    );
\tmp_7_fu_748_p2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(9),
      I1 => p_bottom_edge_load_reg_1154(9),
      I2 => p_current_y_cord_load_reg_1111(8),
      I3 => p_bottom_edge_load_reg_1154(8),
      O => \tmp_7_fu_748_p2_carry__0_i_4_n_0\
    );
\tmp_7_fu_748_p2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(15),
      I1 => p_current_y_cord_load_reg_1111(15),
      I2 => p_bottom_edge_load_reg_1154(14),
      I3 => p_current_y_cord_load_reg_1111(14),
      O => \tmp_7_fu_748_p2_carry__0_i_5_n_0\
    );
\tmp_7_fu_748_p2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(13),
      I1 => p_current_y_cord_load_reg_1111(13),
      I2 => p_bottom_edge_load_reg_1154(12),
      I3 => p_current_y_cord_load_reg_1111(12),
      O => \tmp_7_fu_748_p2_carry__0_i_6_n_0\
    );
\tmp_7_fu_748_p2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(11),
      I1 => p_current_y_cord_load_reg_1111(11),
      I2 => p_bottom_edge_load_reg_1154(10),
      I3 => p_current_y_cord_load_reg_1111(10),
      O => \tmp_7_fu_748_p2_carry__0_i_7_n_0\
    );
\tmp_7_fu_748_p2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(9),
      I1 => p_current_y_cord_load_reg_1111(9),
      I2 => p_bottom_edge_load_reg_1154(8),
      I3 => p_current_y_cord_load_reg_1111(8),
      O => \tmp_7_fu_748_p2_carry__0_i_8_n_0\
    );
\tmp_7_fu_748_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_7_fu_748_p2_carry__0_n_0\,
      CO(3) => \tmp_7_fu_748_p2_carry__1_n_0\,
      CO(2) => \tmp_7_fu_748_p2_carry__1_n_1\,
      CO(1) => \tmp_7_fu_748_p2_carry__1_n_2\,
      CO(0) => \tmp_7_fu_748_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_7_fu_748_p2_carry__1_i_1_n_0\,
      DI(2) => \tmp_7_fu_748_p2_carry__1_i_2_n_0\,
      DI(1) => \tmp_7_fu_748_p2_carry__1_i_3_n_0\,
      DI(0) => \tmp_7_fu_748_p2_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_7_fu_748_p2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_7_fu_748_p2_carry__1_i_5_n_0\,
      S(2) => \tmp_7_fu_748_p2_carry__1_i_6_n_0\,
      S(1) => \tmp_7_fu_748_p2_carry__1_i_7_n_0\,
      S(0) => \tmp_7_fu_748_p2_carry__1_i_8_n_0\
    );
\tmp_7_fu_748_p2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(23),
      I1 => p_bottom_edge_load_reg_1154(23),
      I2 => p_current_y_cord_load_reg_1111(22),
      I3 => p_bottom_edge_load_reg_1154(22),
      O => \tmp_7_fu_748_p2_carry__1_i_1_n_0\
    );
\tmp_7_fu_748_p2_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(21),
      I1 => p_bottom_edge_load_reg_1154(21),
      I2 => p_current_y_cord_load_reg_1111(20),
      I3 => p_bottom_edge_load_reg_1154(20),
      O => \tmp_7_fu_748_p2_carry__1_i_2_n_0\
    );
\tmp_7_fu_748_p2_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(19),
      I1 => p_bottom_edge_load_reg_1154(19),
      I2 => p_current_y_cord_load_reg_1111(18),
      I3 => p_bottom_edge_load_reg_1154(18),
      O => \tmp_7_fu_748_p2_carry__1_i_3_n_0\
    );
\tmp_7_fu_748_p2_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(17),
      I1 => p_bottom_edge_load_reg_1154(17),
      I2 => p_current_y_cord_load_reg_1111(16),
      I3 => p_bottom_edge_load_reg_1154(16),
      O => \tmp_7_fu_748_p2_carry__1_i_4_n_0\
    );
\tmp_7_fu_748_p2_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(23),
      I1 => p_current_y_cord_load_reg_1111(23),
      I2 => p_bottom_edge_load_reg_1154(22),
      I3 => p_current_y_cord_load_reg_1111(22),
      O => \tmp_7_fu_748_p2_carry__1_i_5_n_0\
    );
\tmp_7_fu_748_p2_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(21),
      I1 => p_current_y_cord_load_reg_1111(21),
      I2 => p_bottom_edge_load_reg_1154(20),
      I3 => p_current_y_cord_load_reg_1111(20),
      O => \tmp_7_fu_748_p2_carry__1_i_6_n_0\
    );
\tmp_7_fu_748_p2_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(19),
      I1 => p_current_y_cord_load_reg_1111(19),
      I2 => p_bottom_edge_load_reg_1154(18),
      I3 => p_current_y_cord_load_reg_1111(18),
      O => \tmp_7_fu_748_p2_carry__1_i_7_n_0\
    );
\tmp_7_fu_748_p2_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(17),
      I1 => p_current_y_cord_load_reg_1111(17),
      I2 => p_bottom_edge_load_reg_1154(16),
      I3 => p_current_y_cord_load_reg_1111(16),
      O => \tmp_7_fu_748_p2_carry__1_i_8_n_0\
    );
\tmp_7_fu_748_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_7_fu_748_p2_carry__1_n_0\,
      CO(3) => p_0_in3_in,
      CO(2) => \tmp_7_fu_748_p2_carry__2_n_1\,
      CO(1) => \tmp_7_fu_748_p2_carry__2_n_2\,
      CO(0) => \tmp_7_fu_748_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_7_fu_748_p2_carry__2_i_1_n_0\,
      DI(2) => \tmp_7_fu_748_p2_carry__2_i_2_n_0\,
      DI(1) => \tmp_7_fu_748_p2_carry__2_i_3_n_0\,
      DI(0) => \tmp_7_fu_748_p2_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_7_fu_748_p2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_7_fu_748_p2_carry__2_i_5_n_0\,
      S(2) => \tmp_7_fu_748_p2_carry__2_i_6_n_0\,
      S(1) => \tmp_7_fu_748_p2_carry__2_i_7_n_0\,
      S(0) => \tmp_7_fu_748_p2_carry__2_i_8_n_0\
    );
\tmp_7_fu_748_p2_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(31),
      I1 => p_bottom_edge_load_reg_1154(31),
      I2 => p_current_y_cord_load_reg_1111(30),
      I3 => p_bottom_edge_load_reg_1154(30),
      O => \tmp_7_fu_748_p2_carry__2_i_1_n_0\
    );
\tmp_7_fu_748_p2_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(29),
      I1 => p_bottom_edge_load_reg_1154(29),
      I2 => p_current_y_cord_load_reg_1111(28),
      I3 => p_bottom_edge_load_reg_1154(28),
      O => \tmp_7_fu_748_p2_carry__2_i_2_n_0\
    );
\tmp_7_fu_748_p2_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(27),
      I1 => p_bottom_edge_load_reg_1154(27),
      I2 => p_current_y_cord_load_reg_1111(26),
      I3 => p_bottom_edge_load_reg_1154(26),
      O => \tmp_7_fu_748_p2_carry__2_i_3_n_0\
    );
\tmp_7_fu_748_p2_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(25),
      I1 => p_bottom_edge_load_reg_1154(25),
      I2 => p_current_y_cord_load_reg_1111(24),
      I3 => p_bottom_edge_load_reg_1154(24),
      O => \tmp_7_fu_748_p2_carry__2_i_4_n_0\
    );
\tmp_7_fu_748_p2_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(31),
      I1 => p_current_y_cord_load_reg_1111(31),
      I2 => p_bottom_edge_load_reg_1154(30),
      I3 => p_current_y_cord_load_reg_1111(30),
      O => \tmp_7_fu_748_p2_carry__2_i_5_n_0\
    );
\tmp_7_fu_748_p2_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(29),
      I1 => p_current_y_cord_load_reg_1111(29),
      I2 => p_bottom_edge_load_reg_1154(28),
      I3 => p_current_y_cord_load_reg_1111(28),
      O => \tmp_7_fu_748_p2_carry__2_i_6_n_0\
    );
\tmp_7_fu_748_p2_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(27),
      I1 => p_current_y_cord_load_reg_1111(27),
      I2 => p_bottom_edge_load_reg_1154(26),
      I3 => p_current_y_cord_load_reg_1111(26),
      O => \tmp_7_fu_748_p2_carry__2_i_7_n_0\
    );
\tmp_7_fu_748_p2_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(25),
      I1 => p_current_y_cord_load_reg_1111(25),
      I2 => p_bottom_edge_load_reg_1154(24),
      I3 => p_current_y_cord_load_reg_1111(24),
      O => \tmp_7_fu_748_p2_carry__2_i_8_n_0\
    );
tmp_7_fu_748_p2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(7),
      I1 => p_bottom_edge_load_reg_1154(7),
      I2 => p_current_y_cord_load_reg_1111(6),
      I3 => p_bottom_edge_load_reg_1154(6),
      O => tmp_7_fu_748_p2_carry_i_1_n_0
    );
tmp_7_fu_748_p2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(5),
      I1 => p_bottom_edge_load_reg_1154(5),
      I2 => p_current_y_cord_load_reg_1111(4),
      I3 => p_bottom_edge_load_reg_1154(4),
      O => tmp_7_fu_748_p2_carry_i_2_n_0
    );
tmp_7_fu_748_p2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(3),
      I1 => p_bottom_edge_load_reg_1154(3),
      I2 => p_current_y_cord_load_reg_1111(2),
      I3 => p_bottom_edge_load_reg_1154(2),
      O => tmp_7_fu_748_p2_carry_i_3_n_0
    );
tmp_7_fu_748_p2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(1),
      I1 => p_bottom_edge_load_reg_1154(1),
      I2 => p_current_y_cord_load_reg_1111(0),
      I3 => p_bottom_edge_load_reg_1154(0),
      O => tmp_7_fu_748_p2_carry_i_4_n_0
    );
tmp_7_fu_748_p2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(7),
      I1 => p_current_y_cord_load_reg_1111(7),
      I2 => p_bottom_edge_load_reg_1154(6),
      I3 => p_current_y_cord_load_reg_1111(6),
      O => tmp_7_fu_748_p2_carry_i_5_n_0
    );
tmp_7_fu_748_p2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(5),
      I1 => p_current_y_cord_load_reg_1111(5),
      I2 => p_bottom_edge_load_reg_1154(4),
      I3 => p_current_y_cord_load_reg_1111(4),
      O => tmp_7_fu_748_p2_carry_i_6_n_0
    );
tmp_7_fu_748_p2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(3),
      I1 => p_current_y_cord_load_reg_1111(3),
      I2 => p_bottom_edge_load_reg_1154(2),
      I3 => p_current_y_cord_load_reg_1111(2),
      O => tmp_7_fu_748_p2_carry_i_7_n_0
    );
tmp_7_fu_748_p2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_bottom_edge_load_reg_1154(1),
      I1 => p_current_y_cord_load_reg_1111(1),
      I2 => p_bottom_edge_load_reg_1154(0),
      I3 => p_current_y_cord_load_reg_1111(0),
      O => tmp_7_fu_748_p2_carry_i_8_n_0
    );
tmp_8_fu_773_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tmp_8_fu_773_p2_carry_n_0,
      CO(2) => tmp_8_fu_773_p2_carry_n_1,
      CO(1) => tmp_8_fu_773_p2_carry_n_2,
      CO(0) => tmp_8_fu_773_p2_carry_n_3,
      CYINIT => '0',
      DI(3) => tmp_8_fu_773_p2_carry_i_1_n_0,
      DI(2) => tmp_8_fu_773_p2_carry_i_2_n_0,
      DI(1) => tmp_8_fu_773_p2_carry_i_3_n_0,
      DI(0) => tmp_8_fu_773_p2_carry_i_4_n_0,
      O(3 downto 0) => NLW_tmp_8_fu_773_p2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => tmp_8_fu_773_p2_carry_i_5_n_0,
      S(2) => tmp_8_fu_773_p2_carry_i_6_n_0,
      S(1) => tmp_8_fu_773_p2_carry_i_7_n_0,
      S(0) => tmp_8_fu_773_p2_carry_i_8_n_0
    );
\tmp_8_fu_773_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tmp_8_fu_773_p2_carry_n_0,
      CO(3) => \tmp_8_fu_773_p2_carry__0_n_0\,
      CO(2) => \tmp_8_fu_773_p2_carry__0_n_1\,
      CO(1) => \tmp_8_fu_773_p2_carry__0_n_2\,
      CO(0) => \tmp_8_fu_773_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_8_fu_773_p2_carry__0_i_1_n_0\,
      DI(2) => \tmp_8_fu_773_p2_carry__0_i_2_n_0\,
      DI(1) => \tmp_8_fu_773_p2_carry__0_i_3_n_0\,
      DI(0) => \tmp_8_fu_773_p2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_8_fu_773_p2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_8_fu_773_p2_carry__0_i_5_n_0\,
      S(2) => \tmp_8_fu_773_p2_carry__0_i_6_n_0\,
      S(1) => \tmp_8_fu_773_p2_carry__0_i_7_n_0\,
      S(0) => \tmp_8_fu_773_p2_carry__0_i_8_n_0\
    );
\tmp_8_fu_773_p2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(15),
      I1 => height_upper_edge_lo_reg_1147(15),
      I2 => height_upper_edge_lo_reg_1147(14),
      I3 => p_current_y_cord_load_reg_1111(14),
      O => \tmp_8_fu_773_p2_carry__0_i_1_n_0\
    );
\tmp_8_fu_773_p2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(13),
      I1 => height_upper_edge_lo_reg_1147(13),
      I2 => height_upper_edge_lo_reg_1147(12),
      I3 => p_current_y_cord_load_reg_1111(12),
      O => \tmp_8_fu_773_p2_carry__0_i_2_n_0\
    );
\tmp_8_fu_773_p2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(11),
      I1 => height_upper_edge_lo_reg_1147(11),
      I2 => height_upper_edge_lo_reg_1147(10),
      I3 => p_current_y_cord_load_reg_1111(10),
      O => \tmp_8_fu_773_p2_carry__0_i_3_n_0\
    );
\tmp_8_fu_773_p2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(9),
      I1 => height_upper_edge_lo_reg_1147(9),
      I2 => height_upper_edge_lo_reg_1147(8),
      I3 => p_current_y_cord_load_reg_1111(8),
      O => \tmp_8_fu_773_p2_carry__0_i_4_n_0\
    );
\tmp_8_fu_773_p2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(15),
      I1 => p_current_y_cord_load_reg_1111(15),
      I2 => height_upper_edge_lo_reg_1147(14),
      I3 => p_current_y_cord_load_reg_1111(14),
      O => \tmp_8_fu_773_p2_carry__0_i_5_n_0\
    );
\tmp_8_fu_773_p2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(13),
      I1 => p_current_y_cord_load_reg_1111(13),
      I2 => height_upper_edge_lo_reg_1147(12),
      I3 => p_current_y_cord_load_reg_1111(12),
      O => \tmp_8_fu_773_p2_carry__0_i_6_n_0\
    );
\tmp_8_fu_773_p2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(11),
      I1 => p_current_y_cord_load_reg_1111(11),
      I2 => height_upper_edge_lo_reg_1147(10),
      I3 => p_current_y_cord_load_reg_1111(10),
      O => \tmp_8_fu_773_p2_carry__0_i_7_n_0\
    );
\tmp_8_fu_773_p2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(9),
      I1 => p_current_y_cord_load_reg_1111(9),
      I2 => height_upper_edge_lo_reg_1147(8),
      I3 => p_current_y_cord_load_reg_1111(8),
      O => \tmp_8_fu_773_p2_carry__0_i_8_n_0\
    );
\tmp_8_fu_773_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_8_fu_773_p2_carry__0_n_0\,
      CO(3) => \tmp_8_fu_773_p2_carry__1_n_0\,
      CO(2) => \tmp_8_fu_773_p2_carry__1_n_1\,
      CO(1) => \tmp_8_fu_773_p2_carry__1_n_2\,
      CO(0) => \tmp_8_fu_773_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_8_fu_773_p2_carry__1_i_1_n_0\,
      DI(2) => \tmp_8_fu_773_p2_carry__1_i_2_n_0\,
      DI(1) => \tmp_8_fu_773_p2_carry__1_i_3_n_0\,
      DI(0) => \tmp_8_fu_773_p2_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_8_fu_773_p2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_8_fu_773_p2_carry__1_i_5_n_0\,
      S(2) => \tmp_8_fu_773_p2_carry__1_i_6_n_0\,
      S(1) => \tmp_8_fu_773_p2_carry__1_i_7_n_0\,
      S(0) => \tmp_8_fu_773_p2_carry__1_i_8_n_0\
    );
\tmp_8_fu_773_p2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(23),
      I1 => height_upper_edge_lo_reg_1147(23),
      I2 => height_upper_edge_lo_reg_1147(22),
      I3 => p_current_y_cord_load_reg_1111(22),
      O => \tmp_8_fu_773_p2_carry__1_i_1_n_0\
    );
\tmp_8_fu_773_p2_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(21),
      I1 => height_upper_edge_lo_reg_1147(21),
      I2 => height_upper_edge_lo_reg_1147(20),
      I3 => p_current_y_cord_load_reg_1111(20),
      O => \tmp_8_fu_773_p2_carry__1_i_2_n_0\
    );
\tmp_8_fu_773_p2_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(19),
      I1 => height_upper_edge_lo_reg_1147(19),
      I2 => height_upper_edge_lo_reg_1147(18),
      I3 => p_current_y_cord_load_reg_1111(18),
      O => \tmp_8_fu_773_p2_carry__1_i_3_n_0\
    );
\tmp_8_fu_773_p2_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(17),
      I1 => height_upper_edge_lo_reg_1147(17),
      I2 => height_upper_edge_lo_reg_1147(16),
      I3 => p_current_y_cord_load_reg_1111(16),
      O => \tmp_8_fu_773_p2_carry__1_i_4_n_0\
    );
\tmp_8_fu_773_p2_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(23),
      I1 => p_current_y_cord_load_reg_1111(23),
      I2 => height_upper_edge_lo_reg_1147(22),
      I3 => p_current_y_cord_load_reg_1111(22),
      O => \tmp_8_fu_773_p2_carry__1_i_5_n_0\
    );
\tmp_8_fu_773_p2_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(21),
      I1 => p_current_y_cord_load_reg_1111(21),
      I2 => height_upper_edge_lo_reg_1147(20),
      I3 => p_current_y_cord_load_reg_1111(20),
      O => \tmp_8_fu_773_p2_carry__1_i_6_n_0\
    );
\tmp_8_fu_773_p2_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(19),
      I1 => p_current_y_cord_load_reg_1111(19),
      I2 => height_upper_edge_lo_reg_1147(18),
      I3 => p_current_y_cord_load_reg_1111(18),
      O => \tmp_8_fu_773_p2_carry__1_i_7_n_0\
    );
\tmp_8_fu_773_p2_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(17),
      I1 => p_current_y_cord_load_reg_1111(17),
      I2 => height_upper_edge_lo_reg_1147(16),
      I3 => p_current_y_cord_load_reg_1111(16),
      O => \tmp_8_fu_773_p2_carry__1_i_8_n_0\
    );
\tmp_8_fu_773_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_8_fu_773_p2_carry__1_n_0\,
      CO(3) => \tmp_8_fu_773_p2_carry__2_n_0\,
      CO(2) => \tmp_8_fu_773_p2_carry__2_n_1\,
      CO(1) => \tmp_8_fu_773_p2_carry__2_n_2\,
      CO(0) => \tmp_8_fu_773_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_8_fu_773_p2_carry__2_i_1_n_0\,
      DI(2) => \tmp_8_fu_773_p2_carry__2_i_2_n_0\,
      DI(1) => \tmp_8_fu_773_p2_carry__2_i_3_n_0\,
      DI(0) => \tmp_8_fu_773_p2_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_8_fu_773_p2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_8_fu_773_p2_carry__2_i_5_n_0\,
      S(2) => \tmp_8_fu_773_p2_carry__2_i_6_n_0\,
      S(1) => \tmp_8_fu_773_p2_carry__2_i_7_n_0\,
      S(0) => \tmp_8_fu_773_p2_carry__2_i_8_n_0\
    );
\tmp_8_fu_773_p2_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(31),
      I1 => height_upper_edge_lo_reg_1147(31),
      I2 => height_upper_edge_lo_reg_1147(30),
      I3 => p_current_y_cord_load_reg_1111(30),
      O => \tmp_8_fu_773_p2_carry__2_i_1_n_0\
    );
\tmp_8_fu_773_p2_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(29),
      I1 => height_upper_edge_lo_reg_1147(29),
      I2 => height_upper_edge_lo_reg_1147(28),
      I3 => p_current_y_cord_load_reg_1111(28),
      O => \tmp_8_fu_773_p2_carry__2_i_2_n_0\
    );
\tmp_8_fu_773_p2_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(27),
      I1 => height_upper_edge_lo_reg_1147(27),
      I2 => height_upper_edge_lo_reg_1147(26),
      I3 => p_current_y_cord_load_reg_1111(26),
      O => \tmp_8_fu_773_p2_carry__2_i_3_n_0\
    );
\tmp_8_fu_773_p2_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(25),
      I1 => height_upper_edge_lo_reg_1147(25),
      I2 => height_upper_edge_lo_reg_1147(24),
      I3 => p_current_y_cord_load_reg_1111(24),
      O => \tmp_8_fu_773_p2_carry__2_i_4_n_0\
    );
\tmp_8_fu_773_p2_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(31),
      I1 => p_current_y_cord_load_reg_1111(31),
      I2 => height_upper_edge_lo_reg_1147(30),
      I3 => p_current_y_cord_load_reg_1111(30),
      O => \tmp_8_fu_773_p2_carry__2_i_5_n_0\
    );
\tmp_8_fu_773_p2_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(29),
      I1 => p_current_y_cord_load_reg_1111(29),
      I2 => height_upper_edge_lo_reg_1147(28),
      I3 => p_current_y_cord_load_reg_1111(28),
      O => \tmp_8_fu_773_p2_carry__2_i_6_n_0\
    );
\tmp_8_fu_773_p2_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(27),
      I1 => p_current_y_cord_load_reg_1111(27),
      I2 => height_upper_edge_lo_reg_1147(26),
      I3 => p_current_y_cord_load_reg_1111(26),
      O => \tmp_8_fu_773_p2_carry__2_i_7_n_0\
    );
\tmp_8_fu_773_p2_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(25),
      I1 => p_current_y_cord_load_reg_1111(25),
      I2 => height_upper_edge_lo_reg_1147(24),
      I3 => p_current_y_cord_load_reg_1111(24),
      O => \tmp_8_fu_773_p2_carry__2_i_8_n_0\
    );
tmp_8_fu_773_p2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(7),
      I1 => height_upper_edge_lo_reg_1147(7),
      I2 => height_upper_edge_lo_reg_1147(6),
      I3 => p_current_y_cord_load_reg_1111(6),
      O => tmp_8_fu_773_p2_carry_i_1_n_0
    );
tmp_8_fu_773_p2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(5),
      I1 => height_upper_edge_lo_reg_1147(5),
      I2 => height_upper_edge_lo_reg_1147(4),
      I3 => p_current_y_cord_load_reg_1111(4),
      O => tmp_8_fu_773_p2_carry_i_2_n_0
    );
tmp_8_fu_773_p2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(3),
      I1 => height_upper_edge_lo_reg_1147(3),
      I2 => height_upper_edge_lo_reg_1147(2),
      I3 => p_current_y_cord_load_reg_1111(2),
      O => tmp_8_fu_773_p2_carry_i_3_n_0
    );
tmp_8_fu_773_p2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(1),
      I1 => height_upper_edge_lo_reg_1147(1),
      I2 => height_upper_edge_lo_reg_1147(0),
      I3 => p_current_y_cord_load_reg_1111(0),
      O => tmp_8_fu_773_p2_carry_i_4_n_0
    );
tmp_8_fu_773_p2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(7),
      I1 => p_current_y_cord_load_reg_1111(7),
      I2 => height_upper_edge_lo_reg_1147(6),
      I3 => p_current_y_cord_load_reg_1111(6),
      O => tmp_8_fu_773_p2_carry_i_5_n_0
    );
tmp_8_fu_773_p2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(5),
      I1 => p_current_y_cord_load_reg_1111(5),
      I2 => height_upper_edge_lo_reg_1147(4),
      I3 => p_current_y_cord_load_reg_1111(4),
      O => tmp_8_fu_773_p2_carry_i_6_n_0
    );
tmp_8_fu_773_p2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(3),
      I1 => p_current_y_cord_load_reg_1111(3),
      I2 => height_upper_edge_lo_reg_1147(2),
      I3 => p_current_y_cord_load_reg_1111(2),
      O => tmp_8_fu_773_p2_carry_i_7_n_0
    );
tmp_8_fu_773_p2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => height_upper_edge_lo_reg_1147(1),
      I1 => p_current_y_cord_load_reg_1111(1),
      I2 => height_upper_edge_lo_reg_1147(0),
      I3 => p_current_y_cord_load_reg_1111(0),
      O => tmp_8_fu_773_p2_carry_i_8_n_0
    );
tmp_9_fu_805_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tmp_9_fu_805_p2_carry_n_0,
      CO(2) => tmp_9_fu_805_p2_carry_n_1,
      CO(1) => tmp_9_fu_805_p2_carry_n_2,
      CO(0) => tmp_9_fu_805_p2_carry_n_3,
      CYINIT => height(0),
      DI(3 downto 0) => height(4 downto 1),
      O(3 downto 0) => tmp_9_fu_805_p2(4 downto 1),
      S(3) => tmp_9_fu_805_p2_carry_i_1_n_0,
      S(2) => tmp_9_fu_805_p2_carry_i_2_n_0,
      S(1) => tmp_9_fu_805_p2_carry_i_3_n_0,
      S(0) => tmp_9_fu_805_p2_carry_i_4_n_0
    );
\tmp_9_fu_805_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tmp_9_fu_805_p2_carry_n_0,
      CO(3) => \tmp_9_fu_805_p2_carry__0_n_0\,
      CO(2) => \tmp_9_fu_805_p2_carry__0_n_1\,
      CO(1) => \tmp_9_fu_805_p2_carry__0_n_2\,
      CO(0) => \tmp_9_fu_805_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => height(8 downto 5),
      O(3 downto 0) => tmp_9_fu_805_p2(8 downto 5),
      S(3) => \tmp_9_fu_805_p2_carry__0_i_1_n_0\,
      S(2) => \tmp_9_fu_805_p2_carry__0_i_2_n_0\,
      S(1) => \tmp_9_fu_805_p2_carry__0_i_3_n_0\,
      S(0) => \tmp_9_fu_805_p2_carry__0_i_4_n_0\
    );
\tmp_9_fu_805_p2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(8),
      O => \tmp_9_fu_805_p2_carry__0_i_1_n_0\
    );
\tmp_9_fu_805_p2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(7),
      O => \tmp_9_fu_805_p2_carry__0_i_2_n_0\
    );
\tmp_9_fu_805_p2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(6),
      O => \tmp_9_fu_805_p2_carry__0_i_3_n_0\
    );
\tmp_9_fu_805_p2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(5),
      O => \tmp_9_fu_805_p2_carry__0_i_4_n_0\
    );
\tmp_9_fu_805_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_9_fu_805_p2_carry__0_n_0\,
      CO(3) => \tmp_9_fu_805_p2_carry__1_n_0\,
      CO(2) => \tmp_9_fu_805_p2_carry__1_n_1\,
      CO(1) => \tmp_9_fu_805_p2_carry__1_n_2\,
      CO(0) => \tmp_9_fu_805_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => height(12 downto 9),
      O(3 downto 0) => tmp_9_fu_805_p2(12 downto 9),
      S(3) => \tmp_9_fu_805_p2_carry__1_i_1_n_0\,
      S(2) => \tmp_9_fu_805_p2_carry__1_i_2_n_0\,
      S(1) => \tmp_9_fu_805_p2_carry__1_i_3_n_0\,
      S(0) => \tmp_9_fu_805_p2_carry__1_i_4_n_0\
    );
\tmp_9_fu_805_p2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(12),
      O => \tmp_9_fu_805_p2_carry__1_i_1_n_0\
    );
\tmp_9_fu_805_p2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(11),
      O => \tmp_9_fu_805_p2_carry__1_i_2_n_0\
    );
\tmp_9_fu_805_p2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(10),
      O => \tmp_9_fu_805_p2_carry__1_i_3_n_0\
    );
\tmp_9_fu_805_p2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(9),
      O => \tmp_9_fu_805_p2_carry__1_i_4_n_0\
    );
\tmp_9_fu_805_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_9_fu_805_p2_carry__1_n_0\,
      CO(3) => \tmp_9_fu_805_p2_carry__2_n_0\,
      CO(2) => \tmp_9_fu_805_p2_carry__2_n_1\,
      CO(1) => \tmp_9_fu_805_p2_carry__2_n_2\,
      CO(0) => \tmp_9_fu_805_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => height(16 downto 13),
      O(3 downto 0) => tmp_9_fu_805_p2(16 downto 13),
      S(3) => \tmp_9_fu_805_p2_carry__2_i_1_n_0\,
      S(2) => \tmp_9_fu_805_p2_carry__2_i_2_n_0\,
      S(1) => \tmp_9_fu_805_p2_carry__2_i_3_n_0\,
      S(0) => \tmp_9_fu_805_p2_carry__2_i_4_n_0\
    );
\tmp_9_fu_805_p2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(16),
      O => \tmp_9_fu_805_p2_carry__2_i_1_n_0\
    );
\tmp_9_fu_805_p2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(15),
      O => \tmp_9_fu_805_p2_carry__2_i_2_n_0\
    );
\tmp_9_fu_805_p2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(14),
      O => \tmp_9_fu_805_p2_carry__2_i_3_n_0\
    );
\tmp_9_fu_805_p2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(13),
      O => \tmp_9_fu_805_p2_carry__2_i_4_n_0\
    );
\tmp_9_fu_805_p2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_9_fu_805_p2_carry__2_n_0\,
      CO(3) => \tmp_9_fu_805_p2_carry__3_n_0\,
      CO(2) => \tmp_9_fu_805_p2_carry__3_n_1\,
      CO(1) => \tmp_9_fu_805_p2_carry__3_n_2\,
      CO(0) => \tmp_9_fu_805_p2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => height(20 downto 17),
      O(3 downto 0) => tmp_9_fu_805_p2(20 downto 17),
      S(3) => \tmp_9_fu_805_p2_carry__3_i_1_n_0\,
      S(2) => \tmp_9_fu_805_p2_carry__3_i_2_n_0\,
      S(1) => \tmp_9_fu_805_p2_carry__3_i_3_n_0\,
      S(0) => \tmp_9_fu_805_p2_carry__3_i_4_n_0\
    );
\tmp_9_fu_805_p2_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(20),
      O => \tmp_9_fu_805_p2_carry__3_i_1_n_0\
    );
\tmp_9_fu_805_p2_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(19),
      O => \tmp_9_fu_805_p2_carry__3_i_2_n_0\
    );
\tmp_9_fu_805_p2_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(18),
      O => \tmp_9_fu_805_p2_carry__3_i_3_n_0\
    );
\tmp_9_fu_805_p2_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(17),
      O => \tmp_9_fu_805_p2_carry__3_i_4_n_0\
    );
\tmp_9_fu_805_p2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_9_fu_805_p2_carry__3_n_0\,
      CO(3) => \tmp_9_fu_805_p2_carry__4_n_0\,
      CO(2) => \tmp_9_fu_805_p2_carry__4_n_1\,
      CO(1) => \tmp_9_fu_805_p2_carry__4_n_2\,
      CO(0) => \tmp_9_fu_805_p2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => height(24 downto 21),
      O(3 downto 0) => tmp_9_fu_805_p2(24 downto 21),
      S(3) => \tmp_9_fu_805_p2_carry__4_i_1_n_0\,
      S(2) => \tmp_9_fu_805_p2_carry__4_i_2_n_0\,
      S(1) => \tmp_9_fu_805_p2_carry__4_i_3_n_0\,
      S(0) => \tmp_9_fu_805_p2_carry__4_i_4_n_0\
    );
\tmp_9_fu_805_p2_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(24),
      O => \tmp_9_fu_805_p2_carry__4_i_1_n_0\
    );
\tmp_9_fu_805_p2_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(23),
      O => \tmp_9_fu_805_p2_carry__4_i_2_n_0\
    );
\tmp_9_fu_805_p2_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(22),
      O => \tmp_9_fu_805_p2_carry__4_i_3_n_0\
    );
\tmp_9_fu_805_p2_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(21),
      O => \tmp_9_fu_805_p2_carry__4_i_4_n_0\
    );
\tmp_9_fu_805_p2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_9_fu_805_p2_carry__4_n_0\,
      CO(3) => \tmp_9_fu_805_p2_carry__5_n_0\,
      CO(2) => \tmp_9_fu_805_p2_carry__5_n_1\,
      CO(1) => \tmp_9_fu_805_p2_carry__5_n_2\,
      CO(0) => \tmp_9_fu_805_p2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => height(28 downto 25),
      O(3 downto 0) => tmp_9_fu_805_p2(28 downto 25),
      S(3) => \tmp_9_fu_805_p2_carry__5_i_1_n_0\,
      S(2) => \tmp_9_fu_805_p2_carry__5_i_2_n_0\,
      S(1) => \tmp_9_fu_805_p2_carry__5_i_3_n_0\,
      S(0) => \tmp_9_fu_805_p2_carry__5_i_4_n_0\
    );
\tmp_9_fu_805_p2_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(28),
      O => \tmp_9_fu_805_p2_carry__5_i_1_n_0\
    );
\tmp_9_fu_805_p2_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(27),
      O => \tmp_9_fu_805_p2_carry__5_i_2_n_0\
    );
\tmp_9_fu_805_p2_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(26),
      O => \tmp_9_fu_805_p2_carry__5_i_3_n_0\
    );
\tmp_9_fu_805_p2_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(25),
      O => \tmp_9_fu_805_p2_carry__5_i_4_n_0\
    );
\tmp_9_fu_805_p2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_9_fu_805_p2_carry__5_n_0\,
      CO(3 downto 2) => \NLW_tmp_9_fu_805_p2_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \tmp_9_fu_805_p2_carry__6_n_2\,
      CO(0) => \tmp_9_fu_805_p2_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => height(30 downto 29),
      O(3) => \NLW_tmp_9_fu_805_p2_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => tmp_9_fu_805_p2(31 downto 29),
      S(3) => '0',
      S(2) => \tmp_9_fu_805_p2_carry__6_i_1_n_0\,
      S(1) => \tmp_9_fu_805_p2_carry__6_i_2_n_0\,
      S(0) => \tmp_9_fu_805_p2_carry__6_i_3_n_0\
    );
\tmp_9_fu_805_p2_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(31),
      O => \tmp_9_fu_805_p2_carry__6_i_1_n_0\
    );
\tmp_9_fu_805_p2_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(30),
      O => \tmp_9_fu_805_p2_carry__6_i_2_n_0\
    );
\tmp_9_fu_805_p2_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(29),
      O => \tmp_9_fu_805_p2_carry__6_i_3_n_0\
    );
tmp_9_fu_805_p2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(4),
      O => tmp_9_fu_805_p2_carry_i_1_n_0
    );
tmp_9_fu_805_p2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(3),
      O => tmp_9_fu_805_p2_carry_i_2_n_0
    );
tmp_9_fu_805_p2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(2),
      O => tmp_9_fu_805_p2_carry_i_3_n_0
    );
tmp_9_fu_805_p2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => height(1),
      O => tmp_9_fu_805_p2_carry_i_4_n_0
    );
\tmp_reg_1168_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \state_reg[0]\(0),
      Q => tmp_reg_1168,
      R => '0'
    );
\tmp_reg_1168_reg[0]_rep\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => \state_reg[0]\(0),
      Q => \tmp_reg_1168_reg[0]_rep_n_0\,
      R => '0'
    );
tmp_s_fu_699_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tmp_s_fu_699_p2_carry_n_0,
      CO(2) => tmp_s_fu_699_p2_carry_n_1,
      CO(1) => tmp_s_fu_699_p2_carry_n_2,
      CO(0) => tmp_s_fu_699_p2_carry_n_3,
      CYINIT => '0',
      DI(3) => tmp_s_fu_699_p2_carry_i_1_n_0,
      DI(2) => tmp_s_fu_699_p2_carry_i_2_n_0,
      DI(1) => tmp_s_fu_699_p2_carry_i_3_n_0,
      DI(0) => tmp_s_fu_699_p2_carry_i_4_n_0,
      O(3 downto 0) => NLW_tmp_s_fu_699_p2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => tmp_s_fu_699_p2_carry_i_5_n_0,
      S(2) => tmp_s_fu_699_p2_carry_i_6_n_0,
      S(1) => tmp_s_fu_699_p2_carry_i_7_n_0,
      S(0) => tmp_s_fu_699_p2_carry_i_8_n_0
    );
\tmp_s_fu_699_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tmp_s_fu_699_p2_carry_n_0,
      CO(3) => \tmp_s_fu_699_p2_carry__0_n_0\,
      CO(2) => \tmp_s_fu_699_p2_carry__0_n_1\,
      CO(1) => \tmp_s_fu_699_p2_carry__0_n_2\,
      CO(0) => \tmp_s_fu_699_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_s_fu_699_p2_carry__0_i_1_n_0\,
      DI(2) => \tmp_s_fu_699_p2_carry__0_i_2_n_0\,
      DI(1) => \tmp_s_fu_699_p2_carry__0_i_3_n_0\,
      DI(0) => \tmp_s_fu_699_p2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_s_fu_699_p2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_s_fu_699_p2_carry__0_i_5_n_0\,
      S(2) => \tmp_s_fu_699_p2_carry__0_i_6_n_0\,
      S(1) => \tmp_s_fu_699_p2_carry__0_i_7_n_0\,
      S(0) => \tmp_s_fu_699_p2_carry__0_i_8_n_0\
    );
\tmp_s_fu_699_p2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(15),
      I1 => p_right_edge_load_reg_1161(15),
      I2 => p_current_x_cord_load_reg_1099(14),
      I3 => p_right_edge_load_reg_1161(14),
      O => \tmp_s_fu_699_p2_carry__0_i_1_n_0\
    );
\tmp_s_fu_699_p2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(13),
      I1 => p_right_edge_load_reg_1161(13),
      I2 => p_current_x_cord_load_reg_1099(12),
      I3 => p_right_edge_load_reg_1161(12),
      O => \tmp_s_fu_699_p2_carry__0_i_2_n_0\
    );
\tmp_s_fu_699_p2_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(11),
      I1 => p_right_edge_load_reg_1161(11),
      I2 => p_current_x_cord_load_reg_1099(10),
      I3 => p_right_edge_load_reg_1161(10),
      O => \tmp_s_fu_699_p2_carry__0_i_3_n_0\
    );
\tmp_s_fu_699_p2_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(9),
      I1 => p_right_edge_load_reg_1161(9),
      I2 => p_current_x_cord_load_reg_1099(8),
      I3 => p_right_edge_load_reg_1161(8),
      O => \tmp_s_fu_699_p2_carry__0_i_4_n_0\
    );
\tmp_s_fu_699_p2_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(15),
      I1 => p_current_x_cord_load_reg_1099(15),
      I2 => p_right_edge_load_reg_1161(14),
      I3 => p_current_x_cord_load_reg_1099(14),
      O => \tmp_s_fu_699_p2_carry__0_i_5_n_0\
    );
\tmp_s_fu_699_p2_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(13),
      I1 => p_current_x_cord_load_reg_1099(13),
      I2 => p_right_edge_load_reg_1161(12),
      I3 => p_current_x_cord_load_reg_1099(12),
      O => \tmp_s_fu_699_p2_carry__0_i_6_n_0\
    );
\tmp_s_fu_699_p2_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(11),
      I1 => p_current_x_cord_load_reg_1099(11),
      I2 => p_right_edge_load_reg_1161(10),
      I3 => p_current_x_cord_load_reg_1099(10),
      O => \tmp_s_fu_699_p2_carry__0_i_7_n_0\
    );
\tmp_s_fu_699_p2_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(9),
      I1 => p_current_x_cord_load_reg_1099(9),
      I2 => p_right_edge_load_reg_1161(8),
      I3 => p_current_x_cord_load_reg_1099(8),
      O => \tmp_s_fu_699_p2_carry__0_i_8_n_0\
    );
\tmp_s_fu_699_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_s_fu_699_p2_carry__0_n_0\,
      CO(3) => \tmp_s_fu_699_p2_carry__1_n_0\,
      CO(2) => \tmp_s_fu_699_p2_carry__1_n_1\,
      CO(1) => \tmp_s_fu_699_p2_carry__1_n_2\,
      CO(0) => \tmp_s_fu_699_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_s_fu_699_p2_carry__1_i_1_n_0\,
      DI(2) => \tmp_s_fu_699_p2_carry__1_i_2_n_0\,
      DI(1) => \tmp_s_fu_699_p2_carry__1_i_3_n_0\,
      DI(0) => \tmp_s_fu_699_p2_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_s_fu_699_p2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_s_fu_699_p2_carry__1_i_5_n_0\,
      S(2) => \tmp_s_fu_699_p2_carry__1_i_6_n_0\,
      S(1) => \tmp_s_fu_699_p2_carry__1_i_7_n_0\,
      S(0) => \tmp_s_fu_699_p2_carry__1_i_8_n_0\
    );
\tmp_s_fu_699_p2_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(23),
      I1 => p_right_edge_load_reg_1161(23),
      I2 => p_current_x_cord_load_reg_1099(22),
      I3 => p_right_edge_load_reg_1161(22),
      O => \tmp_s_fu_699_p2_carry__1_i_1_n_0\
    );
\tmp_s_fu_699_p2_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(21),
      I1 => p_right_edge_load_reg_1161(21),
      I2 => p_current_x_cord_load_reg_1099(20),
      I3 => p_right_edge_load_reg_1161(20),
      O => \tmp_s_fu_699_p2_carry__1_i_2_n_0\
    );
\tmp_s_fu_699_p2_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(19),
      I1 => p_right_edge_load_reg_1161(19),
      I2 => p_current_x_cord_load_reg_1099(18),
      I3 => p_right_edge_load_reg_1161(18),
      O => \tmp_s_fu_699_p2_carry__1_i_3_n_0\
    );
\tmp_s_fu_699_p2_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(17),
      I1 => p_right_edge_load_reg_1161(17),
      I2 => p_current_x_cord_load_reg_1099(16),
      I3 => p_right_edge_load_reg_1161(16),
      O => \tmp_s_fu_699_p2_carry__1_i_4_n_0\
    );
\tmp_s_fu_699_p2_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(23),
      I1 => p_current_x_cord_load_reg_1099(23),
      I2 => p_right_edge_load_reg_1161(22),
      I3 => p_current_x_cord_load_reg_1099(22),
      O => \tmp_s_fu_699_p2_carry__1_i_5_n_0\
    );
\tmp_s_fu_699_p2_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(21),
      I1 => p_current_x_cord_load_reg_1099(21),
      I2 => p_right_edge_load_reg_1161(20),
      I3 => p_current_x_cord_load_reg_1099(20),
      O => \tmp_s_fu_699_p2_carry__1_i_6_n_0\
    );
\tmp_s_fu_699_p2_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(19),
      I1 => p_current_x_cord_load_reg_1099(19),
      I2 => p_right_edge_load_reg_1161(18),
      I3 => p_current_x_cord_load_reg_1099(18),
      O => \tmp_s_fu_699_p2_carry__1_i_7_n_0\
    );
\tmp_s_fu_699_p2_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(17),
      I1 => p_current_x_cord_load_reg_1099(17),
      I2 => p_right_edge_load_reg_1161(16),
      I3 => p_current_x_cord_load_reg_1099(16),
      O => \tmp_s_fu_699_p2_carry__1_i_8_n_0\
    );
\tmp_s_fu_699_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_s_fu_699_p2_carry__1_n_0\,
      CO(3) => p_0_in0_in,
      CO(2) => \tmp_s_fu_699_p2_carry__2_n_1\,
      CO(1) => \tmp_s_fu_699_p2_carry__2_n_2\,
      CO(0) => \tmp_s_fu_699_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_s_fu_699_p2_carry__2_i_1_n_0\,
      DI(2) => \tmp_s_fu_699_p2_carry__2_i_2_n_0\,
      DI(1) => \tmp_s_fu_699_p2_carry__2_i_3_n_0\,
      DI(0) => \tmp_s_fu_699_p2_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_s_fu_699_p2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_s_fu_699_p2_carry__2_i_5_n_0\,
      S(2) => \tmp_s_fu_699_p2_carry__2_i_6_n_0\,
      S(1) => \tmp_s_fu_699_p2_carry__2_i_7_n_0\,
      S(0) => \tmp_s_fu_699_p2_carry__2_i_8_n_0\
    );
\tmp_s_fu_699_p2_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(31),
      I1 => p_right_edge_load_reg_1161(31),
      I2 => p_current_x_cord_load_reg_1099(30),
      I3 => p_right_edge_load_reg_1161(30),
      O => \tmp_s_fu_699_p2_carry__2_i_1_n_0\
    );
\tmp_s_fu_699_p2_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(29),
      I1 => p_right_edge_load_reg_1161(29),
      I2 => p_current_x_cord_load_reg_1099(28),
      I3 => p_right_edge_load_reg_1161(28),
      O => \tmp_s_fu_699_p2_carry__2_i_2_n_0\
    );
\tmp_s_fu_699_p2_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(27),
      I1 => p_right_edge_load_reg_1161(27),
      I2 => p_current_x_cord_load_reg_1099(26),
      I3 => p_right_edge_load_reg_1161(26),
      O => \tmp_s_fu_699_p2_carry__2_i_3_n_0\
    );
\tmp_s_fu_699_p2_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(25),
      I1 => p_right_edge_load_reg_1161(25),
      I2 => p_current_x_cord_load_reg_1099(24),
      I3 => p_right_edge_load_reg_1161(24),
      O => \tmp_s_fu_699_p2_carry__2_i_4_n_0\
    );
\tmp_s_fu_699_p2_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(31),
      I1 => p_current_x_cord_load_reg_1099(31),
      I2 => p_right_edge_load_reg_1161(30),
      I3 => p_current_x_cord_load_reg_1099(30),
      O => \tmp_s_fu_699_p2_carry__2_i_5_n_0\
    );
\tmp_s_fu_699_p2_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(29),
      I1 => p_current_x_cord_load_reg_1099(29),
      I2 => p_right_edge_load_reg_1161(28),
      I3 => p_current_x_cord_load_reg_1099(28),
      O => \tmp_s_fu_699_p2_carry__2_i_6_n_0\
    );
\tmp_s_fu_699_p2_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(27),
      I1 => p_current_x_cord_load_reg_1099(27),
      I2 => p_right_edge_load_reg_1161(26),
      I3 => p_current_x_cord_load_reg_1099(26),
      O => \tmp_s_fu_699_p2_carry__2_i_7_n_0\
    );
\tmp_s_fu_699_p2_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(25),
      I1 => p_current_x_cord_load_reg_1099(25),
      I2 => p_right_edge_load_reg_1161(24),
      I3 => p_current_x_cord_load_reg_1099(24),
      O => \tmp_s_fu_699_p2_carry__2_i_8_n_0\
    );
tmp_s_fu_699_p2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(7),
      I1 => p_right_edge_load_reg_1161(7),
      I2 => p_current_x_cord_load_reg_1099(6),
      I3 => p_right_edge_load_reg_1161(6),
      O => tmp_s_fu_699_p2_carry_i_1_n_0
    );
tmp_s_fu_699_p2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(5),
      I1 => p_right_edge_load_reg_1161(5),
      I2 => p_current_x_cord_load_reg_1099(4),
      I3 => p_right_edge_load_reg_1161(4),
      O => tmp_s_fu_699_p2_carry_i_2_n_0
    );
tmp_s_fu_699_p2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(3),
      I1 => p_right_edge_load_reg_1161(3),
      I2 => p_current_x_cord_load_reg_1099(2),
      I3 => p_right_edge_load_reg_1161(2),
      O => tmp_s_fu_699_p2_carry_i_3_n_0
    );
tmp_s_fu_699_p2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => p_current_x_cord_load_reg_1099(1),
      I1 => p_right_edge_load_reg_1161(1),
      I2 => p_current_x_cord_load_reg_1099(0),
      I3 => p_right_edge_load_reg_1161(0),
      O => tmp_s_fu_699_p2_carry_i_4_n_0
    );
tmp_s_fu_699_p2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(7),
      I1 => p_current_x_cord_load_reg_1099(7),
      I2 => p_right_edge_load_reg_1161(6),
      I3 => p_current_x_cord_load_reg_1099(6),
      O => tmp_s_fu_699_p2_carry_i_5_n_0
    );
tmp_s_fu_699_p2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(5),
      I1 => p_current_x_cord_load_reg_1099(5),
      I2 => p_right_edge_load_reg_1161(4),
      I3 => p_current_x_cord_load_reg_1099(4),
      O => tmp_s_fu_699_p2_carry_i_6_n_0
    );
tmp_s_fu_699_p2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(3),
      I1 => p_current_x_cord_load_reg_1099(3),
      I2 => p_right_edge_load_reg_1161(2),
      I3 => p_current_x_cord_load_reg_1099(2),
      O => tmp_s_fu_699_p2_carry_i_7_n_0
    );
tmp_s_fu_699_p2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_right_edge_load_reg_1161(1),
      I1 => p_current_x_cord_load_reg_1099(1),
      I2 => p_right_edge_load_reg_1161(0),
      I3 => p_current_x_cord_load_reg_1099(0),
      O => tmp_s_fu_699_p2_carry_i_8_n_0
    );
\upper_edge[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[0]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[0]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(0)
    );
\upper_edge[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[10]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[10]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(10)
    );
\upper_edge[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[11]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[11]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(11)
    );
\upper_edge[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[12]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[12]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(12)
    );
\upper_edge[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[13]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[13]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(13)
    );
\upper_edge[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[14]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[14]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(14)
    );
\upper_edge[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[15]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[15]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(15)
    );
\upper_edge[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[16]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[16]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(16)
    );
\upper_edge[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[17]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[17]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(17)
    );
\upper_edge[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[18]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[18]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(18)
    );
\upper_edge[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[19]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[19]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(19)
    );
\upper_edge[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[1]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[1]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(1)
    );
\upper_edge[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[20]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[20]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(20)
    );
\upper_edge[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[21]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[21]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(21)
    );
\upper_edge[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[22]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[22]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(22)
    );
\upper_edge[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[23]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[23]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(23)
    );
\upper_edge[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[24]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[24]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(24)
    );
\upper_edge[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[25]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[25]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(25)
    );
\upper_edge[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[26]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[26]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(26)
    );
\upper_edge[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[27]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[27]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(27)
    );
\upper_edge[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[28]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[28]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(28)
    );
\upper_edge[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[29]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[29]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(29)
    );
\upper_edge[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[2]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[2]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(2)
    );
\upper_edge[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[30]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[30]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(30)
    );
\upper_edge[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0807000"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \ap_CS_fsm[0]_i_1_n_0\,
      I3 => \upper_edge_flag_3_reg_384_reg_n_0_[0]\,
      I4 => \upper_edge_flag_2_reg_232_reg_n_0_[0]\,
      O => upper_edge0
    );
\upper_edge[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[31]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[31]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(31)
    );
\upper_edge[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[3]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[3]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(3)
    );
\upper_edge[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[4]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[4]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(4)
    );
\upper_edge[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[5]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[5]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(5)
    );
\upper_edge[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[6]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[6]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(6)
    );
\upper_edge[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[7]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[7]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(7)
    );
\upper_edge[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[8]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[8]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(8)
    );
\upper_edge[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F780"
    )
        port map (
      I0 => tmp_reg_1168,
      I1 => ap_CS_fsm_state3,
      I2 => \upper_edge_new_2_reg_242_reg_n_0_[9]\,
      I3 => \upper_edge_new_3_reg_394_reg_n_0_[9]\,
      O => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(9)
    );
\upper_edge_flag_2_reg_232[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => bottom_edge_flag_2_reg_2610,
      I1 => \ap_CS_fsm_reg[0]_1\,
      O => upper_edge_flag_2_reg_232
    );
\upper_edge_flag_2_reg_232[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => tmp_4_fu_488_p2,
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => tmp_4_reg_1124,
      O => \upper_edge_flag_2_reg_232[0]_i_2_n_0\
    );
\upper_edge_flag_2_reg_232_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_flag_2_reg_232[0]_i_2_n_0\,
      Q => \upper_edge_flag_2_reg_232_reg_n_0_[0]\,
      R => '0'
    );
\upper_edge_flag_3_reg_384[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => tmp_4_fu_488_p2,
      I3 => \upper_edge_flag_2_reg_232_reg_n_0_[0]\,
      O => \upper_edge_flag_3_reg_384[0]_i_1_n_0\
    );
\upper_edge_flag_3_reg_384_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_flag_3_reg_384[0]_i_1_n_0\,
      Q => \upper_edge_flag_3_reg_384_reg_n_0_[0]\,
      R => '0'
    );
\upper_edge_loc_2_reg_252[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(0),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(0),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(0),
      O => \upper_edge_loc_2_reg_252[0]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(10),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(10),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(10),
      O => \upper_edge_loc_2_reg_252[10]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(11),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(11),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(11),
      O => \upper_edge_loc_2_reg_252[11]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(12),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(12),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(12),
      O => \upper_edge_loc_2_reg_252[12]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(13),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(13),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(13),
      O => \upper_edge_loc_2_reg_252[13]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(14),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(14),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(14),
      O => \upper_edge_loc_2_reg_252[14]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(15),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(15),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(15),
      O => \upper_edge_loc_2_reg_252[15]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(16),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(16),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(16),
      O => \upper_edge_loc_2_reg_252[16]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(16),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(16),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(16),
      O => \tmp_34_fu_835_p1__0\(16)
    );
\upper_edge_loc_2_reg_252[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(17),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(17),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(17),
      O => \upper_edge_loc_2_reg_252[17]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(17),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(17),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(17),
      O => \tmp_34_fu_835_p1__0\(17)
    );
\upper_edge_loc_2_reg_252[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(18),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(18),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(18),
      O => \upper_edge_loc_2_reg_252[18]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(18),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(18),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(18),
      O => \tmp_34_fu_835_p1__0\(18)
    );
\upper_edge_loc_2_reg_252[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(19),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(19),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(19),
      O => \upper_edge_loc_2_reg_252[19]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(19),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(19),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(19),
      O => \tmp_34_fu_835_p1__0\(19)
    );
\upper_edge_loc_2_reg_252[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(1),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(1),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(1),
      O => \upper_edge_loc_2_reg_252[1]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(20),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(20),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(20),
      O => \upper_edge_loc_2_reg_252[20]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(20),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(20),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(20),
      O => \tmp_34_fu_835_p1__0\(20)
    );
\upper_edge_loc_2_reg_252[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(21),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(21),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(21),
      O => \upper_edge_loc_2_reg_252[21]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(21),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(21),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(21),
      O => \tmp_34_fu_835_p1__0\(21)
    );
\upper_edge_loc_2_reg_252[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(22),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(22),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(22),
      O => \upper_edge_loc_2_reg_252[22]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(22),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(22),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(22),
      O => \tmp_34_fu_835_p1__0\(22)
    );
\upper_edge_loc_2_reg_252[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(23),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(23),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(23),
      O => \upper_edge_loc_2_reg_252[23]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(23),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(23),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(23),
      O => \tmp_34_fu_835_p1__0\(23)
    );
\upper_edge_loc_2_reg_252[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(24),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(24),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(24),
      O => \upper_edge_loc_2_reg_252[24]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(24),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(24),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(24),
      O => \tmp_34_fu_835_p1__0\(24)
    );
\upper_edge_loc_2_reg_252[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(25),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(25),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(25),
      O => \upper_edge_loc_2_reg_252[25]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(25),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(25),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(25),
      O => \tmp_34_fu_835_p1__0\(25)
    );
\upper_edge_loc_2_reg_252[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(26),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(26),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(26),
      O => \upper_edge_loc_2_reg_252[26]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(26),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(26),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(26),
      O => \tmp_34_fu_835_p1__0\(26)
    );
\upper_edge_loc_2_reg_252[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(27),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(27),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(27),
      O => \upper_edge_loc_2_reg_252[27]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(27),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(27),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(27),
      O => \tmp_34_fu_835_p1__0\(27)
    );
\upper_edge_loc_2_reg_252[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(28),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(28),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(28),
      O => \upper_edge_loc_2_reg_252[28]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(28),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(28),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(28),
      O => \tmp_34_fu_835_p1__0\(28)
    );
\upper_edge_loc_2_reg_252[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(29),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(29),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(29),
      O => \upper_edge_loc_2_reg_252[29]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(29),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(29),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(29),
      O => \tmp_34_fu_835_p1__0\(29)
    );
\upper_edge_loc_2_reg_252[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(2),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(2),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(2),
      O => \upper_edge_loc_2_reg_252[2]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(30),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(30),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \tmp_34_fu_835_p1__0\(30),
      O => \upper_edge_loc_2_reg_252[30]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(30),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(30),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(30),
      O => \tmp_34_fu_835_p1__0\(30)
    );
\upper_edge_loc_2_reg_252[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(31),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(31),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => \upper_edge_loc_2_reg_252[31]_i_2_n_0\,
      O => \upper_edge_loc_2_reg_252[31]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(31),
      I1 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I2 => height_upper_edge_lo_reg_1147(31),
      I3 => bottom_edge_flag_2_reg_2610,
      I4 => upper_edge_loc_2_reg_252(31),
      O => \upper_edge_loc_2_reg_252[31]_i_2_n_0\
    );
\upper_edge_loc_2_reg_252[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(3),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(3),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(3),
      O => \upper_edge_loc_2_reg_252[3]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(4),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(4),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(4),
      O => \upper_edge_loc_2_reg_252[4]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(5),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(5),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(5),
      O => \upper_edge_loc_2_reg_252[5]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(6),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(6),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(6),
      O => \upper_edge_loc_2_reg_252[6]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(7),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(7),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(7),
      O => \upper_edge_loc_2_reg_252[7]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(8),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(8),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(8),
      O => \upper_edge_loc_2_reg_252[8]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => height(9),
      I1 => tmp_4_fu_488_p2,
      I2 => upper_edge(9),
      I3 => \ap_CS_fsm_reg[0]_0\,
      I4 => tmp_34_fu_835_p1(9),
      O => \upper_edge_loc_2_reg_252[9]_i_1_n_0\
    );
\upper_edge_loc_2_reg_252_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[0]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(0),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[10]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(10),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[11]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(11),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[12]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(12),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[13]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(13),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[14]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(14),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[15]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(15),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[16]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(16),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[17]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(17),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[18]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(18),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[19]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(19),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[1]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(1),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[20]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(20),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[21]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(21),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[22]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(22),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[23]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(23),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[24]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(24),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[25]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(25),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[26]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(26),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[27]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(27),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[28]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(28),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[29]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(29),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[2]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(2),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[30]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(30),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[31]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(31),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[3]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(3),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[4]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(4),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[5]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(5),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[6]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(6),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[7]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(7),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[8]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(8),
      R => '0'
    );
\upper_edge_loc_2_reg_252_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \upper_edge_loc_2_reg_252[9]_i_1_n_0\,
      Q => upper_edge_loc_2_reg_252(9),
      R => '0'
    );
\upper_edge_new_2_reg_242[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(0),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(0),
      O => \upper_edge_new_2_reg_242[0]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(10),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(10),
      O => \upper_edge_new_2_reg_242[10]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(11),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(11),
      O => \upper_edge_new_2_reg_242[11]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(12),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(12),
      O => \upper_edge_new_2_reg_242[12]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(13),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(13),
      O => \upper_edge_new_2_reg_242[13]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(14),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(14),
      O => \upper_edge_new_2_reg_242[14]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(15),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(15),
      O => \upper_edge_new_2_reg_242[15]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(16),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(16),
      O => \upper_edge_new_2_reg_242[16]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(17),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(17),
      O => \upper_edge_new_2_reg_242[17]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(18),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(18),
      O => \upper_edge_new_2_reg_242[18]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(19),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(19),
      O => \upper_edge_new_2_reg_242[19]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(1),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(1),
      O => \upper_edge_new_2_reg_242[1]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(20),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(20),
      O => \upper_edge_new_2_reg_242[20]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(21),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(21),
      O => \upper_edge_new_2_reg_242[21]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(22),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(22),
      O => \upper_edge_new_2_reg_242[22]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(23),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(23),
      O => \upper_edge_new_2_reg_242[23]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(24),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(24),
      O => \upper_edge_new_2_reg_242[24]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(25),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(25),
      O => \upper_edge_new_2_reg_242[25]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(26),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(26),
      O => \upper_edge_new_2_reg_242[26]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(27),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(27),
      O => \upper_edge_new_2_reg_242[27]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(28),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(28),
      O => \upper_edge_new_2_reg_242[28]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(29),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(29),
      O => \upper_edge_new_2_reg_242[29]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(2),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(2),
      O => \upper_edge_new_2_reg_242[2]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(30),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(30),
      O => \upper_edge_new_2_reg_242[30]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(31),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(31),
      O => \upper_edge_new_2_reg_242[31]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(3),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(3),
      O => \upper_edge_new_2_reg_242[3]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(4),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(4),
      O => \upper_edge_new_2_reg_242[4]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(5),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(5),
      O => \upper_edge_new_2_reg_242[5]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(6),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(6),
      O => \upper_edge_new_2_reg_242[6]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(7),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(7),
      O => \upper_edge_new_2_reg_242[7]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(8),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(8),
      O => \upper_edge_new_2_reg_242[8]_i_1_n_0\
    );
\upper_edge_new_2_reg_242[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => height(9),
      I1 => \ap_CS_fsm_reg[0]_1\,
      I2 => \tmp_8_fu_773_p2_carry__2_n_0\,
      I3 => p_current_y_cord_load_reg_1111(9),
      O => \upper_edge_new_2_reg_242[9]_i_1_n_0\
    );
\upper_edge_new_2_reg_242_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[0]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[0]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[10]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[10]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[11]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[11]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[12]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[12]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[13]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[13]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[14]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[14]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[15]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[15]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[16]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[16]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[17]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[17]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[18]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[18]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[19]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[19]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[1]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[1]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[20]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[20]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[21]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[21]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[22]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[22]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[23]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[23]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[24]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[24]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[25]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[25]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[26]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[26]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[27]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[27]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[28]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[28]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[29]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[29]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[2]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[2]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[30]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[30]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[31]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[31]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[3]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[3]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[4]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[4]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[5]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[5]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[6]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[6]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[7]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[7]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[8]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[8]\,
      R => '0'
    );
\upper_edge_new_2_reg_242_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_2_reg_232,
      D => \upper_edge_new_2_reg_242[9]_i_1_n_0\,
      Q => \upper_edge_new_2_reg_242_reg_n_0_[9]\,
      R => '0'
    );
\upper_edge_new_3_reg_394[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(0),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[0]\,
      O => \upper_edge_new_3_reg_394[0]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(10),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[10]\,
      O => \upper_edge_new_3_reg_394[10]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(11),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[11]\,
      O => \upper_edge_new_3_reg_394[11]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(12),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[12]\,
      O => \upper_edge_new_3_reg_394[12]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(13),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[13]\,
      O => \upper_edge_new_3_reg_394[13]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(14),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[14]\,
      O => \upper_edge_new_3_reg_394[14]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(15),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[15]\,
      O => \upper_edge_new_3_reg_394[15]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(16),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[16]\,
      O => \upper_edge_new_3_reg_394[16]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(17),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[17]\,
      O => \upper_edge_new_3_reg_394[17]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(18),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[18]\,
      O => \upper_edge_new_3_reg_394[18]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(19),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[19]\,
      O => \upper_edge_new_3_reg_394[19]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(1),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[1]\,
      O => \upper_edge_new_3_reg_394[1]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(20),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[20]\,
      O => \upper_edge_new_3_reg_394[20]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(21),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[21]\,
      O => \upper_edge_new_3_reg_394[21]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(22),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[22]\,
      O => \upper_edge_new_3_reg_394[22]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(23),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[23]\,
      O => \upper_edge_new_3_reg_394[23]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(24),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[24]\,
      O => \upper_edge_new_3_reg_394[24]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(25),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[25]\,
      O => \upper_edge_new_3_reg_394[25]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(26),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[26]\,
      O => \upper_edge_new_3_reg_394[26]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(27),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[27]\,
      O => \upper_edge_new_3_reg_394[27]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(28),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[28]\,
      O => \upper_edge_new_3_reg_394[28]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(29),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[29]\,
      O => \upper_edge_new_3_reg_394[29]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(2),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[2]\,
      O => \upper_edge_new_3_reg_394[2]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(30),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[30]\,
      O => \upper_edge_new_3_reg_394[30]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(31),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[31]\,
      O => \upper_edge_new_3_reg_394[31]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(3),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[3]\,
      O => \upper_edge_new_3_reg_394[3]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(4),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[4]\,
      O => \upper_edge_new_3_reg_394[4]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(5),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[5]\,
      O => \upper_edge_new_3_reg_394[5]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(6),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[6]\,
      O => \upper_edge_new_3_reg_394[6]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(7),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[7]\,
      O => \upper_edge_new_3_reg_394[7]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(8),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[8]\,
      O => \upper_edge_new_3_reg_394[8]_i_1_n_0\
    );
\upper_edge_new_3_reg_394[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD20"
    )
        port map (
      I0 => \^q\(0),
      I1 => \state_reg[0]\(0),
      I2 => height(9),
      I3 => \upper_edge_new_2_reg_242_reg_n_0_[9]\,
      O => \upper_edge_new_3_reg_394[9]_i_1_n_0\
    );
\upper_edge_new_3_reg_394_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[0]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[0]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[10]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[10]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[11]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[11]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[12]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[12]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[13]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[13]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[14]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[14]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[15]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[15]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[16]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[16]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[17]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[17]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[18]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[18]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[19]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[19]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[1]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[1]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[20]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[20]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[21]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[21]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[22]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[22]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[23]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[23]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[24]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[24]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[25]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[25]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[26]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[26]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[27]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[27]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[28]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[28]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[29]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[29]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[2]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[2]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[30]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[30]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[31]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[31]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[3]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[3]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[4]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[4]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[5]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[5]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[6]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[6]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[7]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[7]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[8]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[8]\,
      R => '0'
    );
\upper_edge_new_3_reg_394_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => upper_edge_flag_3_reg_384,
      D => \upper_edge_new_3_reg_394[9]_i_1_n_0\,
      Q => \upper_edge_new_3_reg_394_reg_n_0_[9]\,
      R => '0'
    );
\upper_edge_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(0),
      Q => upper_edge(0),
      R => '0'
    );
\upper_edge_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(10),
      Q => upper_edge(10),
      R => '0'
    );
\upper_edge_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(11),
      Q => upper_edge(11),
      R => '0'
    );
\upper_edge_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(12),
      Q => upper_edge(12),
      R => '0'
    );
\upper_edge_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(13),
      Q => upper_edge(13),
      R => '0'
    );
\upper_edge_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(14),
      Q => upper_edge(14),
      R => '0'
    );
\upper_edge_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(15),
      Q => upper_edge(15),
      R => '0'
    );
\upper_edge_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(16),
      Q => upper_edge(16),
      R => '0'
    );
\upper_edge_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(17),
      Q => upper_edge(17),
      R => '0'
    );
\upper_edge_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(18),
      Q => upper_edge(18),
      R => '0'
    );
\upper_edge_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(19),
      Q => upper_edge(19),
      R => '0'
    );
\upper_edge_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(1),
      Q => upper_edge(1),
      R => '0'
    );
\upper_edge_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(20),
      Q => upper_edge(20),
      R => '0'
    );
\upper_edge_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(21),
      Q => upper_edge(21),
      R => '0'
    );
\upper_edge_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(22),
      Q => upper_edge(22),
      R => '0'
    );
\upper_edge_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(23),
      Q => upper_edge(23),
      R => '0'
    );
\upper_edge_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(24),
      Q => upper_edge(24),
      R => '0'
    );
\upper_edge_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(25),
      Q => upper_edge(25),
      R => '0'
    );
\upper_edge_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(26),
      Q => upper_edge(26),
      R => '0'
    );
\upper_edge_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(27),
      Q => upper_edge(27),
      R => '0'
    );
\upper_edge_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(28),
      Q => upper_edge(28),
      R => '0'
    );
\upper_edge_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(29),
      Q => upper_edge(29),
      R => '0'
    );
\upper_edge_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(2),
      Q => upper_edge(2),
      R => '0'
    );
\upper_edge_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(30),
      Q => upper_edge(30),
      R => '0'
    );
\upper_edge_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(31),
      Q => upper_edge(31),
      R => '0'
    );
\upper_edge_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(3),
      Q => upper_edge(3),
      R => '0'
    );
\upper_edge_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(4),
      Q => upper_edge(4),
      R => '0'
    );
\upper_edge_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(5),
      Q => upper_edge(5),
      R => '0'
    );
\upper_edge_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(6),
      Q => upper_edge(6),
      R => '0'
    );
\upper_edge_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(7),
      Q => upper_edge(7),
      R => '0'
    );
\upper_edge_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(8),
      Q => upper_edge(8),
      R => '0'
    );
\upper_edge_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => upper_edge0,
      D => ap_phi_mux_upper_edge_new_3_phi_fu_397_p4(9),
      Q => upper_edge(9),
      R => '0'
    );
\width_left_edge_load_reg_1140[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(0),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(0),
      O => width_left_edge_load_fu_510_p3(0)
    );
\width_left_edge_load_reg_1140[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(10),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(10),
      O => width_left_edge_load_fu_510_p3(10)
    );
\width_left_edge_load_reg_1140[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(11),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(11),
      O => width_left_edge_load_fu_510_p3(11)
    );
\width_left_edge_load_reg_1140[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(12),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(12),
      O => width_left_edge_load_fu_510_p3(12)
    );
\width_left_edge_load_reg_1140[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(13),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(13),
      O => width_left_edge_load_fu_510_p3(13)
    );
\width_left_edge_load_reg_1140[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(14),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(14),
      O => width_left_edge_load_fu_510_p3(14)
    );
\width_left_edge_load_reg_1140[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(15),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(15),
      O => width_left_edge_load_fu_510_p3(15)
    );
\width_left_edge_load_reg_1140[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(16),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(16),
      O => width_left_edge_load_fu_510_p3(16)
    );
\width_left_edge_load_reg_1140[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(17),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(17),
      O => width_left_edge_load_fu_510_p3(17)
    );
\width_left_edge_load_reg_1140[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(18),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(18),
      O => width_left_edge_load_fu_510_p3(18)
    );
\width_left_edge_load_reg_1140[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(19),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(19),
      O => width_left_edge_load_fu_510_p3(19)
    );
\width_left_edge_load_reg_1140[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(1),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(1),
      O => width_left_edge_load_fu_510_p3(1)
    );
\width_left_edge_load_reg_1140[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(20),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(20),
      O => width_left_edge_load_fu_510_p3(20)
    );
\width_left_edge_load_reg_1140[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(21),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(21),
      O => width_left_edge_load_fu_510_p3(21)
    );
\width_left_edge_load_reg_1140[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(22),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(22),
      O => width_left_edge_load_fu_510_p3(22)
    );
\width_left_edge_load_reg_1140[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(23),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(23),
      O => width_left_edge_load_fu_510_p3(23)
    );
\width_left_edge_load_reg_1140[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(24),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(24),
      O => width_left_edge_load_fu_510_p3(24)
    );
\width_left_edge_load_reg_1140[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(25),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(25),
      O => width_left_edge_load_fu_510_p3(25)
    );
\width_left_edge_load_reg_1140[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(26),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(26),
      O => width_left_edge_load_fu_510_p3(26)
    );
\width_left_edge_load_reg_1140[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(27),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(27),
      O => width_left_edge_load_fu_510_p3(27)
    );
\width_left_edge_load_reg_1140[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(28),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(28),
      O => width_left_edge_load_fu_510_p3(28)
    );
\width_left_edge_load_reg_1140[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(29),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(29),
      O => width_left_edge_load_fu_510_p3(29)
    );
\width_left_edge_load_reg_1140[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(2),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(2),
      O => width_left_edge_load_fu_510_p3(2)
    );
\width_left_edge_load_reg_1140[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(30),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(30),
      O => width_left_edge_load_fu_510_p3(30)
    );
\width_left_edge_load_reg_1140[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(31),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(31),
      O => width_left_edge_load_fu_510_p3(31)
    );
\width_left_edge_load_reg_1140[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(3),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(3),
      O => width_left_edge_load_fu_510_p3(3)
    );
\width_left_edge_load_reg_1140[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(4),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(4),
      O => width_left_edge_load_fu_510_p3(4)
    );
\width_left_edge_load_reg_1140[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(5),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(5),
      O => width_left_edge_load_fu_510_p3(5)
    );
\width_left_edge_load_reg_1140[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(6),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(6),
      O => width_left_edge_load_fu_510_p3(6)
    );
\width_left_edge_load_reg_1140[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(7),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(7),
      O => width_left_edge_load_fu_510_p3(7)
    );
\width_left_edge_load_reg_1140[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(8),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(8),
      O => width_left_edge_load_fu_510_p3(8)
    );
\width_left_edge_load_reg_1140[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => width(9),
      I1 => tmp_4_fu_488_p2,
      I2 => left_edge(9),
      O => width_left_edge_load_fu_510_p3(9)
    );
\width_left_edge_load_reg_1140_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(0),
      Q => width_left_edge_load_reg_1140(0),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(10),
      Q => width_left_edge_load_reg_1140(10),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(11),
      Q => width_left_edge_load_reg_1140(11),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(12),
      Q => width_left_edge_load_reg_1140(12),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(13),
      Q => width_left_edge_load_reg_1140(13),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(14),
      Q => width_left_edge_load_reg_1140(14),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(15),
      Q => width_left_edge_load_reg_1140(15),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(16),
      Q => width_left_edge_load_reg_1140(16),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(17),
      Q => width_left_edge_load_reg_1140(17),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(18),
      Q => width_left_edge_load_reg_1140(18),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(19),
      Q => width_left_edge_load_reg_1140(19),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(1),
      Q => width_left_edge_load_reg_1140(1),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(20),
      Q => width_left_edge_load_reg_1140(20),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(21),
      Q => width_left_edge_load_reg_1140(21),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(22),
      Q => width_left_edge_load_reg_1140(22),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(23),
      Q => width_left_edge_load_reg_1140(23),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(24),
      Q => width_left_edge_load_reg_1140(24),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(25),
      Q => width_left_edge_load_reg_1140(25),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(26),
      Q => width_left_edge_load_reg_1140(26),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(27),
      Q => width_left_edge_load_reg_1140(27),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(28),
      Q => width_left_edge_load_reg_1140(28),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(29),
      Q => width_left_edge_load_reg_1140(29),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(2),
      Q => width_left_edge_load_reg_1140(2),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(30),
      Q => width_left_edge_load_reg_1140(30),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(31),
      Q => width_left_edge_load_reg_1140(31),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(3),
      Q => width_left_edge_load_reg_1140(3),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(4),
      Q => width_left_edge_load_reg_1140(4),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(5),
      Q => width_left_edge_load_reg_1140(5),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(6),
      Q => width_left_edge_load_reg_1140(6),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(7),
      Q => width_left_edge_load_reg_1140(7),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(8),
      Q => width_left_edge_load_reg_1140(8),
      R => '0'
    );
\width_left_edge_load_reg_1140_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^q\(0),
      D => width_left_edge_load_fu_510_p3(9),
      Q => width_left_edge_load_reg_1140(9),
      R => '0'
    );
\x_cord_out[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in,
      I1 => p_current_x_cord_load_reg_1099(0),
      O => \^x_cord_out\(0)
    );
\x_cord_out[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(10),
      I1 => p_0_in,
      O => \^x_cord_out\(10)
    );
\x_cord_out[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(11),
      I1 => p_0_in,
      O => \^x_cord_out\(11)
    );
\x_cord_out[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(12),
      I1 => p_0_in,
      O => \^x_cord_out\(12)
    );
\x_cord_out[12]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cord_out[8]_INST_0_i_1_n_0\,
      CO(3) => \x_cord_out[12]_INST_0_i_1_n_0\,
      CO(2) => \x_cord_out[12]_INST_0_i_1_n_1\,
      CO(1) => \x_cord_out[12]_INST_0_i_1_n_2\,
      CO(0) => \x_cord_out[12]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_27_fu_1002_p2(12 downto 9),
      S(3 downto 0) => p_current_x_cord_load_reg_1099(12 downto 9)
    );
\x_cord_out[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(13),
      I1 => p_0_in,
      O => \^x_cord_out\(13)
    );
\x_cord_out[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(14),
      I1 => p_0_in,
      O => \^x_cord_out\(14)
    );
\x_cord_out[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(15),
      I1 => p_0_in,
      O => \^x_cord_out\(15)
    );
\x_cord_out[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(16),
      I1 => p_0_in,
      O => \^x_cord_out\(16)
    );
\x_cord_out[16]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cord_out[12]_INST_0_i_1_n_0\,
      CO(3) => \x_cord_out[16]_INST_0_i_1_n_0\,
      CO(2) => \x_cord_out[16]_INST_0_i_1_n_1\,
      CO(1) => \x_cord_out[16]_INST_0_i_1_n_2\,
      CO(0) => \x_cord_out[16]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_27_fu_1002_p2(16 downto 13),
      S(3 downto 0) => p_current_x_cord_load_reg_1099(16 downto 13)
    );
\x_cord_out[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(17),
      I1 => p_0_in,
      O => \^x_cord_out\(17)
    );
\x_cord_out[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(18),
      I1 => p_0_in,
      O => \^x_cord_out\(18)
    );
\x_cord_out[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(19),
      I1 => p_0_in,
      O => \^x_cord_out\(19)
    );
\x_cord_out[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(1),
      I1 => p_0_in,
      O => \^x_cord_out\(1)
    );
\x_cord_out[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(20),
      I1 => p_0_in,
      O => \^x_cord_out\(20)
    );
\x_cord_out[20]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cord_out[16]_INST_0_i_1_n_0\,
      CO(3) => \x_cord_out[20]_INST_0_i_1_n_0\,
      CO(2) => \x_cord_out[20]_INST_0_i_1_n_1\,
      CO(1) => \x_cord_out[20]_INST_0_i_1_n_2\,
      CO(0) => \x_cord_out[20]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_27_fu_1002_p2(20 downto 17),
      S(3 downto 0) => p_current_x_cord_load_reg_1099(20 downto 17)
    );
\x_cord_out[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(21),
      I1 => p_0_in,
      O => \^x_cord_out\(21)
    );
\x_cord_out[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(22),
      I1 => p_0_in,
      O => \^x_cord_out\(22)
    );
\x_cord_out[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(23),
      I1 => p_0_in,
      O => \^x_cord_out\(23)
    );
\x_cord_out[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(24),
      I1 => p_0_in,
      O => \^x_cord_out\(24)
    );
\x_cord_out[24]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cord_out[20]_INST_0_i_1_n_0\,
      CO(3) => \x_cord_out[24]_INST_0_i_1_n_0\,
      CO(2) => \x_cord_out[24]_INST_0_i_1_n_1\,
      CO(1) => \x_cord_out[24]_INST_0_i_1_n_2\,
      CO(0) => \x_cord_out[24]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_27_fu_1002_p2(24 downto 21),
      S(3 downto 0) => p_current_x_cord_load_reg_1099(24 downto 21)
    );
\x_cord_out[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(25),
      I1 => p_0_in,
      O => \^x_cord_out\(25)
    );
\x_cord_out[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(26),
      I1 => p_0_in,
      O => \^x_cord_out\(26)
    );
\x_cord_out[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(27),
      I1 => p_0_in,
      O => \^x_cord_out\(27)
    );
\x_cord_out[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(28),
      I1 => p_0_in,
      O => \^x_cord_out\(28)
    );
\x_cord_out[28]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cord_out[24]_INST_0_i_1_n_0\,
      CO(3) => \x_cord_out[28]_INST_0_i_1_n_0\,
      CO(2) => \x_cord_out[28]_INST_0_i_1_n_1\,
      CO(1) => \x_cord_out[28]_INST_0_i_1_n_2\,
      CO(0) => \x_cord_out[28]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_27_fu_1002_p2(28 downto 25),
      S(3 downto 0) => p_current_x_cord_load_reg_1099(28 downto 25)
    );
\x_cord_out[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(29),
      I1 => p_0_in,
      O => \^x_cord_out\(29)
    );
\x_cord_out[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(2),
      I1 => p_0_in,
      O => \^x_cord_out\(2)
    );
\x_cord_out[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(30),
      I1 => p_0_in,
      O => \^x_cord_out\(30)
    );
\x_cord_out[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(31),
      I1 => p_0_in,
      O => \^x_cord_out\(31)
    );
\x_cord_out[31]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cord_out[28]_INST_0_i_1_n_0\,
      CO(3 downto 2) => \NLW_x_cord_out[31]_INST_0_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \x_cord_out[31]_INST_0_i_1_n_2\,
      CO(0) => \x_cord_out[31]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_x_cord_out[31]_INST_0_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => tmp_27_fu_1002_p2(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => p_current_x_cord_load_reg_1099(31 downto 29)
    );
\x_cord_out[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(3),
      I1 => p_0_in,
      O => \^x_cord_out\(3)
    );
\x_cord_out[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(4),
      I1 => p_0_in,
      O => \^x_cord_out\(4)
    );
\x_cord_out[4]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \x_cord_out[4]_INST_0_i_1_n_0\,
      CO(2) => \x_cord_out[4]_INST_0_i_1_n_1\,
      CO(1) => \x_cord_out[4]_INST_0_i_1_n_2\,
      CO(0) => \x_cord_out[4]_INST_0_i_1_n_3\,
      CYINIT => p_current_x_cord_load_reg_1099(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_27_fu_1002_p2(4 downto 1),
      S(3 downto 0) => p_current_x_cord_load_reg_1099(4 downto 1)
    );
\x_cord_out[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(5),
      I1 => p_0_in,
      O => \^x_cord_out\(5)
    );
\x_cord_out[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(6),
      I1 => p_0_in,
      O => \^x_cord_out\(6)
    );
\x_cord_out[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(7),
      I1 => p_0_in,
      O => \^x_cord_out\(7)
    );
\x_cord_out[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(8),
      I1 => p_0_in,
      O => \^x_cord_out\(8)
    );
\x_cord_out[8]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cord_out[4]_INST_0_i_1_n_0\,
      CO(3) => \x_cord_out[8]_INST_0_i_1_n_0\,
      CO(2) => \x_cord_out[8]_INST_0_i_1_n_1\,
      CO(1) => \x_cord_out[8]_INST_0_i_1_n_2\,
      CO(0) => \x_cord_out[8]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_27_fu_1002_p2(8 downto 5),
      S(3 downto 0) => p_current_x_cord_load_reg_1099(8 downto 5)
    );
\x_cord_out[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_27_fu_1002_p2(9),
      I1 => p_0_in,
      O => \^x_cord_out\(9)
    );
x_cord_out_ap_vld_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880888"
    )
        port map (
      I0 => \tmp_reg_1168_reg[0]_rep_n_0\,
      I1 => \ap_CS_fsm_reg[2]_rep_n_0\,
      I2 => tmp_5_reg_1176,
      I3 => tmp_10_reg_1181,
      I4 => sig_det_color_cord_cord_out_V_full_n,
      O => \^e\(0)
    );
\y_cord_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => p_current_y_cord_load_reg_1111(0),
      I1 => p_0_in,
      I2 => tmp_5_reg_1176,
      O => y_cord_out(0)
    );
\y_cord_out[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(10),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(10),
      O => y_cord_out(10)
    );
\y_cord_out[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(11),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(11),
      O => y_cord_out(11)
    );
\y_cord_out[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(12),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(12),
      O => y_cord_out(12)
    );
\y_cord_out[12]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cord_out[8]_INST_0_i_1_n_0\,
      CO(3) => \y_cord_out[12]_INST_0_i_1_n_0\,
      CO(2) => \y_cord_out[12]_INST_0_i_1_n_1\,
      CO(1) => \y_cord_out[12]_INST_0_i_1_n_2\,
      CO(0) => \y_cord_out[12]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_26_fu_990_p2(12 downto 9),
      S(3 downto 0) => p_current_y_cord_load_reg_1111(12 downto 9)
    );
\y_cord_out[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(13),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(13),
      O => y_cord_out(13)
    );
\y_cord_out[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(14),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(14),
      O => y_cord_out(14)
    );
\y_cord_out[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(15),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(15),
      O => y_cord_out(15)
    );
\y_cord_out[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(16),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(16),
      O => y_cord_out(16)
    );
\y_cord_out[16]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cord_out[12]_INST_0_i_1_n_0\,
      CO(3) => \y_cord_out[16]_INST_0_i_1_n_0\,
      CO(2) => \y_cord_out[16]_INST_0_i_1_n_1\,
      CO(1) => \y_cord_out[16]_INST_0_i_1_n_2\,
      CO(0) => \y_cord_out[16]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_26_fu_990_p2(16 downto 13),
      S(3 downto 0) => p_current_y_cord_load_reg_1111(16 downto 13)
    );
\y_cord_out[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(17),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(17),
      O => y_cord_out(17)
    );
\y_cord_out[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(18),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(18),
      O => y_cord_out(18)
    );
\y_cord_out[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(19),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(19),
      O => y_cord_out(19)
    );
\y_cord_out[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(1),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(1),
      O => y_cord_out(1)
    );
\y_cord_out[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(20),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(20),
      O => y_cord_out(20)
    );
\y_cord_out[20]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cord_out[16]_INST_0_i_1_n_0\,
      CO(3) => \y_cord_out[20]_INST_0_i_1_n_0\,
      CO(2) => \y_cord_out[20]_INST_0_i_1_n_1\,
      CO(1) => \y_cord_out[20]_INST_0_i_1_n_2\,
      CO(0) => \y_cord_out[20]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_26_fu_990_p2(20 downto 17),
      S(3 downto 0) => p_current_y_cord_load_reg_1111(20 downto 17)
    );
\y_cord_out[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(21),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(21),
      O => y_cord_out(21)
    );
\y_cord_out[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(22),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(22),
      O => y_cord_out(22)
    );
\y_cord_out[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(23),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(23),
      O => y_cord_out(23)
    );
\y_cord_out[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(24),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(24),
      O => y_cord_out(24)
    );
\y_cord_out[24]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cord_out[20]_INST_0_i_1_n_0\,
      CO(3) => \y_cord_out[24]_INST_0_i_1_n_0\,
      CO(2) => \y_cord_out[24]_INST_0_i_1_n_1\,
      CO(1) => \y_cord_out[24]_INST_0_i_1_n_2\,
      CO(0) => \y_cord_out[24]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_26_fu_990_p2(24 downto 21),
      S(3 downto 0) => p_current_y_cord_load_reg_1111(24 downto 21)
    );
\y_cord_out[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(25),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(25),
      O => y_cord_out(25)
    );
\y_cord_out[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(26),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(26),
      O => y_cord_out(26)
    );
\y_cord_out[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(27),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(27),
      O => y_cord_out(27)
    );
\y_cord_out[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(28),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(28),
      O => y_cord_out(28)
    );
\y_cord_out[28]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cord_out[24]_INST_0_i_1_n_0\,
      CO(3) => \y_cord_out[28]_INST_0_i_1_n_0\,
      CO(2) => \y_cord_out[28]_INST_0_i_1_n_1\,
      CO(1) => \y_cord_out[28]_INST_0_i_1_n_2\,
      CO(0) => \y_cord_out[28]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_26_fu_990_p2(28 downto 25),
      S(3 downto 0) => p_current_y_cord_load_reg_1111(28 downto 25)
    );
\y_cord_out[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(29),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(29),
      O => y_cord_out(29)
    );
\y_cord_out[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(2),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(2),
      O => y_cord_out(2)
    );
\y_cord_out[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(30),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(30),
      O => y_cord_out(30)
    );
\y_cord_out[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(31),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(31),
      O => y_cord_out(31)
    );
\y_cord_out[31]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cord_out[28]_INST_0_i_1_n_0\,
      CO(3 downto 2) => \NLW_y_cord_out[31]_INST_0_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y_cord_out[31]_INST_0_i_1_n_2\,
      CO(0) => \y_cord_out[31]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_y_cord_out[31]_INST_0_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => tmp_26_fu_990_p2(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => p_current_y_cord_load_reg_1111(31 downto 29)
    );
\y_cord_out[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(3),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(3),
      O => y_cord_out(3)
    );
\y_cord_out[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(4),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(4),
      O => y_cord_out(4)
    );
\y_cord_out[4]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_cord_out[4]_INST_0_i_1_n_0\,
      CO(2) => \y_cord_out[4]_INST_0_i_1_n_1\,
      CO(1) => \y_cord_out[4]_INST_0_i_1_n_2\,
      CO(0) => \y_cord_out[4]_INST_0_i_1_n_3\,
      CYINIT => p_current_y_cord_load_reg_1111(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_26_fu_990_p2(4 downto 1),
      S(3 downto 0) => p_current_y_cord_load_reg_1111(4 downto 1)
    );
\y_cord_out[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(5),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(5),
      O => y_cord_out(5)
    );
\y_cord_out[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(6),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(6),
      O => y_cord_out(6)
    );
\y_cord_out[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(7),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(7),
      O => y_cord_out(7)
    );
\y_cord_out[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(8),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(8),
      O => y_cord_out(8)
    );
\y_cord_out[8]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cord_out[4]_INST_0_i_1_n_0\,
      CO(3) => \y_cord_out[8]_INST_0_i_1_n_0\,
      CO(2) => \y_cord_out[8]_INST_0_i_1_n_1\,
      CO(1) => \y_cord_out[8]_INST_0_i_1_n_2\,
      CO(0) => \y_cord_out[8]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_26_fu_990_p2(8 downto 5),
      S(3 downto 0) => p_current_y_cord_load_reg_1111(8 downto 5)
    );
\y_cord_out[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F40"
    )
        port map (
      I0 => tmp_5_reg_1176,
      I1 => tmp_26_fu_990_p2(9),
      I2 => p_0_in,
      I3 => p_current_y_cord_load_reg_1111(9),
      O => y_cord_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_reg_slice is
  port (
    sig_det_color_cord_cord_out_V_full_n : out STD_LOGIC;
    cord_out_V_TVALID : out STD_LOGIC;
    \data_p1_reg[31]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cord_out_V_TDATA : out STD_LOGIC_VECTOR ( 95 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_ready_t_reg_0 : in STD_LOGIC;
    cord_out_V_TREADY : in STD_LOGIC;
    \p_4_reg_1204_reg[63]\ : in STD_LOGIC_VECTOR ( 95 downto 0 );
    edgeout_val_ap_vld : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_reg_slice : entity is "det_color_cord_cord_out_V_reg_slice";
end hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_reg_slice;

architecture STRUCTURE of hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_reg_slice is
  signal \^cord_out_v_tvalid\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 95 downto 32 );
  signal load_p1 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 95 downto 32 );
  signal s_ready_t_i_1_n_0 : STD_LOGIC;
  signal \^sig_det_color_cord_cord_out_v_full_n\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \state__0\ : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
begin
  cord_out_V_TVALID <= \^cord_out_v_tvalid\;
  sig_det_color_cord_cord_out_V_full_n <= \^sig_det_color_cord_cord_out_v_full_n\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1102"
    )
        port map (
      I0 => \state__0\(1),
      I1 => cord_out_V_TREADY,
      I2 => s_ready_t_reg_0,
      I3 => \state__0\(0),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"442D"
    )
        port map (
      I0 => \state__0\(1),
      I1 => cord_out_V_TREADY,
      I2 => s_ready_t_reg_0,
      I3 => \state__0\(0),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      R => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => SR(0)
    );
\data_p1[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      O => \data_p1_reg[31]_0\
    );
\data_p1[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(32),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(32),
      O => p_0_in(32)
    );
\data_p1[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(33),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(33),
      O => p_0_in(33)
    );
\data_p1[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(34),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(34),
      O => p_0_in(34)
    );
\data_p1[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(35),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(35),
      O => p_0_in(35)
    );
\data_p1[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(36),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(36),
      O => p_0_in(36)
    );
\data_p1[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(37),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(37),
      O => p_0_in(37)
    );
\data_p1[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(38),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(38),
      O => p_0_in(38)
    );
\data_p1[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(39),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(39),
      O => p_0_in(39)
    );
\data_p1[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(40),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(40),
      O => p_0_in(40)
    );
\data_p1[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(41),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(41),
      O => p_0_in(41)
    );
\data_p1[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(42),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(42),
      O => p_0_in(42)
    );
\data_p1[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(43),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(43),
      O => p_0_in(43)
    );
\data_p1[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(44),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(44),
      O => p_0_in(44)
    );
\data_p1[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(45),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(45),
      O => p_0_in(45)
    );
\data_p1[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(46),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(46),
      O => p_0_in(46)
    );
\data_p1[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(47),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(47),
      O => p_0_in(47)
    );
\data_p1[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(48),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(48),
      O => p_0_in(48)
    );
\data_p1[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(49),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(49),
      O => p_0_in(49)
    );
\data_p1[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(50),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(50),
      O => p_0_in(50)
    );
\data_p1[51]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(51),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(51),
      O => p_0_in(51)
    );
\data_p1[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(52),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(52),
      O => p_0_in(52)
    );
\data_p1[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(53),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(53),
      O => p_0_in(53)
    );
\data_p1[54]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(54),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(54),
      O => p_0_in(54)
    );
\data_p1[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(55),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(55),
      O => p_0_in(55)
    );
\data_p1[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(56),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(56),
      O => p_0_in(56)
    );
\data_p1[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(57),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(57),
      O => p_0_in(57)
    );
\data_p1[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(58),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(58),
      O => p_0_in(58)
    );
\data_p1[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(59),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(59),
      O => p_0_in(59)
    );
\data_p1[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(60),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(60),
      O => p_0_in(60)
    );
\data_p1[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(61),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(61),
      O => p_0_in(61)
    );
\data_p1[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(62),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(62),
      O => p_0_in(62)
    );
\data_p1[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(63),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(63),
      O => p_0_in(63)
    );
\data_p1[64]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(64),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(64),
      O => p_0_in(64)
    );
\data_p1[65]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(65),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(65),
      O => p_0_in(65)
    );
\data_p1[66]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(66),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(66),
      O => p_0_in(66)
    );
\data_p1[67]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(67),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(67),
      O => p_0_in(67)
    );
\data_p1[68]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(68),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(68),
      O => p_0_in(68)
    );
\data_p1[69]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(69),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(69),
      O => p_0_in(69)
    );
\data_p1[70]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(70),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(70),
      O => p_0_in(70)
    );
\data_p1[71]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(71),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(71),
      O => p_0_in(71)
    );
\data_p1[72]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(72),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(72),
      O => p_0_in(72)
    );
\data_p1[73]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(73),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(73),
      O => p_0_in(73)
    );
\data_p1[74]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(74),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(74),
      O => p_0_in(74)
    );
\data_p1[75]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(75),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(75),
      O => p_0_in(75)
    );
\data_p1[76]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(76),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(76),
      O => p_0_in(76)
    );
\data_p1[77]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(77),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(77),
      O => p_0_in(77)
    );
\data_p1[78]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(78),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(78),
      O => p_0_in(78)
    );
\data_p1[79]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(79),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(79),
      O => p_0_in(79)
    );
\data_p1[80]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(80),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(80),
      O => p_0_in(80)
    );
\data_p1[81]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(81),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(81),
      O => p_0_in(81)
    );
\data_p1[82]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(82),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(82),
      O => p_0_in(82)
    );
\data_p1[83]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(83),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(83),
      O => p_0_in(83)
    );
\data_p1[84]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(84),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(84),
      O => p_0_in(84)
    );
\data_p1[85]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(85),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(85),
      O => p_0_in(85)
    );
\data_p1[86]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(86),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(86),
      O => p_0_in(86)
    );
\data_p1[87]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(87),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(87),
      O => p_0_in(87)
    );
\data_p1[88]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(88),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(88),
      O => p_0_in(88)
    );
\data_p1[89]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(89),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(89),
      O => p_0_in(89)
    );
\data_p1[90]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(90),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(90),
      O => p_0_in(90)
    );
\data_p1[91]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(91),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(91),
      O => p_0_in(91)
    );
\data_p1[92]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(92),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(92),
      O => p_0_in(92)
    );
\data_p1[93]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(93),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(93),
      O => p_0_in(93)
    );
\data_p1[94]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(94),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(94),
      O => p_0_in(94)
    );
\data_p1[95]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10D1"
    )
        port map (
      I0 => s_ready_t_reg_0,
      I1 => \state__0\(0),
      I2 => cord_out_V_TREADY,
      I3 => \state__0\(1),
      O => load_p1
    );
\data_p1[95]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => data_p2(95),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \p_4_reg_1204_reg[63]\(95),
      O => p_0_in(95)
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(0),
      Q => cord_out_V_TDATA(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(10),
      Q => cord_out_V_TDATA(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(11),
      Q => cord_out_V_TDATA(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(12),
      Q => cord_out_V_TDATA(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(13),
      Q => cord_out_V_TDATA(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(14),
      Q => cord_out_V_TDATA(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(15),
      Q => cord_out_V_TDATA(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(16),
      Q => cord_out_V_TDATA(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(17),
      Q => cord_out_V_TDATA(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(18),
      Q => cord_out_V_TDATA(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(19),
      Q => cord_out_V_TDATA(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(1),
      Q => cord_out_V_TDATA(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(20),
      Q => cord_out_V_TDATA(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(21),
      Q => cord_out_V_TDATA(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(22),
      Q => cord_out_V_TDATA(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(23),
      Q => cord_out_V_TDATA(23),
      R => '0'
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(24),
      Q => cord_out_V_TDATA(24),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(25),
      Q => cord_out_V_TDATA(25),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(26),
      Q => cord_out_V_TDATA(26),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(27),
      Q => cord_out_V_TDATA(27),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(28),
      Q => cord_out_V_TDATA(28),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(29),
      Q => cord_out_V_TDATA(29),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(2),
      Q => cord_out_V_TDATA(2),
      R => '0'
    );
\data_p1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(30),
      Q => cord_out_V_TDATA(30),
      R => '0'
    );
\data_p1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(31),
      Q => cord_out_V_TDATA(31),
      R => '0'
    );
\data_p1_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(32),
      Q => cord_out_V_TDATA(32),
      R => '0'
    );
\data_p1_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(33),
      Q => cord_out_V_TDATA(33),
      R => '0'
    );
\data_p1_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(34),
      Q => cord_out_V_TDATA(34),
      R => '0'
    );
\data_p1_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(35),
      Q => cord_out_V_TDATA(35),
      R => '0'
    );
\data_p1_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(36),
      Q => cord_out_V_TDATA(36),
      R => '0'
    );
\data_p1_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(37),
      Q => cord_out_V_TDATA(37),
      R => '0'
    );
\data_p1_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(38),
      Q => cord_out_V_TDATA(38),
      R => '0'
    );
\data_p1_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(39),
      Q => cord_out_V_TDATA(39),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(3),
      Q => cord_out_V_TDATA(3),
      R => '0'
    );
\data_p1_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(40),
      Q => cord_out_V_TDATA(40),
      R => '0'
    );
\data_p1_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(41),
      Q => cord_out_V_TDATA(41),
      R => '0'
    );
\data_p1_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(42),
      Q => cord_out_V_TDATA(42),
      R => '0'
    );
\data_p1_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(43),
      Q => cord_out_V_TDATA(43),
      R => '0'
    );
\data_p1_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(44),
      Q => cord_out_V_TDATA(44),
      R => '0'
    );
\data_p1_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(45),
      Q => cord_out_V_TDATA(45),
      R => '0'
    );
\data_p1_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(46),
      Q => cord_out_V_TDATA(46),
      R => '0'
    );
\data_p1_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(47),
      Q => cord_out_V_TDATA(47),
      R => '0'
    );
\data_p1_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(48),
      Q => cord_out_V_TDATA(48),
      R => '0'
    );
\data_p1_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(49),
      Q => cord_out_V_TDATA(49),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(4),
      Q => cord_out_V_TDATA(4),
      R => '0'
    );
\data_p1_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(50),
      Q => cord_out_V_TDATA(50),
      R => '0'
    );
\data_p1_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(51),
      Q => cord_out_V_TDATA(51),
      R => '0'
    );
\data_p1_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(52),
      Q => cord_out_V_TDATA(52),
      R => '0'
    );
\data_p1_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(53),
      Q => cord_out_V_TDATA(53),
      R => '0'
    );
\data_p1_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(54),
      Q => cord_out_V_TDATA(54),
      R => '0'
    );
\data_p1_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(55),
      Q => cord_out_V_TDATA(55),
      R => '0'
    );
\data_p1_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(56),
      Q => cord_out_V_TDATA(56),
      R => '0'
    );
\data_p1_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(57),
      Q => cord_out_V_TDATA(57),
      R => '0'
    );
\data_p1_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(58),
      Q => cord_out_V_TDATA(58),
      R => '0'
    );
\data_p1_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(59),
      Q => cord_out_V_TDATA(59),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(5),
      Q => cord_out_V_TDATA(5),
      R => '0'
    );
\data_p1_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(60),
      Q => cord_out_V_TDATA(60),
      R => '0'
    );
\data_p1_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(61),
      Q => cord_out_V_TDATA(61),
      R => '0'
    );
\data_p1_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(62),
      Q => cord_out_V_TDATA(62),
      R => '0'
    );
\data_p1_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(63),
      Q => cord_out_V_TDATA(63),
      R => '0'
    );
\data_p1_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(64),
      Q => cord_out_V_TDATA(64),
      R => '0'
    );
\data_p1_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(65),
      Q => cord_out_V_TDATA(65),
      R => '0'
    );
\data_p1_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(66),
      Q => cord_out_V_TDATA(66),
      R => '0'
    );
\data_p1_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(67),
      Q => cord_out_V_TDATA(67),
      R => '0'
    );
\data_p1_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(68),
      Q => cord_out_V_TDATA(68),
      R => '0'
    );
\data_p1_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(69),
      Q => cord_out_V_TDATA(69),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(6),
      Q => cord_out_V_TDATA(6),
      R => '0'
    );
\data_p1_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(70),
      Q => cord_out_V_TDATA(70),
      R => '0'
    );
\data_p1_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(71),
      Q => cord_out_V_TDATA(71),
      R => '0'
    );
\data_p1_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(72),
      Q => cord_out_V_TDATA(72),
      R => '0'
    );
\data_p1_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(73),
      Q => cord_out_V_TDATA(73),
      R => '0'
    );
\data_p1_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(74),
      Q => cord_out_V_TDATA(74),
      R => '0'
    );
\data_p1_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(75),
      Q => cord_out_V_TDATA(75),
      R => '0'
    );
\data_p1_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(76),
      Q => cord_out_V_TDATA(76),
      R => '0'
    );
\data_p1_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(77),
      Q => cord_out_V_TDATA(77),
      R => '0'
    );
\data_p1_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(78),
      Q => cord_out_V_TDATA(78),
      R => '0'
    );
\data_p1_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(79),
      Q => cord_out_V_TDATA(79),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(7),
      Q => cord_out_V_TDATA(7),
      R => '0'
    );
\data_p1_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(80),
      Q => cord_out_V_TDATA(80),
      R => '0'
    );
\data_p1_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(81),
      Q => cord_out_V_TDATA(81),
      R => '0'
    );
\data_p1_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(82),
      Q => cord_out_V_TDATA(82),
      R => '0'
    );
\data_p1_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(83),
      Q => cord_out_V_TDATA(83),
      R => '0'
    );
\data_p1_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(84),
      Q => cord_out_V_TDATA(84),
      R => '0'
    );
\data_p1_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(85),
      Q => cord_out_V_TDATA(85),
      R => '0'
    );
\data_p1_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(86),
      Q => cord_out_V_TDATA(86),
      R => '0'
    );
\data_p1_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(87),
      Q => cord_out_V_TDATA(87),
      R => '0'
    );
\data_p1_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(88),
      Q => cord_out_V_TDATA(88),
      R => '0'
    );
\data_p1_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(89),
      Q => cord_out_V_TDATA(89),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(8),
      Q => cord_out_V_TDATA(8),
      R => '0'
    );
\data_p1_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(90),
      Q => cord_out_V_TDATA(90),
      R => '0'
    );
\data_p1_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(91),
      Q => cord_out_V_TDATA(91),
      R => '0'
    );
\data_p1_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(92),
      Q => cord_out_V_TDATA(92),
      R => '0'
    );
\data_p1_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(93),
      Q => cord_out_V_TDATA(93),
      R => '0'
    );
\data_p1_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(94),
      Q => cord_out_V_TDATA(94),
      R => '0'
    );
\data_p1_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => p_0_in(95),
      Q => cord_out_V_TDATA(95),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => D(9),
      Q => cord_out_V_TDATA(9),
      R => '0'
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(0),
      Q => Q(0),
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(10),
      Q => Q(10),
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(11),
      Q => Q(11),
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(12),
      Q => Q(12),
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(13),
      Q => Q(13),
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(14),
      Q => Q(14),
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(15),
      Q => Q(15),
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(16),
      Q => Q(16),
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(17),
      Q => Q(17),
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(18),
      Q => Q(18),
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(19),
      Q => Q(19),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(1),
      Q => Q(1),
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(20),
      Q => Q(20),
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(21),
      Q => Q(21),
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(22),
      Q => Q(22),
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(23),
      Q => Q(23),
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(24),
      Q => Q(24),
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(25),
      Q => Q(25),
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(26),
      Q => Q(26),
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(27),
      Q => Q(27),
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(28),
      Q => Q(28),
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(29),
      Q => Q(29),
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(2),
      Q => Q(2),
      R => '0'
    );
\data_p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(30),
      Q => Q(30),
      R => '0'
    );
\data_p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(31),
      Q => Q(31),
      R => '0'
    );
\data_p2_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(32),
      Q => data_p2(32),
      R => '0'
    );
\data_p2_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(33),
      Q => data_p2(33),
      R => '0'
    );
\data_p2_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(34),
      Q => data_p2(34),
      R => '0'
    );
\data_p2_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(35),
      Q => data_p2(35),
      R => '0'
    );
\data_p2_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(36),
      Q => data_p2(36),
      R => '0'
    );
\data_p2_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(37),
      Q => data_p2(37),
      R => '0'
    );
\data_p2_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(38),
      Q => data_p2(38),
      R => '0'
    );
\data_p2_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(39),
      Q => data_p2(39),
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(3),
      Q => Q(3),
      R => '0'
    );
\data_p2_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(40),
      Q => data_p2(40),
      R => '0'
    );
\data_p2_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(41),
      Q => data_p2(41),
      R => '0'
    );
\data_p2_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(42),
      Q => data_p2(42),
      R => '0'
    );
\data_p2_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(43),
      Q => data_p2(43),
      R => '0'
    );
\data_p2_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(44),
      Q => data_p2(44),
      R => '0'
    );
\data_p2_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(45),
      Q => data_p2(45),
      R => '0'
    );
\data_p2_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(46),
      Q => data_p2(46),
      R => '0'
    );
\data_p2_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(47),
      Q => data_p2(47),
      R => '0'
    );
\data_p2_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(48),
      Q => data_p2(48),
      R => '0'
    );
\data_p2_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(49),
      Q => data_p2(49),
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(4),
      Q => Q(4),
      R => '0'
    );
\data_p2_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(50),
      Q => data_p2(50),
      R => '0'
    );
\data_p2_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(51),
      Q => data_p2(51),
      R => '0'
    );
\data_p2_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(52),
      Q => data_p2(52),
      R => '0'
    );
\data_p2_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(53),
      Q => data_p2(53),
      R => '0'
    );
\data_p2_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(54),
      Q => data_p2(54),
      R => '0'
    );
\data_p2_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(55),
      Q => data_p2(55),
      R => '0'
    );
\data_p2_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(56),
      Q => data_p2(56),
      R => '0'
    );
\data_p2_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(57),
      Q => data_p2(57),
      R => '0'
    );
\data_p2_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(58),
      Q => data_p2(58),
      R => '0'
    );
\data_p2_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(59),
      Q => data_p2(59),
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(5),
      Q => Q(5),
      R => '0'
    );
\data_p2_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(60),
      Q => data_p2(60),
      R => '0'
    );
\data_p2_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(61),
      Q => data_p2(61),
      R => '0'
    );
\data_p2_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(62),
      Q => data_p2(62),
      R => '0'
    );
\data_p2_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(63),
      Q => data_p2(63),
      R => '0'
    );
\data_p2_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(64),
      Q => data_p2(64),
      R => '0'
    );
\data_p2_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(65),
      Q => data_p2(65),
      R => '0'
    );
\data_p2_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(66),
      Q => data_p2(66),
      R => '0'
    );
\data_p2_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(67),
      Q => data_p2(67),
      R => '0'
    );
\data_p2_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(68),
      Q => data_p2(68),
      R => '0'
    );
\data_p2_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(69),
      Q => data_p2(69),
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(6),
      Q => Q(6),
      R => '0'
    );
\data_p2_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(70),
      Q => data_p2(70),
      R => '0'
    );
\data_p2_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(71),
      Q => data_p2(71),
      R => '0'
    );
\data_p2_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(72),
      Q => data_p2(72),
      R => '0'
    );
\data_p2_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(73),
      Q => data_p2(73),
      R => '0'
    );
\data_p2_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(74),
      Q => data_p2(74),
      R => '0'
    );
\data_p2_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(75),
      Q => data_p2(75),
      R => '0'
    );
\data_p2_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(76),
      Q => data_p2(76),
      R => '0'
    );
\data_p2_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(77),
      Q => data_p2(77),
      R => '0'
    );
\data_p2_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(78),
      Q => data_p2(78),
      R => '0'
    );
\data_p2_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(79),
      Q => data_p2(79),
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(7),
      Q => Q(7),
      R => '0'
    );
\data_p2_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(80),
      Q => data_p2(80),
      R => '0'
    );
\data_p2_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(81),
      Q => data_p2(81),
      R => '0'
    );
\data_p2_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(82),
      Q => data_p2(82),
      R => '0'
    );
\data_p2_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(83),
      Q => data_p2(83),
      R => '0'
    );
\data_p2_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(84),
      Q => data_p2(84),
      R => '0'
    );
\data_p2_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(85),
      Q => data_p2(85),
      R => '0'
    );
\data_p2_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(86),
      Q => data_p2(86),
      R => '0'
    );
\data_p2_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(87),
      Q => data_p2(87),
      R => '0'
    );
\data_p2_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(88),
      Q => data_p2(88),
      R => '0'
    );
\data_p2_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(89),
      Q => data_p2(89),
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(8),
      Q => Q(8),
      R => '0'
    );
\data_p2_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(90),
      Q => data_p2(90),
      R => '0'
    );
\data_p2_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(91),
      Q => data_p2(91),
      R => '0'
    );
\data_p2_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(92),
      Q => data_p2(92),
      R => '0'
    );
\data_p2_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(93),
      Q => data_p2(93),
      R => '0'
    );
\data_p2_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(94),
      Q => data_p2(94),
      R => '0'
    );
\data_p2_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(95),
      Q => data_p2(95),
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => edgeout_val_ap_vld,
      D => \p_4_reg_1204_reg[63]\(9),
      Q => Q(9),
      R => '0'
    );
s_ready_t_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF00F3"
    )
        port map (
      I0 => s_ready_t_reg_0,
      I1 => \state__0\(0),
      I2 => cord_out_V_TREADY,
      I3 => \state__0\(1),
      I4 => \^sig_det_color_cord_cord_out_v_full_n\,
      O => s_ready_t_i_1_n_0
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_ready_t_i_1_n_0,
      Q => \^sig_det_color_cord_cord_out_v_full_n\,
      R => SR(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F50"
    )
        port map (
      I0 => s_ready_t_reg_0,
      I1 => cord_out_V_TREADY,
      I2 => state(1),
      I3 => \^cord_out_v_tvalid\,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8F"
    )
        port map (
      I0 => s_ready_t_reg_0,
      I1 => state(1),
      I2 => \^cord_out_v_tvalid\,
      I3 => cord_out_V_TREADY,
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_2_n_0\,
      Q => \^cord_out_v_tvalid\,
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_reg_slice is
  port (
    frame_in_V_TREADY : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bottom_edge_loc_2_reg_283_reg[31]\ : out STD_LOGIC;
    \tmp_reg_1168_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \led_exist_reg[0]\ : out STD_LOGIC;
    pixel_in_data_out_ap_vld : out STD_LOGIC;
    \led_exist_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \led_exist_reg[0]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pixel_in_data_out[23]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \led_exist_reg[0]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \led_exist_reg[0]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \left_edge_new_2_reg_213_reg[0]\ : out STD_LOGIC;
    \or_cond_7_reg_1172_reg[0]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p1_reg[15]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p1_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    led_exist : in STD_LOGIC;
    frame_in_V_TVALID : in STD_LOGIC;
    other_threshold : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \target_color[5]\ : in STD_LOGIC;
    \target_color[7]\ : in STD_LOGIC;
    \target_color[7]_0\ : in STD_LOGIC;
    target_threshold : in STD_LOGIC_VECTOR ( 7 downto 0 );
    frame_in_V_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    or_cond_7_reg_1172 : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_reg_slice : entity is "det_color_cord_frame_in_V_reg_slice";
end hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_reg_slice;

architecture STRUCTURE of hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_reg_slice is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_p1[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[23]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_p2_reg_n_0_[9]\ : STD_LOGIC;
  signal \^frame_in_v_tready\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal other1_below_fu_669_p2_carry_i_10_n_0 : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_i_11_n_0 : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_i_12_n_0 : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_i_13_n_0 : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_i_14_n_0 : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_i_15_n_0 : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_i_16_n_0 : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_i_17_n_0 : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_i_18_n_0 : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_i_19_n_0 : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_i_20_n_0 : STD_LOGIC;
  signal other1_below_fu_669_p2_carry_i_9_n_0 : STD_LOGIC;
  signal other2_below_fu_663_p2_carry_i_11_n_0 : STD_LOGIC;
  signal other2_below_fu_663_p2_carry_i_12_n_0 : STD_LOGIC;
  signal other2_below_fu_663_p2_carry_i_13_n_0 : STD_LOGIC;
  signal other2_below_fu_663_p2_carry_i_14_n_0 : STD_LOGIC;
  signal other2_below_fu_663_p2_carry_i_15_n_0 : STD_LOGIC;
  signal other2_below_fu_663_p2_carry_i_16_n_0 : STD_LOGIC;
  signal other2_below_fu_663_p2_carry_i_17_n_0 : STD_LOGIC;
  signal other2_below_fu_663_p2_carry_i_9_n_0 : STD_LOGIC;
  signal \^pixel_in_data_out[23]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \s_ready_t_i_1__0_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \state__0\ : signal is "yes";
  signal target_above_fu_675_p2_carry_i_10_n_0 : STD_LOGIC;
  signal target_above_fu_675_p2_carry_i_11_n_0 : STD_LOGIC;
  signal target_above_fu_675_p2_carry_i_12_n_0 : STD_LOGIC;
  signal target_above_fu_675_p2_carry_i_13_n_0 : STD_LOGIC;
  signal target_above_fu_675_p2_carry_i_14_n_0 : STD_LOGIC;
  signal target_above_fu_675_p2_carry_i_15_n_0 : STD_LOGIC;
  signal target_above_fu_675_p2_carry_i_16_n_0 : STD_LOGIC;
  signal target_above_fu_675_p2_carry_i_9_n_0 : STD_LOGIC;
  signal \^tmp_reg_1168_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bottom_edge_new_2_reg_271[31]_i_3\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of other2_below_fu_663_p2_carry_i_11 : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of other2_below_fu_663_p2_carry_i_12 : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of other2_below_fu_663_p2_carry_i_13 : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of other2_below_fu_663_p2_carry_i_14 : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of other2_below_fu_663_p2_carry_i_15 : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of other2_below_fu_663_p2_carry_i_16 : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of other2_below_fu_663_p2_carry_i_17 : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of other2_below_fu_663_p2_carry_i_9 : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of pixel_in_data_out_ap_vld_INST_0 : label is "soft_lutpair175";
begin
  SR(0) <= \^sr\(0);
  frame_in_V_TREADY <= \^frame_in_v_tready\;
  \pixel_in_data_out[23]\(23 downto 0) <= \^pixel_in_data_out[23]\(23 downto 0);
  \tmp_reg_1168_reg[0]\(0) <= \^tmp_reg_1168_reg[0]\(0);
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15002A2A"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \^tmp_reg_1168_reg[0]\(0),
      I2 => Q(0),
      I3 => frame_in_V_TVALID,
      I4 => \state__0\(1),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30000333E222C000"
    )
        port map (
      I0 => \^frame_in_v_tready\,
      I1 => \state__0\(0),
      I2 => \^tmp_reg_1168_reg[0]\(0),
      I3 => Q(0),
      I4 => frame_in_V_TVALID,
      I5 => \state__0\(1),
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      R => \^sr\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => \^sr\(0)
    );
\bottom_edge_new_2_reg_271[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888888"
    )
        port map (
      I0 => Q(0),
      I1 => \^tmp_reg_1168_reg[0]\(0),
      I2 => \data_p1_reg[15]_0\(0),
      I3 => CO(0),
      I4 => \data_p1_reg[6]_0\(0),
      O => \bottom_edge_loc_2_reg_283_reg[31]\
    );
\data_p1[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[0]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(0),
      O => \data_p1[0]_i_1__0_n_0\
    );
\data_p1[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[10]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(10),
      O => \data_p1[10]_i_1__0_n_0\
    );
\data_p1[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[11]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(11),
      O => \data_p1[11]_i_1__0_n_0\
    );
\data_p1[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[12]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(12),
      O => \data_p1[12]_i_1__0_n_0\
    );
\data_p1[13]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[13]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(13),
      O => \data_p1[13]_i_1__0_n_0\
    );
\data_p1[14]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[14]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(14),
      O => \data_p1[14]_i_1__0_n_0\
    );
\data_p1[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[15]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(15),
      O => \data_p1[15]_i_1__0_n_0\
    );
\data_p1[16]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[16]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(16),
      O => \data_p1[16]_i_1__0_n_0\
    );
\data_p1[17]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[17]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(17),
      O => \data_p1[17]_i_1__0_n_0\
    );
\data_p1[18]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[18]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(18),
      O => \data_p1[18]_i_1__0_n_0\
    );
\data_p1[19]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[19]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(19),
      O => \data_p1[19]_i_1__0_n_0\
    );
\data_p1[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[1]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(1),
      O => \data_p1[1]_i_1__0_n_0\
    );
\data_p1[20]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[20]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(20),
      O => \data_p1[20]_i_1__0_n_0\
    );
\data_p1[21]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[21]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(21),
      O => \data_p1[21]_i_1__0_n_0\
    );
\data_p1[22]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[22]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(22),
      O => \data_p1[22]_i_1__0_n_0\
    );
\data_p1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008088F0"
    )
        port map (
      I0 => \^tmp_reg_1168_reg[0]\(0),
      I1 => Q(0),
      I2 => frame_in_V_TVALID,
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      O => load_p1
    );
\data_p1[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[23]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(23),
      O => \data_p1[23]_i_2_n_0\
    );
\data_p1[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[2]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(2),
      O => \data_p1[2]_i_1__0_n_0\
    );
\data_p1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[3]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(3),
      O => \data_p1[3]_i_1__0_n_0\
    );
\data_p1[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[4]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(4),
      O => \data_p1[4]_i_1__0_n_0\
    );
\data_p1[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[5]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(5),
      O => \data_p1[5]_i_1__0_n_0\
    );
\data_p1[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[6]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(6),
      O => \data_p1[6]_i_1__0_n_0\
    );
\data_p1[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[7]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(7),
      O => \data_p1[7]_i_1__0_n_0\
    );
\data_p1[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[8]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(8),
      O => \data_p1[8]_i_1__0_n_0\
    );
\data_p1[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \data_p2_reg_n_0_[9]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => frame_in_V_TDATA(9),
      O => \data_p1[9]_i_1__0_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[0]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[10]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[11]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[12]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[13]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[14]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[15]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(15),
      R => '0'
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[16]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[17]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[18]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[19]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[1]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[20]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[21]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[22]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[23]_i_2_n_0\,
      Q => \^pixel_in_data_out[23]\(23),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[2]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(2),
      R => '0'
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[3]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[4]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[5]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[6]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[7]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(7),
      R => '0'
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[8]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p1,
      D => \data_p1[9]_i_1__0_n_0\,
      Q => \^pixel_in_data_out[23]\(9),
      R => '0'
    );
\data_p2[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => frame_in_V_TVALID,
      I1 => \^frame_in_v_tready\,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(0),
      Q => \data_p2_reg_n_0_[0]\,
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(10),
      Q => \data_p2_reg_n_0_[10]\,
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(11),
      Q => \data_p2_reg_n_0_[11]\,
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(12),
      Q => \data_p2_reg_n_0_[12]\,
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(13),
      Q => \data_p2_reg_n_0_[13]\,
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(14),
      Q => \data_p2_reg_n_0_[14]\,
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(15),
      Q => \data_p2_reg_n_0_[15]\,
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(16),
      Q => \data_p2_reg_n_0_[16]\,
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(17),
      Q => \data_p2_reg_n_0_[17]\,
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(18),
      Q => \data_p2_reg_n_0_[18]\,
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(19),
      Q => \data_p2_reg_n_0_[19]\,
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(1),
      Q => \data_p2_reg_n_0_[1]\,
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(20),
      Q => \data_p2_reg_n_0_[20]\,
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(21),
      Q => \data_p2_reg_n_0_[21]\,
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(22),
      Q => \data_p2_reg_n_0_[22]\,
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(23),
      Q => \data_p2_reg_n_0_[23]\,
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(2),
      Q => \data_p2_reg_n_0_[2]\,
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(3),
      Q => \data_p2_reg_n_0_[3]\,
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(4),
      Q => \data_p2_reg_n_0_[4]\,
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(5),
      Q => \data_p2_reg_n_0_[5]\,
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(6),
      Q => \data_p2_reg_n_0_[6]\,
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(7),
      Q => \data_p2_reg_n_0_[7]\,
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(8),
      Q => \data_p2_reg_n_0_[8]\,
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => load_p2,
      D => frame_in_V_TDATA(9),
      Q => \data_p2_reg_n_0_[9]\,
      R => '0'
    );
\led_exist[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => led_exist,
      I1 => \data_p1_reg[6]_0\(0),
      I2 => CO(0),
      I3 => \data_p1_reg[15]_0\(0),
      I4 => \^tmp_reg_1168_reg[0]\(0),
      I5 => Q(0),
      O => \led_exist_reg[0]\
    );
\or_cond_7_reg_1172[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FFFFFF80000000"
    )
        port map (
      I0 => \data_p1_reg[6]_0\(0),
      I1 => CO(0),
      I2 => \data_p1_reg[15]_0\(0),
      I3 => \^tmp_reg_1168_reg[0]\(0),
      I4 => Q(0),
      I5 => or_cond_7_reg_1172,
      O => \or_cond_7_reg_1172_reg[0]\
    );
other1_below_fu_669_p2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => other_threshold(7),
      I1 => other1_below_fu_669_p2_carry_i_9_n_0,
      I2 => other_threshold(6),
      I3 => other1_below_fu_669_p2_carry_i_10_n_0,
      O => \led_exist_reg[0]_1\(3)
    );
other1_below_fu_669_p2_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FB7040"
    )
        port map (
      I0 => \target_color[5]\,
      I1 => \target_color[7]\,
      I2 => \^pixel_in_data_out[23]\(14),
      I3 => \target_color[7]_0\,
      I4 => \^pixel_in_data_out[23]\(22),
      O => other1_below_fu_669_p2_carry_i_10_n_0
    );
other1_below_fu_669_p2_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FB7040"
    )
        port map (
      I0 => \target_color[5]\,
      I1 => \target_color[7]\,
      I2 => \^pixel_in_data_out[23]\(13),
      I3 => \target_color[7]_0\,
      I4 => \^pixel_in_data_out[23]\(21),
      O => other1_below_fu_669_p2_carry_i_11_n_0
    );
other1_below_fu_669_p2_carry_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FB7040"
    )
        port map (
      I0 => \target_color[5]\,
      I1 => \target_color[7]\,
      I2 => \^pixel_in_data_out[23]\(12),
      I3 => \target_color[7]_0\,
      I4 => \^pixel_in_data_out[23]\(20),
      O => other1_below_fu_669_p2_carry_i_12_n_0
    );
other1_below_fu_669_p2_carry_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FB7040"
    )
        port map (
      I0 => \target_color[5]\,
      I1 => \target_color[7]\,
      I2 => \^pixel_in_data_out[23]\(11),
      I3 => \target_color[7]_0\,
      I4 => \^pixel_in_data_out[23]\(19),
      O => other1_below_fu_669_p2_carry_i_13_n_0
    );
other1_below_fu_669_p2_carry_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FB7040"
    )
        port map (
      I0 => \target_color[5]\,
      I1 => \target_color[7]\,
      I2 => \^pixel_in_data_out[23]\(10),
      I3 => \target_color[7]_0\,
      I4 => \^pixel_in_data_out[23]\(18),
      O => other1_below_fu_669_p2_carry_i_14_n_0
    );
other1_below_fu_669_p2_carry_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FB7040"
    )
        port map (
      I0 => \target_color[5]\,
      I1 => \target_color[7]\,
      I2 => \^pixel_in_data_out[23]\(9),
      I3 => \target_color[7]_0\,
      I4 => \^pixel_in_data_out[23]\(17),
      O => other1_below_fu_669_p2_carry_i_15_n_0
    );
other1_below_fu_669_p2_carry_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FB7040"
    )
        port map (
      I0 => \target_color[5]\,
      I1 => \target_color[7]\,
      I2 => \^pixel_in_data_out[23]\(8),
      I3 => \target_color[7]_0\,
      I4 => \^pixel_in_data_out[23]\(16),
      O => other1_below_fu_669_p2_carry_i_16_n_0
    );
other1_below_fu_669_p2_carry_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999A959AA55A959"
    )
        port map (
      I0 => other_threshold(7),
      I1 => \^pixel_in_data_out[23]\(23),
      I2 => \target_color[7]_0\,
      I3 => \^pixel_in_data_out[23]\(15),
      I4 => \target_color[7]\,
      I5 => \target_color[5]\,
      O => other1_below_fu_669_p2_carry_i_17_n_0
    );
other1_below_fu_669_p2_carry_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999A959AA55A959"
    )
        port map (
      I0 => other_threshold(5),
      I1 => \^pixel_in_data_out[23]\(21),
      I2 => \target_color[7]_0\,
      I3 => \^pixel_in_data_out[23]\(13),
      I4 => \target_color[7]\,
      I5 => \target_color[5]\,
      O => other1_below_fu_669_p2_carry_i_18_n_0
    );
other1_below_fu_669_p2_carry_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999A959AA55A959"
    )
        port map (
      I0 => other_threshold(3),
      I1 => \^pixel_in_data_out[23]\(19),
      I2 => \target_color[7]_0\,
      I3 => \^pixel_in_data_out[23]\(11),
      I4 => \target_color[7]\,
      I5 => \target_color[5]\,
      O => other1_below_fu_669_p2_carry_i_19_n_0
    );
other1_below_fu_669_p2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => other_threshold(5),
      I1 => other1_below_fu_669_p2_carry_i_11_n_0,
      I2 => other_threshold(4),
      I3 => other1_below_fu_669_p2_carry_i_12_n_0,
      O => \led_exist_reg[0]_1\(2)
    );
other1_below_fu_669_p2_carry_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999A959AA55A959"
    )
        port map (
      I0 => other_threshold(1),
      I1 => \^pixel_in_data_out[23]\(17),
      I2 => \target_color[7]_0\,
      I3 => \^pixel_in_data_out[23]\(9),
      I4 => \target_color[7]\,
      I5 => \target_color[5]\,
      O => other1_below_fu_669_p2_carry_i_20_n_0
    );
other1_below_fu_669_p2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => other_threshold(3),
      I1 => other1_below_fu_669_p2_carry_i_13_n_0,
      I2 => other_threshold(2),
      I3 => other1_below_fu_669_p2_carry_i_14_n_0,
      O => \led_exist_reg[0]_1\(1)
    );
other1_below_fu_669_p2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => other_threshold(1),
      I1 => other1_below_fu_669_p2_carry_i_15_n_0,
      I2 => other_threshold(0),
      I3 => other1_below_fu_669_p2_carry_i_16_n_0,
      O => \led_exist_reg[0]_1\(0)
    );
other1_below_fu_669_p2_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => other1_below_fu_669_p2_carry_i_17_n_0,
      I1 => other1_below_fu_669_p2_carry_i_10_n_0,
      I2 => other_threshold(6),
      O => \led_exist_reg[0]_0\(3)
    );
other1_below_fu_669_p2_carry_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => other1_below_fu_669_p2_carry_i_18_n_0,
      I1 => other1_below_fu_669_p2_carry_i_12_n_0,
      I2 => other_threshold(4),
      O => \led_exist_reg[0]_0\(2)
    );
other1_below_fu_669_p2_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => other1_below_fu_669_p2_carry_i_19_n_0,
      I1 => other1_below_fu_669_p2_carry_i_14_n_0,
      I2 => other_threshold(2),
      O => \led_exist_reg[0]_0\(1)
    );
other1_below_fu_669_p2_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => other1_below_fu_669_p2_carry_i_20_n_0,
      I1 => other1_below_fu_669_p2_carry_i_16_n_0,
      I2 => other_threshold(0),
      O => \led_exist_reg[0]_0\(0)
    );
other1_below_fu_669_p2_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FB7040"
    )
        port map (
      I0 => \target_color[5]\,
      I1 => \target_color[7]\,
      I2 => \^pixel_in_data_out[23]\(15),
      I3 => \target_color[7]_0\,
      I4 => \^pixel_in_data_out[23]\(23),
      O => other1_below_fu_669_p2_carry_i_9_n_0
    );
other2_below_fu_663_p2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => other_threshold(7),
      I1 => other2_below_fu_663_p2_carry_i_9_n_0,
      I2 => other_threshold(6),
      I3 => \^pixel_in_data_out[23]\(6),
      I4 => \target_color[5]\,
      I5 => \^pixel_in_data_out[23]\(14),
      O => \led_exist_reg[0]_3\(3)
    );
other2_below_fu_663_p2_carry_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pixel_in_data_out[23]\(13),
      I1 => \target_color[5]\,
      I2 => \^pixel_in_data_out[23]\(5),
      O => other2_below_fu_663_p2_carry_i_11_n_0
    );
other2_below_fu_663_p2_carry_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pixel_in_data_out[23]\(11),
      I1 => \target_color[5]\,
      I2 => \^pixel_in_data_out[23]\(3),
      O => other2_below_fu_663_p2_carry_i_12_n_0
    );
other2_below_fu_663_p2_carry_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pixel_in_data_out[23]\(9),
      I1 => \target_color[5]\,
      I2 => \^pixel_in_data_out[23]\(1),
      O => other2_below_fu_663_p2_carry_i_13_n_0
    );
other2_below_fu_663_p2_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => other_threshold(7),
      I1 => \^pixel_in_data_out[23]\(7),
      I2 => \target_color[5]\,
      I3 => \^pixel_in_data_out[23]\(15),
      O => other2_below_fu_663_p2_carry_i_14_n_0
    );
other2_below_fu_663_p2_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => other_threshold(5),
      I1 => \^pixel_in_data_out[23]\(5),
      I2 => \target_color[5]\,
      I3 => \^pixel_in_data_out[23]\(13),
      O => other2_below_fu_663_p2_carry_i_15_n_0
    );
other2_below_fu_663_p2_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => other_threshold(3),
      I1 => \^pixel_in_data_out[23]\(3),
      I2 => \target_color[5]\,
      I3 => \^pixel_in_data_out[23]\(11),
      O => other2_below_fu_663_p2_carry_i_16_n_0
    );
other2_below_fu_663_p2_carry_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => other_threshold(1),
      I1 => \^pixel_in_data_out[23]\(1),
      I2 => \target_color[5]\,
      I3 => \^pixel_in_data_out[23]\(9),
      O => other2_below_fu_663_p2_carry_i_17_n_0
    );
other2_below_fu_663_p2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => other_threshold(5),
      I1 => other2_below_fu_663_p2_carry_i_11_n_0,
      I2 => other_threshold(4),
      I3 => \^pixel_in_data_out[23]\(4),
      I4 => \target_color[5]\,
      I5 => \^pixel_in_data_out[23]\(12),
      O => \led_exist_reg[0]_3\(2)
    );
other2_below_fu_663_p2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => other_threshold(3),
      I1 => other2_below_fu_663_p2_carry_i_12_n_0,
      I2 => other_threshold(2),
      I3 => \^pixel_in_data_out[23]\(2),
      I4 => \target_color[5]\,
      I5 => \^pixel_in_data_out[23]\(10),
      O => \led_exist_reg[0]_3\(1)
    );
other2_below_fu_663_p2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => other_threshold(1),
      I1 => other2_below_fu_663_p2_carry_i_13_n_0,
      I2 => other_threshold(0),
      I3 => \^pixel_in_data_out[23]\(0),
      I4 => \target_color[5]\,
      I5 => \^pixel_in_data_out[23]\(8),
      O => \led_exist_reg[0]_3\(0)
    );
other2_below_fu_663_p2_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A80202A"
    )
        port map (
      I0 => other2_below_fu_663_p2_carry_i_14_n_0,
      I1 => \^pixel_in_data_out[23]\(14),
      I2 => \target_color[5]\,
      I3 => \^pixel_in_data_out[23]\(6),
      I4 => other_threshold(6),
      O => \led_exist_reg[0]_2\(3)
    );
other2_below_fu_663_p2_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A80202A"
    )
        port map (
      I0 => other2_below_fu_663_p2_carry_i_15_n_0,
      I1 => \^pixel_in_data_out[23]\(12),
      I2 => \target_color[5]\,
      I3 => \^pixel_in_data_out[23]\(4),
      I4 => other_threshold(4),
      O => \led_exist_reg[0]_2\(2)
    );
other2_below_fu_663_p2_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A80202A"
    )
        port map (
      I0 => other2_below_fu_663_p2_carry_i_16_n_0,
      I1 => \^pixel_in_data_out[23]\(10),
      I2 => \target_color[5]\,
      I3 => \^pixel_in_data_out[23]\(2),
      I4 => other_threshold(2),
      O => \led_exist_reg[0]_2\(1)
    );
other2_below_fu_663_p2_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A80202A"
    )
        port map (
      I0 => other2_below_fu_663_p2_carry_i_17_n_0,
      I1 => \^pixel_in_data_out[23]\(8),
      I2 => \target_color[5]\,
      I3 => \^pixel_in_data_out[23]\(0),
      I4 => other_threshold(0),
      O => \led_exist_reg[0]_2\(0)
    );
other2_below_fu_663_p2_carry_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^pixel_in_data_out[23]\(15),
      I1 => \target_color[5]\,
      I2 => \^pixel_in_data_out[23]\(7),
      O => other2_below_fu_663_p2_carry_i_9_n_0
    );
pixel_in_data_out_ap_vld_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^tmp_reg_1168_reg[0]\(0),
      I1 => Q(0),
      O => pixel_in_data_out_ap_vld
    );
\s_ready_t_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFBFBF33111111"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => frame_in_V_TVALID,
      I3 => Q(0),
      I4 => \^tmp_reg_1168_reg[0]\(0),
      I5 => \^frame_in_v_tready\,
      O => \s_ready_t_i_1__0_n_0\
    );
s_ready_t_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_t_i_1__0_n_0\,
      Q => \^frame_in_v_tready\,
      R => \^sr\(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F380FF80"
    )
        port map (
      I0 => \^frame_in_v_tready\,
      I1 => state(1),
      I2 => frame_in_V_TVALID,
      I3 => \^tmp_reg_1168_reg[0]\(0),
      I4 => Q(0),
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^sr\(0)
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => frame_in_V_TVALID,
      I1 => state(1),
      I2 => \^tmp_reg_1168_reg[0]\(0),
      I3 => Q(0),
      O => \state[1]_i_1__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \^tmp_reg_1168_reg[0]\(0),
      R => \^sr\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \state[1]_i_1__0_n_0\,
      Q => state(1),
      S => \^sr\(0)
    );
target_above_fu_675_p2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1117"
    )
        port map (
      I0 => target_threshold(7),
      I1 => target_above_fu_675_p2_carry_i_9_n_0,
      I2 => target_threshold(6),
      I3 => target_above_fu_675_p2_carry_i_10_n_0,
      O => DI(3)
    );
target_above_fu_675_p2_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"207F2070207F2F7F"
    )
        port map (
      I0 => \target_color[5]\,
      I1 => \^pixel_in_data_out[23]\(6),
      I2 => \target_color[7]\,
      I3 => \^pixel_in_data_out[23]\(22),
      I4 => \target_color[7]_0\,
      I5 => \^pixel_in_data_out[23]\(14),
      O => target_above_fu_675_p2_carry_i_10_n_0
    );
target_above_fu_675_p2_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"407F4070407F4F7F"
    )
        port map (
      I0 => \^pixel_in_data_out[23]\(5),
      I1 => \target_color[5]\,
      I2 => \target_color[7]\,
      I3 => \^pixel_in_data_out[23]\(21),
      I4 => \target_color[7]_0\,
      I5 => \^pixel_in_data_out[23]\(13),
      O => target_above_fu_675_p2_carry_i_11_n_0
    );
target_above_fu_675_p2_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"207F2070207F2F7F"
    )
        port map (
      I0 => \target_color[5]\,
      I1 => \^pixel_in_data_out[23]\(4),
      I2 => \target_color[7]\,
      I3 => \^pixel_in_data_out[23]\(20),
      I4 => \target_color[7]_0\,
      I5 => \^pixel_in_data_out[23]\(12),
      O => target_above_fu_675_p2_carry_i_12_n_0
    );
target_above_fu_675_p2_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"407F4070407F4F7F"
    )
        port map (
      I0 => \^pixel_in_data_out[23]\(3),
      I1 => \target_color[5]\,
      I2 => \target_color[7]\,
      I3 => \^pixel_in_data_out[23]\(19),
      I4 => \target_color[7]_0\,
      I5 => \^pixel_in_data_out[23]\(11),
      O => target_above_fu_675_p2_carry_i_13_n_0
    );
target_above_fu_675_p2_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"207F2070207F2F7F"
    )
        port map (
      I0 => \target_color[5]\,
      I1 => \^pixel_in_data_out[23]\(2),
      I2 => \target_color[7]\,
      I3 => \^pixel_in_data_out[23]\(18),
      I4 => \target_color[7]_0\,
      I5 => \^pixel_in_data_out[23]\(10),
      O => target_above_fu_675_p2_carry_i_14_n_0
    );
target_above_fu_675_p2_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"407F4070407F4F7F"
    )
        port map (
      I0 => \^pixel_in_data_out[23]\(1),
      I1 => \target_color[5]\,
      I2 => \target_color[7]\,
      I3 => \^pixel_in_data_out[23]\(17),
      I4 => \target_color[7]_0\,
      I5 => \^pixel_in_data_out[23]\(9),
      O => target_above_fu_675_p2_carry_i_15_n_0
    );
target_above_fu_675_p2_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"207F2070207F2F7F"
    )
        port map (
      I0 => \target_color[5]\,
      I1 => \^pixel_in_data_out[23]\(0),
      I2 => \target_color[7]\,
      I3 => \^pixel_in_data_out[23]\(16),
      I4 => \target_color[7]_0\,
      I5 => \^pixel_in_data_out[23]\(8),
      O => target_above_fu_675_p2_carry_i_16_n_0
    );
target_above_fu_675_p2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1117"
    )
        port map (
      I0 => target_threshold(5),
      I1 => target_above_fu_675_p2_carry_i_11_n_0,
      I2 => target_threshold(4),
      I3 => target_above_fu_675_p2_carry_i_12_n_0,
      O => DI(2)
    );
target_above_fu_675_p2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1117"
    )
        port map (
      I0 => target_threshold(3),
      I1 => target_above_fu_675_p2_carry_i_13_n_0,
      I2 => target_threshold(2),
      I3 => target_above_fu_675_p2_carry_i_14_n_0,
      O => DI(1)
    );
target_above_fu_675_p2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1117"
    )
        port map (
      I0 => target_threshold(1),
      I1 => target_above_fu_675_p2_carry_i_15_n_0,
      I2 => target_threshold(0),
      I3 => target_above_fu_675_p2_carry_i_16_n_0,
      O => DI(0)
    );
target_above_fu_675_p2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => target_above_fu_675_p2_carry_i_9_n_0,
      I1 => target_threshold(7),
      I2 => target_above_fu_675_p2_carry_i_10_n_0,
      I3 => target_threshold(6),
      O => S(3)
    );
target_above_fu_675_p2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => target_above_fu_675_p2_carry_i_11_n_0,
      I1 => target_threshold(5),
      I2 => target_above_fu_675_p2_carry_i_12_n_0,
      I3 => target_threshold(4),
      O => S(2)
    );
target_above_fu_675_p2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => target_above_fu_675_p2_carry_i_13_n_0,
      I1 => target_threshold(3),
      I2 => target_above_fu_675_p2_carry_i_14_n_0,
      I3 => target_threshold(2),
      O => S(1)
    );
target_above_fu_675_p2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => target_above_fu_675_p2_carry_i_15_n_0,
      I1 => target_threshold(1),
      I2 => target_above_fu_675_p2_carry_i_16_n_0,
      I3 => target_threshold(0),
      O => S(0)
    );
target_above_fu_675_p2_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"407F4070407F4F7F"
    )
        port map (
      I0 => \^pixel_in_data_out[23]\(7),
      I1 => \target_color[5]\,
      I2 => \target_color[7]\,
      I3 => \^pixel_in_data_out[23]\(23),
      I4 => \target_color[7]_0\,
      I5 => \^pixel_in_data_out[23]\(15),
      O => target_above_fu_675_p2_carry_i_9_n_0
    );
\upper_edge_flag_2_reg_232[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888888"
    )
        port map (
      I0 => Q(0),
      I1 => \^tmp_reg_1168_reg[0]\(0),
      I2 => \data_p1_reg[15]_0\(0),
      I3 => CO(0),
      I4 => \data_p1_reg[6]_0\(0),
      O => \left_edge_new_2_reg_213_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_if is
  port (
    sig_det_color_cord_cord_out_V_full_n : out STD_LOGIC;
    cord_out_V_TVALID : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \data_p1_reg[31]\ : out STD_LOGIC;
    cord_out_V_TDATA : out STD_LOGIC_VECTOR ( 95 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_ready_t_reg : in STD_LOGIC;
    cord_out_V_TREADY : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \p_4_reg_1204_reg[63]\ : in STD_LOGIC_VECTOR ( 95 downto 0 );
    edgeout_val_ap_vld : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_if : entity is "det_color_cord_cord_out_V_if";
end hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_if;

architecture STRUCTURE of hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_if is
begin
rs: entity work.hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_reg_slice
     port map (
      D(31 downto 0) => D(31 downto 0),
      Q(31 downto 0) => Q(31 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      cord_out_V_TDATA(95 downto 0) => cord_out_V_TDATA(95 downto 0),
      cord_out_V_TREADY => cord_out_V_TREADY,
      cord_out_V_TVALID => cord_out_V_TVALID,
      \data_p1_reg[31]_0\ => \data_p1_reg[31]\,
      edgeout_val_ap_vld => edgeout_val_ap_vld,
      \p_4_reg_1204_reg[63]\(95 downto 0) => \p_4_reg_1204_reg[63]\(95 downto 0),
      s_ready_t_reg_0 => s_ready_t_reg,
      sig_det_color_cord_cord_out_V_full_n => sig_det_color_cord_cord_out_V_full_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_if is
  port (
    frame_in_V_TREADY : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bottom_edge_loc_2_reg_283_reg[31]\ : out STD_LOGIC;
    \tmp_reg_1168_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \led_exist_reg[0]\ : out STD_LOGIC;
    pixel_in_data_out_ap_vld : out STD_LOGIC;
    \led_exist_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \led_exist_reg[0]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \pixel_in_data_out[23]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \led_exist_reg[0]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \led_exist_reg[0]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \left_edge_new_2_reg_213_reg[0]\ : out STD_LOGIC;
    \or_cond_7_reg_1172_reg[0]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p1_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p1_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    led_exist : in STD_LOGIC;
    frame_in_V_TVALID : in STD_LOGIC;
    other_threshold : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \target_color[5]\ : in STD_LOGIC;
    \target_color[7]\ : in STD_LOGIC;
    \target_color[7]_0\ : in STD_LOGIC;
    target_threshold : in STD_LOGIC_VECTOR ( 7 downto 0 );
    frame_in_V_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    or_cond_7_reg_1172 : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_if : entity is "det_color_cord_frame_in_V_if";
end hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_if;

architecture STRUCTURE of hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_if is
begin
rs: entity work.hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_reg_slice
     port map (
      CO(0) => CO(0),
      DI(3 downto 0) => DI(3 downto 0),
      Q(0) => Q(0),
      S(3 downto 0) => S(3 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      aresetn => aresetn,
      \bottom_edge_loc_2_reg_283_reg[31]\ => \bottom_edge_loc_2_reg_283_reg[31]\,
      \data_p1_reg[15]_0\(0) => \data_p1_reg[15]\(0),
      \data_p1_reg[6]_0\(0) => \data_p1_reg[6]\(0),
      frame_in_V_TDATA(23 downto 0) => frame_in_V_TDATA(23 downto 0),
      frame_in_V_TREADY => frame_in_V_TREADY,
      frame_in_V_TVALID => frame_in_V_TVALID,
      led_exist => led_exist,
      \led_exist_reg[0]\ => \led_exist_reg[0]\,
      \led_exist_reg[0]_0\(3 downto 0) => \led_exist_reg[0]_0\(3 downto 0),
      \led_exist_reg[0]_1\(3 downto 0) => \led_exist_reg[0]_1\(3 downto 0),
      \led_exist_reg[0]_2\(3 downto 0) => \led_exist_reg[0]_2\(3 downto 0),
      \led_exist_reg[0]_3\(3 downto 0) => \led_exist_reg[0]_3\(3 downto 0),
      \left_edge_new_2_reg_213_reg[0]\ => \left_edge_new_2_reg_213_reg[0]\,
      or_cond_7_reg_1172 => or_cond_7_reg_1172,
      \or_cond_7_reg_1172_reg[0]\ => \or_cond_7_reg_1172_reg[0]\,
      other_threshold(7 downto 0) => other_threshold(7 downto 0),
      \pixel_in_data_out[23]\(23 downto 0) => \pixel_in_data_out[23]\(23 downto 0),
      pixel_in_data_out_ap_vld => pixel_in_data_out_ap_vld,
      \target_color[5]\ => \target_color[5]\,
      \target_color[7]\ => \target_color[7]\,
      \target_color[7]_0\ => \target_color[7]_0\,
      target_threshold(7 downto 0) => target_threshold(7 downto 0),
      \tmp_reg_1168_reg[0]\(0) => \tmp_reg_1168_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_det_color_cord_0_1_det_color_cord_top is
  port (
    cord_out_V_TVALID : out STD_LOGIC;
    cord_out_V_TREADY : in STD_LOGIC;
    cord_out_V_TDATA : out STD_LOGIC_VECTOR ( 95 downto 0 );
    cord_out_V_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    frame_in_V_TVALID : in STD_LOGIC;
    frame_in_V_TREADY : out STD_LOGIC;
    frame_in_V_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    frame_in_V_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    frame_in_V_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    target_threshold : in STD_LOGIC_VECTOR ( 7 downto 0 );
    other_threshold : in STD_LOGIC_VECTOR ( 7 downto 0 );
    target_color : in STD_LOGIC_VECTOR ( 7 downto 0 );
    width : in STD_LOGIC_VECTOR ( 31 downto 0 );
    height : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reset : in STD_LOGIC;
    y_cord_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    y_cord_out_ap_vld : out STD_LOGIC;
    x_cord_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x_cord_out_ap_vld : out STD_LOGIC;
    pixel_in_data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pixel_in_data_out_ap_vld : out STD_LOGIC;
    edgeout_val : out STD_LOGIC_VECTOR ( 63 downto 0 );
    edgeout_val_ap_vld : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_det_color_cord_0_1_det_color_cord_top : entity is "det_color_cord_top";
  attribute RESET_ACTIVE_LOW : integer;
  attribute RESET_ACTIVE_LOW of hdmi_det_color_cord_0_1_det_color_cord_top : entity is 1;
  attribute hls_module : string;
  attribute hls_module of hdmi_det_color_cord_0_1_det_color_cord_top : entity is "yes";
end hdmi_det_color_cord_0_1_det_color_cord_top;

architecture STRUCTURE of hdmi_det_color_cord_0_1_det_color_cord_top is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal det_color_cord_U_n_171 : STD_LOGIC;
  signal det_color_cord_U_n_172 : STD_LOGIC;
  signal det_color_cord_U_n_173 : STD_LOGIC;
  signal det_color_cord_U_n_174 : STD_LOGIC;
  signal det_color_cord_U_n_175 : STD_LOGIC;
  signal det_color_cord_U_n_176 : STD_LOGIC;
  signal det_color_cord_U_n_177 : STD_LOGIC;
  signal det_color_cord_U_n_178 : STD_LOGIC;
  signal det_color_cord_U_n_179 : STD_LOGIC;
  signal det_color_cord_U_n_180 : STD_LOGIC;
  signal det_color_cord_U_n_181 : STD_LOGIC;
  signal det_color_cord_U_n_182 : STD_LOGIC;
  signal det_color_cord_U_n_183 : STD_LOGIC;
  signal det_color_cord_U_n_184 : STD_LOGIC;
  signal det_color_cord_U_n_185 : STD_LOGIC;
  signal det_color_cord_U_n_186 : STD_LOGIC;
  signal det_color_cord_U_n_187 : STD_LOGIC;
  signal det_color_cord_U_n_188 : STD_LOGIC;
  signal det_color_cord_U_n_189 : STD_LOGIC;
  signal det_color_cord_U_n_190 : STD_LOGIC;
  signal det_color_cord_U_n_191 : STD_LOGIC;
  signal det_color_cord_U_n_192 : STD_LOGIC;
  signal det_color_cord_U_n_193 : STD_LOGIC;
  signal det_color_cord_U_n_194 : STD_LOGIC;
  signal det_color_cord_U_n_195 : STD_LOGIC;
  signal det_color_cord_U_n_196 : STD_LOGIC;
  signal det_color_cord_U_n_197 : STD_LOGIC;
  signal det_color_cord_U_n_198 : STD_LOGIC;
  signal det_color_cord_U_n_199 : STD_LOGIC;
  signal det_color_cord_U_n_200 : STD_LOGIC;
  signal det_color_cord_U_n_201 : STD_LOGIC;
  signal det_color_cord_U_n_202 : STD_LOGIC;
  signal det_color_cord_U_n_40 : STD_LOGIC;
  signal det_color_cord_U_n_41 : STD_LOGIC;
  signal det_color_cord_U_n_42 : STD_LOGIC;
  signal det_color_cord_U_n_7 : STD_LOGIC;
  signal det_color_cord_cord_out_V_if_U_n_34 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_10 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_11 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_12 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_13 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_2 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_38 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_39 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_4 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_40 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_41 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_42 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_43 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_44 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_45 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_46 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_47 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_48 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_49 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_50 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_51 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_52 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_53 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_54 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_55 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_6 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_7 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_8 : STD_LOGIC;
  signal det_color_cord_frame_in_V_if_U_n_9 : STD_LOGIC;
  signal \^edgeout_val\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^edgeout_val_ap_vld\ : STD_LOGIC;
  signal height_upper_edge_lo_reg_11470 : STD_LOGIC;
  signal led_exist : STD_LOGIC;
  signal or_cond_7_reg_1172 : STD_LOGIC;
  signal other1_below_fu_669_p2 : STD_LOGIC;
  signal other2_below_fu_663_p2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^pixel_in_data_out\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal sig_det_color_cord_ap_rst : STD_LOGIC;
  signal sig_det_color_cord_cord_out_V_full_n : STD_LOGIC;
  signal sig_det_color_cord_frame_in_V_empty_n : STD_LOGIC;
  signal target_above_fu_675_p2 : STD_LOGIC;
  signal \^y_cord_out_ap_vld\ : STD_LOGIC;
begin
  cord_out_V_TLAST(0) <= \<const1>\;
  edgeout_val(63 downto 0) <= \^edgeout_val\(63 downto 0);
  edgeout_val_ap_vld <= \^edgeout_val_ap_vld\;
  pixel_in_data_out(31) <= \<const0>\;
  pixel_in_data_out(30) <= \<const0>\;
  pixel_in_data_out(29) <= \<const0>\;
  pixel_in_data_out(28) <= \<const0>\;
  pixel_in_data_out(27) <= \<const0>\;
  pixel_in_data_out(26) <= \<const0>\;
  pixel_in_data_out(25) <= \<const0>\;
  pixel_in_data_out(24) <= \<const0>\;
  pixel_in_data_out(23 downto 0) <= \^pixel_in_data_out\(23 downto 0);
  x_cord_out_ap_vld <= \^y_cord_out_ap_vld\;
  y_cord_out_ap_vld <= \^y_cord_out_ap_vld\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
det_color_cord_U: entity work.hdmi_det_color_cord_0_1_det_color_cord
     port map (
      CO(0) => target_above_fu_675_p2,
      D(31 downto 0) => p_0_in(31 downto 0),
      DI(3) => det_color_cord_frame_in_V_if_U_n_38,
      DI(2) => det_color_cord_frame_in_V_if_U_n_39,
      DI(1) => det_color_cord_frame_in_V_if_U_n_40,
      DI(0) => det_color_cord_frame_in_V_if_U_n_41,
      E(0) => \^y_cord_out_ap_vld\,
      \FSM_sequential_state_reg[0]\ => det_color_cord_cord_out_V_if_U_n_34,
      \FSM_sequential_state_reg[1]\ => det_color_cord_U_n_7,
      Q(0) => height_upper_edge_lo_reg_11470,
      S(3) => det_color_cord_frame_in_V_if_U_n_42,
      S(2) => det_color_cord_frame_in_V_if_U_n_43,
      S(1) => det_color_cord_frame_in_V_if_U_n_44,
      S(0) => det_color_cord_frame_in_V_if_U_n_45,
      SR(0) => sig_det_color_cord_ap_rst,
      aclk => aclk,
      \ap_CS_fsm_reg[0]_0\ => det_color_cord_frame_in_V_if_U_n_2,
      \ap_CS_fsm_reg[0]_1\ => det_color_cord_frame_in_V_if_U_n_54,
      \data_p1_reg[14]\(3) => det_color_cord_frame_in_V_if_U_n_46,
      \data_p1_reg[14]\(2) => det_color_cord_frame_in_V_if_U_n_47,
      \data_p1_reg[14]\(1) => det_color_cord_frame_in_V_if_U_n_48,
      \data_p1_reg[14]\(0) => det_color_cord_frame_in_V_if_U_n_49,
      \data_p1_reg[15]\(3) => det_color_cord_frame_in_V_if_U_n_10,
      \data_p1_reg[15]\(2) => det_color_cord_frame_in_V_if_U_n_11,
      \data_p1_reg[15]\(1) => det_color_cord_frame_in_V_if_U_n_12,
      \data_p1_reg[15]\(0) => det_color_cord_frame_in_V_if_U_n_13,
      \data_p1_reg[23]\(3) => det_color_cord_frame_in_V_if_U_n_6,
      \data_p1_reg[23]\(2) => det_color_cord_frame_in_V_if_U_n_7,
      \data_p1_reg[23]\(1) => det_color_cord_frame_in_V_if_U_n_8,
      \data_p1_reg[23]\(0) => det_color_cord_frame_in_V_if_U_n_9,
      \data_p1_reg[6]\(3) => det_color_cord_frame_in_V_if_U_n_50,
      \data_p1_reg[6]\(2) => det_color_cord_frame_in_V_if_U_n_51,
      \data_p1_reg[6]\(1) => det_color_cord_frame_in_V_if_U_n_52,
      \data_p1_reg[6]\(0) => det_color_cord_frame_in_V_if_U_n_53,
      \data_p2_reg[31]\(31 downto 0) => data_p2(31 downto 0),
      \edgeout_val[63]\(95 downto 32) => \^edgeout_val\(63 downto 0),
      \edgeout_val[63]\(31) => det_color_cord_U_n_171,
      \edgeout_val[63]\(30) => det_color_cord_U_n_172,
      \edgeout_val[63]\(29) => det_color_cord_U_n_173,
      \edgeout_val[63]\(28) => det_color_cord_U_n_174,
      \edgeout_val[63]\(27) => det_color_cord_U_n_175,
      \edgeout_val[63]\(26) => det_color_cord_U_n_176,
      \edgeout_val[63]\(25) => det_color_cord_U_n_177,
      \edgeout_val[63]\(24) => det_color_cord_U_n_178,
      \edgeout_val[63]\(23) => det_color_cord_U_n_179,
      \edgeout_val[63]\(22) => det_color_cord_U_n_180,
      \edgeout_val[63]\(21) => det_color_cord_U_n_181,
      \edgeout_val[63]\(20) => det_color_cord_U_n_182,
      \edgeout_val[63]\(19) => det_color_cord_U_n_183,
      \edgeout_val[63]\(18) => det_color_cord_U_n_184,
      \edgeout_val[63]\(17) => det_color_cord_U_n_185,
      \edgeout_val[63]\(16) => det_color_cord_U_n_186,
      \edgeout_val[63]\(15) => det_color_cord_U_n_187,
      \edgeout_val[63]\(14) => det_color_cord_U_n_188,
      \edgeout_val[63]\(13) => det_color_cord_U_n_189,
      \edgeout_val[63]\(12) => det_color_cord_U_n_190,
      \edgeout_val[63]\(11) => det_color_cord_U_n_191,
      \edgeout_val[63]\(10) => det_color_cord_U_n_192,
      \edgeout_val[63]\(9) => det_color_cord_U_n_193,
      \edgeout_val[63]\(8) => det_color_cord_U_n_194,
      \edgeout_val[63]\(7) => det_color_cord_U_n_195,
      \edgeout_val[63]\(6) => det_color_cord_U_n_196,
      \edgeout_val[63]\(5) => det_color_cord_U_n_197,
      \edgeout_val[63]\(4) => det_color_cord_U_n_198,
      \edgeout_val[63]\(3) => det_color_cord_U_n_199,
      \edgeout_val[63]\(2) => det_color_cord_U_n_200,
      \edgeout_val[63]\(1) => det_color_cord_U_n_201,
      \edgeout_val[63]\(0) => det_color_cord_U_n_202,
      edgeout_val_ap_vld => \^edgeout_val_ap_vld\,
      height(31 downto 0) => height(31 downto 0),
      led_exist => led_exist,
      \led_exist_reg[0]_0\(0) => other1_below_fu_669_p2,
      \led_exist_reg[0]_1\(0) => other2_below_fu_663_p2,
      \led_exist_reg[0]_2\ => det_color_cord_U_n_40,
      \led_exist_reg[0]_3\ => det_color_cord_U_n_41,
      \led_exist_reg[0]_4\ => det_color_cord_U_n_42,
      \led_exist_reg[0]_5\ => det_color_cord_frame_in_V_if_U_n_4,
      or_cond_7_reg_1172 => or_cond_7_reg_1172,
      reset => reset,
      sig_det_color_cord_cord_out_V_full_n => sig_det_color_cord_cord_out_V_full_n,
      \state_reg[0]\(0) => sig_det_color_cord_frame_in_V_empty_n,
      \state_reg[0]_0\ => det_color_cord_frame_in_V_if_U_n_55,
      target_color(7 downto 0) => target_color(7 downto 0),
      width(31 downto 0) => width(31 downto 0),
      x_cord_out(31 downto 0) => x_cord_out(31 downto 0),
      y_cord_out(31 downto 0) => y_cord_out(31 downto 0)
    );
det_color_cord_cord_out_V_if_U: entity work.hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_if
     port map (
      D(31 downto 0) => p_0_in(31 downto 0),
      Q(31 downto 0) => data_p2(31 downto 0),
      SR(0) => sig_det_color_cord_ap_rst,
      aclk => aclk,
      cord_out_V_TDATA(95 downto 0) => cord_out_V_TDATA(95 downto 0),
      cord_out_V_TREADY => cord_out_V_TREADY,
      cord_out_V_TVALID => cord_out_V_TVALID,
      \data_p1_reg[31]\ => det_color_cord_cord_out_V_if_U_n_34,
      edgeout_val_ap_vld => \^edgeout_val_ap_vld\,
      \p_4_reg_1204_reg[63]\(95 downto 32) => \^edgeout_val\(63 downto 0),
      \p_4_reg_1204_reg[63]\(31) => det_color_cord_U_n_171,
      \p_4_reg_1204_reg[63]\(30) => det_color_cord_U_n_172,
      \p_4_reg_1204_reg[63]\(29) => det_color_cord_U_n_173,
      \p_4_reg_1204_reg[63]\(28) => det_color_cord_U_n_174,
      \p_4_reg_1204_reg[63]\(27) => det_color_cord_U_n_175,
      \p_4_reg_1204_reg[63]\(26) => det_color_cord_U_n_176,
      \p_4_reg_1204_reg[63]\(25) => det_color_cord_U_n_177,
      \p_4_reg_1204_reg[63]\(24) => det_color_cord_U_n_178,
      \p_4_reg_1204_reg[63]\(23) => det_color_cord_U_n_179,
      \p_4_reg_1204_reg[63]\(22) => det_color_cord_U_n_180,
      \p_4_reg_1204_reg[63]\(21) => det_color_cord_U_n_181,
      \p_4_reg_1204_reg[63]\(20) => det_color_cord_U_n_182,
      \p_4_reg_1204_reg[63]\(19) => det_color_cord_U_n_183,
      \p_4_reg_1204_reg[63]\(18) => det_color_cord_U_n_184,
      \p_4_reg_1204_reg[63]\(17) => det_color_cord_U_n_185,
      \p_4_reg_1204_reg[63]\(16) => det_color_cord_U_n_186,
      \p_4_reg_1204_reg[63]\(15) => det_color_cord_U_n_187,
      \p_4_reg_1204_reg[63]\(14) => det_color_cord_U_n_188,
      \p_4_reg_1204_reg[63]\(13) => det_color_cord_U_n_189,
      \p_4_reg_1204_reg[63]\(12) => det_color_cord_U_n_190,
      \p_4_reg_1204_reg[63]\(11) => det_color_cord_U_n_191,
      \p_4_reg_1204_reg[63]\(10) => det_color_cord_U_n_192,
      \p_4_reg_1204_reg[63]\(9) => det_color_cord_U_n_193,
      \p_4_reg_1204_reg[63]\(8) => det_color_cord_U_n_194,
      \p_4_reg_1204_reg[63]\(7) => det_color_cord_U_n_195,
      \p_4_reg_1204_reg[63]\(6) => det_color_cord_U_n_196,
      \p_4_reg_1204_reg[63]\(5) => det_color_cord_U_n_197,
      \p_4_reg_1204_reg[63]\(4) => det_color_cord_U_n_198,
      \p_4_reg_1204_reg[63]\(3) => det_color_cord_U_n_199,
      \p_4_reg_1204_reg[63]\(2) => det_color_cord_U_n_200,
      \p_4_reg_1204_reg[63]\(1) => det_color_cord_U_n_201,
      \p_4_reg_1204_reg[63]\(0) => det_color_cord_U_n_202,
      s_ready_t_reg => det_color_cord_U_n_7,
      sig_det_color_cord_cord_out_V_full_n => sig_det_color_cord_cord_out_V_full_n
    );
det_color_cord_frame_in_V_if_U: entity work.hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_if
     port map (
      CO(0) => target_above_fu_675_p2,
      DI(3) => det_color_cord_frame_in_V_if_U_n_38,
      DI(2) => det_color_cord_frame_in_V_if_U_n_39,
      DI(1) => det_color_cord_frame_in_V_if_U_n_40,
      DI(0) => det_color_cord_frame_in_V_if_U_n_41,
      Q(0) => height_upper_edge_lo_reg_11470,
      S(3) => det_color_cord_frame_in_V_if_U_n_42,
      S(2) => det_color_cord_frame_in_V_if_U_n_43,
      S(1) => det_color_cord_frame_in_V_if_U_n_44,
      S(0) => det_color_cord_frame_in_V_if_U_n_45,
      SR(0) => sig_det_color_cord_ap_rst,
      aclk => aclk,
      aresetn => aresetn,
      \bottom_edge_loc_2_reg_283_reg[31]\ => det_color_cord_frame_in_V_if_U_n_2,
      \data_p1_reg[15]\(0) => other1_below_fu_669_p2,
      \data_p1_reg[6]\(0) => other2_below_fu_663_p2,
      frame_in_V_TDATA(23 downto 0) => frame_in_V_TDATA(23 downto 0),
      frame_in_V_TREADY => frame_in_V_TREADY,
      frame_in_V_TVALID => frame_in_V_TVALID,
      led_exist => led_exist,
      \led_exist_reg[0]\ => det_color_cord_frame_in_V_if_U_n_4,
      \led_exist_reg[0]_0\(3) => det_color_cord_frame_in_V_if_U_n_6,
      \led_exist_reg[0]_0\(2) => det_color_cord_frame_in_V_if_U_n_7,
      \led_exist_reg[0]_0\(1) => det_color_cord_frame_in_V_if_U_n_8,
      \led_exist_reg[0]_0\(0) => det_color_cord_frame_in_V_if_U_n_9,
      \led_exist_reg[0]_1\(3) => det_color_cord_frame_in_V_if_U_n_10,
      \led_exist_reg[0]_1\(2) => det_color_cord_frame_in_V_if_U_n_11,
      \led_exist_reg[0]_1\(1) => det_color_cord_frame_in_V_if_U_n_12,
      \led_exist_reg[0]_1\(0) => det_color_cord_frame_in_V_if_U_n_13,
      \led_exist_reg[0]_2\(3) => det_color_cord_frame_in_V_if_U_n_46,
      \led_exist_reg[0]_2\(2) => det_color_cord_frame_in_V_if_U_n_47,
      \led_exist_reg[0]_2\(1) => det_color_cord_frame_in_V_if_U_n_48,
      \led_exist_reg[0]_2\(0) => det_color_cord_frame_in_V_if_U_n_49,
      \led_exist_reg[0]_3\(3) => det_color_cord_frame_in_V_if_U_n_50,
      \led_exist_reg[0]_3\(2) => det_color_cord_frame_in_V_if_U_n_51,
      \led_exist_reg[0]_3\(1) => det_color_cord_frame_in_V_if_U_n_52,
      \led_exist_reg[0]_3\(0) => det_color_cord_frame_in_V_if_U_n_53,
      \left_edge_new_2_reg_213_reg[0]\ => det_color_cord_frame_in_V_if_U_n_54,
      or_cond_7_reg_1172 => or_cond_7_reg_1172,
      \or_cond_7_reg_1172_reg[0]\ => det_color_cord_frame_in_V_if_U_n_55,
      other_threshold(7 downto 0) => other_threshold(7 downto 0),
      \pixel_in_data_out[23]\(23 downto 0) => \^pixel_in_data_out\(23 downto 0),
      pixel_in_data_out_ap_vld => pixel_in_data_out_ap_vld,
      \target_color[5]\ => det_color_cord_U_n_41,
      \target_color[7]\ => det_color_cord_U_n_40,
      \target_color[7]_0\ => det_color_cord_U_n_42,
      target_threshold(7 downto 0) => target_threshold(7 downto 0),
      \tmp_reg_1168_reg[0]\(0) => sig_det_color_cord_frame_in_V_empty_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_det_color_cord_0_1 is
  port (
    target_threshold : in STD_LOGIC_VECTOR ( 7 downto 0 );
    other_threshold : in STD_LOGIC_VECTOR ( 7 downto 0 );
    target_color : in STD_LOGIC_VECTOR ( 7 downto 0 );
    width : in STD_LOGIC_VECTOR ( 31 downto 0 );
    height : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reset : in STD_LOGIC;
    y_cord_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    y_cord_out_ap_vld : out STD_LOGIC;
    x_cord_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x_cord_out_ap_vld : out STD_LOGIC;
    pixel_in_data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pixel_in_data_out_ap_vld : out STD_LOGIC;
    edgeout_val : out STD_LOGIC_VECTOR ( 63 downto 0 );
    edgeout_val_ap_vld : out STD_LOGIC;
    cord_out_V_TVALID : out STD_LOGIC;
    cord_out_V_TREADY : in STD_LOGIC;
    cord_out_V_TDATA : out STD_LOGIC_VECTOR ( 95 downto 0 );
    cord_out_V_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    frame_in_V_TVALID : in STD_LOGIC;
    frame_in_V_TREADY : out STD_LOGIC;
    frame_in_V_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    frame_in_V_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    frame_in_V_TKEEP : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hdmi_det_color_cord_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hdmi_det_color_cord_0_1 : entity is "hdmi_det_color_cord_0_1,det_color_cord_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of hdmi_det_color_cord_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of hdmi_det_color_cord_0_1 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of hdmi_det_color_cord_0_1 : entity is "det_color_cord_top,Vivado 2018.2";
end hdmi_det_color_cord_0_1;

architecture STRUCTURE of hdmi_det_color_cord_0_1 is
  attribute RESET_ACTIVE_LOW : integer;
  attribute RESET_ACTIVE_LOW of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF cord_out_V:frame_in_V, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of cord_out_V_TREADY : signal is "xilinx.com:interface:axis:1.0 cord_out_V TREADY";
  attribute X_INTERFACE_INFO of cord_out_V_TVALID : signal is "xilinx.com:interface:axis:1.0 cord_out_V TVALID";
  attribute X_INTERFACE_INFO of frame_in_V_TREADY : signal is "xilinx.com:interface:axis:1.0 frame_in_V TREADY";
  attribute X_INTERFACE_INFO of frame_in_V_TVALID : signal is "xilinx.com:interface:axis:1.0 frame_in_V TVALID";
  attribute X_INTERFACE_INFO of cord_out_V_TDATA : signal is "xilinx.com:interface:axis:1.0 cord_out_V TDATA";
  attribute X_INTERFACE_INFO of cord_out_V_TLAST : signal is "xilinx.com:interface:axis:1.0 cord_out_V TLAST";
  attribute X_INTERFACE_PARAMETER of cord_out_V_TLAST : signal is "XIL_INTERFACENAME cord_out_V, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 96}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of frame_in_V_TDATA : signal is "xilinx.com:interface:axis:1.0 frame_in_V TDATA";
  attribute X_INTERFACE_INFO of frame_in_V_TKEEP : signal is "xilinx.com:interface:axis:1.0 frame_in_V TKEEP";
  attribute X_INTERFACE_PARAMETER of frame_in_V_TKEEP : signal is "XIL_INTERFACENAME frame_in_V, TDATA_NUM_BYTES 3, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of frame_in_V_TLAST : signal is "xilinx.com:interface:axis:1.0 frame_in_V TLAST";
begin
inst: entity work.hdmi_det_color_cord_0_1_det_color_cord_top
     port map (
      aclk => aclk,
      aresetn => aresetn,
      cord_out_V_TDATA(95 downto 0) => cord_out_V_TDATA(95 downto 0),
      cord_out_V_TLAST(0) => cord_out_V_TLAST(0),
      cord_out_V_TREADY => cord_out_V_TREADY,
      cord_out_V_TVALID => cord_out_V_TVALID,
      edgeout_val(63 downto 0) => edgeout_val(63 downto 0),
      edgeout_val_ap_vld => edgeout_val_ap_vld,
      frame_in_V_TDATA(23 downto 0) => frame_in_V_TDATA(23 downto 0),
      frame_in_V_TKEEP(2 downto 0) => frame_in_V_TKEEP(2 downto 0),
      frame_in_V_TLAST(0) => frame_in_V_TLAST(0),
      frame_in_V_TREADY => frame_in_V_TREADY,
      frame_in_V_TVALID => frame_in_V_TVALID,
      height(31 downto 0) => height(31 downto 0),
      other_threshold(7 downto 0) => other_threshold(7 downto 0),
      pixel_in_data_out(31 downto 0) => pixel_in_data_out(31 downto 0),
      pixel_in_data_out_ap_vld => pixel_in_data_out_ap_vld,
      reset => reset,
      target_color(7 downto 0) => target_color(7 downto 0),
      target_threshold(7 downto 0) => target_threshold(7 downto 0),
      width(31 downto 0) => width(31 downto 0),
      x_cord_out(31 downto 0) => x_cord_out(31 downto 0),
      x_cord_out_ap_vld => x_cord_out_ap_vld,
      y_cord_out(31 downto 0) => y_cord_out(31 downto 0),
      y_cord_out_ap_vld => y_cord_out_ap_vld
    );
end STRUCTURE;
