// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Mar 12 09:53:14 2019
// Host        : DESKTOP-4H39SC0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/ClassProject/ece532_project/eth/working_eth_with_video.xpr/project_1/project_1.srcs/sources_1/bd/hdmi/ip/hdmi_det_color_cord_0_1/hdmi_det_color_cord_0_1_sim_netlist.v
// Design      : hdmi_det_color_cord_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hdmi_det_color_cord_0_1,det_color_cord_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "det_color_cord_top,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module hdmi_det_color_cord_0_1
   (target_threshold,
    other_threshold,
    target_color,
    width,
    height,
    reset,
    y_cord_out,
    y_cord_out_ap_vld,
    x_cord_out,
    x_cord_out_ap_vld,
    pixel_in_data_out,
    pixel_in_data_out_ap_vld,
    edgeout_val,
    edgeout_val_ap_vld,
    cord_out_V_TVALID,
    cord_out_V_TREADY,
    cord_out_V_TDATA,
    cord_out_V_TLAST,
    frame_in_V_TVALID,
    frame_in_V_TREADY,
    frame_in_V_TDATA,
    frame_in_V_TLAST,
    frame_in_V_TKEEP,
    aclk,
    aresetn);
  input [7:0]target_threshold;
  input [7:0]other_threshold;
  input [7:0]target_color;
  input [31:0]width;
  input [31:0]height;
  input reset;
  output [31:0]y_cord_out;
  output y_cord_out_ap_vld;
  output [31:0]x_cord_out;
  output x_cord_out_ap_vld;
  output [31:0]pixel_in_data_out;
  output pixel_in_data_out_ap_vld;
  output [63:0]edgeout_val;
  output edgeout_val_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cord_out_V TVALID" *) output cord_out_V_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cord_out_V TREADY" *) input cord_out_V_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cord_out_V TDATA" *) output [95:0]cord_out_V_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cord_out_V TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cord_out_V, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 96}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) output [0:0]cord_out_V_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 frame_in_V TVALID" *) input frame_in_V_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 frame_in_V TREADY" *) output frame_in_V_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 frame_in_V TDATA" *) input [23:0]frame_in_V_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 frame_in_V TLAST" *) input [0:0]frame_in_V_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 frame_in_V TKEEP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME frame_in_V, TDATA_NUM_BYTES 3, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input [2:0]frame_in_V_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF cord_out_V:frame_in_V, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *) input aresetn;

  wire aclk;
  wire aresetn;
  wire [95:0]cord_out_V_TDATA;
  wire [0:0]cord_out_V_TLAST;
  wire cord_out_V_TREADY;
  wire cord_out_V_TVALID;
  wire [63:0]edgeout_val;
  wire edgeout_val_ap_vld;
  wire [23:0]frame_in_V_TDATA;
  wire [2:0]frame_in_V_TKEEP;
  wire [0:0]frame_in_V_TLAST;
  wire frame_in_V_TREADY;
  wire frame_in_V_TVALID;
  wire [31:0]height;
  wire [7:0]other_threshold;
  wire [31:0]pixel_in_data_out;
  wire pixel_in_data_out_ap_vld;
  wire reset;
  wire [7:0]target_color;
  wire [7:0]target_threshold;
  wire [31:0]width;
  wire [31:0]x_cord_out;
  wire x_cord_out_ap_vld;
  wire [31:0]y_cord_out;
  wire y_cord_out_ap_vld;

  (* RESET_ACTIVE_LOW = "1" *) 
  hdmi_det_color_cord_0_1_det_color_cord_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .cord_out_V_TDATA(cord_out_V_TDATA),
        .cord_out_V_TLAST(cord_out_V_TLAST),
        .cord_out_V_TREADY(cord_out_V_TREADY),
        .cord_out_V_TVALID(cord_out_V_TVALID),
        .edgeout_val(edgeout_val),
        .edgeout_val_ap_vld(edgeout_val_ap_vld),
        .frame_in_V_TDATA(frame_in_V_TDATA),
        .frame_in_V_TKEEP(frame_in_V_TKEEP),
        .frame_in_V_TLAST(frame_in_V_TLAST),
        .frame_in_V_TREADY(frame_in_V_TREADY),
        .frame_in_V_TVALID(frame_in_V_TVALID),
        .height(height),
        .other_threshold(other_threshold),
        .pixel_in_data_out(pixel_in_data_out),
        .pixel_in_data_out_ap_vld(pixel_in_data_out_ap_vld),
        .reset(reset),
        .target_color(target_color),
        .target_threshold(target_threshold),
        .width(width),
        .x_cord_out(x_cord_out),
        .x_cord_out_ap_vld(x_cord_out_ap_vld),
        .y_cord_out(y_cord_out),
        .y_cord_out_ap_vld(y_cord_out_ap_vld));
endmodule

(* ORIG_REF_NAME = "det_color_cord" *) 
module hdmi_det_color_cord_0_1_det_color_cord
   (Q,
    led_exist,
    CO,
    \led_exist_reg[0]_0 ,
    \led_exist_reg[0]_1 ,
    or_cond_7_reg_1172,
    edgeout_val_ap_vld,
    \FSM_sequential_state_reg[1] ,
    y_cord_out,
    \led_exist_reg[0]_2 ,
    \led_exist_reg[0]_3 ,
    \led_exist_reg[0]_4 ,
    x_cord_out,
    D,
    \edgeout_val[63] ,
    E,
    \state_reg[0] ,
    aclk,
    width,
    height,
    DI,
    S,
    \data_p1_reg[15] ,
    \data_p1_reg[23] ,
    \data_p1_reg[6] ,
    \data_p1_reg[14] ,
    \state_reg[0]_0 ,
    \led_exist_reg[0]_5 ,
    sig_det_color_cord_cord_out_V_full_n,
    \ap_CS_fsm_reg[0]_0 ,
    \ap_CS_fsm_reg[0]_1 ,
    reset,
    target_color,
    \data_p2_reg[31] ,
    \FSM_sequential_state_reg[0] ,
    SR);
  output [0:0]Q;
  output led_exist;
  output [0:0]CO;
  output [0:0]\led_exist_reg[0]_0 ;
  output [0:0]\led_exist_reg[0]_1 ;
  output or_cond_7_reg_1172;
  output edgeout_val_ap_vld;
  output \FSM_sequential_state_reg[1] ;
  output [31:0]y_cord_out;
  output \led_exist_reg[0]_2 ;
  output \led_exist_reg[0]_3 ;
  output \led_exist_reg[0]_4 ;
  output [31:0]x_cord_out;
  output [31:0]D;
  output [95:0]\edgeout_val[63] ;
  output [0:0]E;
  input [0:0]\state_reg[0] ;
  input aclk;
  input [31:0]width;
  input [31:0]height;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\data_p1_reg[15] ;
  input [3:0]\data_p1_reg[23] ;
  input [3:0]\data_p1_reg[6] ;
  input [3:0]\data_p1_reg[14] ;
  input \state_reg[0]_0 ;
  input \led_exist_reg[0]_5 ;
  input sig_det_color_cord_cord_out_V_full_n;
  input \ap_CS_fsm_reg[0]_0 ;
  input \ap_CS_fsm_reg[0]_1 ;
  input reset;
  input [7:0]target_color;
  input [31:0]\data_p2_reg[31] ;
  input \FSM_sequential_state_reg[0] ;
  input [0:0]SR;

  wire [0:0]CO;
  wire [31:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire aclk;
  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire \ap_CS_fsm[2]_i_1_n_0 ;
  wire \ap_CS_fsm[2]_rep_i_1_n_0 ;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg[0]_1 ;
  wire \ap_CS_fsm_reg[2]_rep_n_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_NS_fsm14_out;
  wire [31:0]ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4;
  wire [31:0]ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4;
  wire [31:0]ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4;
  wire [31:0]ap_phi_mux_left_edge_new_3_phi_fu_377_p4;
  wire [31:0]ap_phi_mux_right_edge_new_3_phi_fu_440_p4;
  wire [31:0]ap_phi_mux_upper_edge_new_3_phi_fu_397_p4;
  wire [31:0]bottom_edge;
  wire bottom_edge0;
  wire bottom_edge_flag_2_reg_261;
  wire bottom_edge_flag_2_reg_2610;
  wire \bottom_edge_flag_2_reg_261[0]_i_1_n_0 ;
  wire bottom_edge_flag_3_reg_404;
  wire \bottom_edge_flag_3_reg_404[0]_i_1_n_0 ;
  wire [31:0]bottom_edge_loc_2_reg_283;
  wire \bottom_edge_loc_2_reg_283[0]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[10]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[11]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[12]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[13]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[14]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[15]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[16]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[17]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[18]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[19]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[1]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[20]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[21]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[22]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[23]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[24]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[25]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[26]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[27]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[28]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[29]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[2]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[30]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[31]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[31]_i_2_n_0 ;
  wire \bottom_edge_loc_2_reg_283[3]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[4]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[5]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[6]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[7]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[8]_i_1_n_0 ;
  wire \bottom_edge_loc_2_reg_283[9]_i_1_n_0 ;
  wire [31:0]bottom_edge_new_2_reg_271;
  wire \bottom_edge_new_2_reg_271[31]_i_1_n_0 ;
  wire [31:0]bottom_edge_new_3_reg_414;
  wire [31:0]current_x_cord;
  wire current_x_cord0;
  wire current_x_cord_flag_1_reg_323;
  wire \current_x_cord_flag_1_reg_323[0]_i_2_n_0 ;
  wire [31:0]current_x_cord_new_1_reg_333;
  wire [31:0]current_y_cord;
  wire current_y_cord0;
  wire current_y_cord_flag_2_reg_344;
  wire \current_y_cord_flag_2_reg_344[0]_i_1_n_0 ;
  wire [31:0]current_y_cord_new_1_fu_1013_p3;
  wire [31:0]current_y_cord_new_2_reg_353;
  wire \data_p1[12]_i_3_n_0 ;
  wire \data_p1[12]_i_4_n_0 ;
  wire \data_p1[12]_i_5_n_0 ;
  wire \data_p1[12]_i_6_n_0 ;
  wire \data_p1[15]_i_3_n_0 ;
  wire \data_p1[15]_i_4_n_0 ;
  wire \data_p1[15]_i_5_n_0 ;
  wire \data_p1[20]_i_3_n_0 ;
  wire \data_p1[20]_i_4_n_0 ;
  wire \data_p1[20]_i_5_n_0 ;
  wire \data_p1[20]_i_6_n_0 ;
  wire \data_p1[20]_i_7_n_0 ;
  wire \data_p1[24]_i_3_n_0 ;
  wire \data_p1[24]_i_4_n_0 ;
  wire \data_p1[24]_i_5_n_0 ;
  wire \data_p1[24]_i_6_n_0 ;
  wire \data_p1[28]_i_3_n_0 ;
  wire \data_p1[28]_i_4_n_0 ;
  wire \data_p1[28]_i_5_n_0 ;
  wire \data_p1[28]_i_6_n_0 ;
  wire \data_p1[31]_i_4_n_0 ;
  wire \data_p1[31]_i_5_n_0 ;
  wire \data_p1[31]_i_6_n_0 ;
  wire \data_p1[4]_i_3_n_0 ;
  wire \data_p1[4]_i_4_n_0 ;
  wire \data_p1[4]_i_5_n_0 ;
  wire \data_p1[4]_i_6_n_0 ;
  wire \data_p1[4]_i_7_n_0 ;
  wire \data_p1[8]_i_3_n_0 ;
  wire \data_p1[8]_i_4_n_0 ;
  wire \data_p1[8]_i_5_n_0 ;
  wire \data_p1[8]_i_6_n_0 ;
  wire \data_p1_reg[12]_i_2_n_0 ;
  wire \data_p1_reg[12]_i_2_n_1 ;
  wire \data_p1_reg[12]_i_2_n_2 ;
  wire \data_p1_reg[12]_i_2_n_3 ;
  wire [3:0]\data_p1_reg[14] ;
  wire [3:0]\data_p1_reg[15] ;
  wire \data_p1_reg[15]_i_2_n_2 ;
  wire \data_p1_reg[15]_i_2_n_3 ;
  wire \data_p1_reg[20]_i_2_n_0 ;
  wire \data_p1_reg[20]_i_2_n_1 ;
  wire \data_p1_reg[20]_i_2_n_2 ;
  wire \data_p1_reg[20]_i_2_n_3 ;
  wire [3:0]\data_p1_reg[23] ;
  wire \data_p1_reg[24]_i_2_n_0 ;
  wire \data_p1_reg[24]_i_2_n_1 ;
  wire \data_p1_reg[24]_i_2_n_2 ;
  wire \data_p1_reg[24]_i_2_n_3 ;
  wire \data_p1_reg[28]_i_2_n_0 ;
  wire \data_p1_reg[28]_i_2_n_1 ;
  wire \data_p1_reg[28]_i_2_n_2 ;
  wire \data_p1_reg[28]_i_2_n_3 ;
  wire \data_p1_reg[31]_i_3_n_2 ;
  wire \data_p1_reg[31]_i_3_n_3 ;
  wire \data_p1_reg[4]_i_2_n_0 ;
  wire \data_p1_reg[4]_i_2_n_1 ;
  wire \data_p1_reg[4]_i_2_n_2 ;
  wire \data_p1_reg[4]_i_2_n_3 ;
  wire [3:0]\data_p1_reg[6] ;
  wire \data_p1_reg[8]_i_2_n_0 ;
  wire \data_p1_reg[8]_i_2_n_1 ;
  wire \data_p1_reg[8]_i_2_n_2 ;
  wire \data_p1_reg[8]_i_2_n_3 ;
  wire [31:0]\data_p2_reg[31] ;
  wire [95:0]\edgeout_val[63] ;
  wire edgeout_val_ap_vld;
  wire [31:1]grp_fu_448_p2;
  wire grp_fu_448_p2_carry__0_i_1_n_0;
  wire grp_fu_448_p2_carry__0_i_2_n_0;
  wire grp_fu_448_p2_carry__0_i_3_n_0;
  wire grp_fu_448_p2_carry__0_i_4_n_0;
  wire grp_fu_448_p2_carry__0_n_0;
  wire grp_fu_448_p2_carry__0_n_1;
  wire grp_fu_448_p2_carry__0_n_2;
  wire grp_fu_448_p2_carry__0_n_3;
  wire grp_fu_448_p2_carry__1_i_1_n_0;
  wire grp_fu_448_p2_carry__1_i_2_n_0;
  wire grp_fu_448_p2_carry__1_i_3_n_0;
  wire grp_fu_448_p2_carry__1_i_4_n_0;
  wire grp_fu_448_p2_carry__1_n_0;
  wire grp_fu_448_p2_carry__1_n_1;
  wire grp_fu_448_p2_carry__1_n_2;
  wire grp_fu_448_p2_carry__1_n_3;
  wire grp_fu_448_p2_carry__2_i_1_n_0;
  wire grp_fu_448_p2_carry__2_i_2_n_0;
  wire grp_fu_448_p2_carry__2_i_3_n_0;
  wire grp_fu_448_p2_carry__2_i_4_n_0;
  wire grp_fu_448_p2_carry__2_n_0;
  wire grp_fu_448_p2_carry__2_n_1;
  wire grp_fu_448_p2_carry__2_n_2;
  wire grp_fu_448_p2_carry__2_n_3;
  wire grp_fu_448_p2_carry__3_i_1_n_0;
  wire grp_fu_448_p2_carry__3_i_2_n_0;
  wire grp_fu_448_p2_carry__3_i_3_n_0;
  wire grp_fu_448_p2_carry__3_i_4_n_0;
  wire grp_fu_448_p2_carry__3_n_0;
  wire grp_fu_448_p2_carry__3_n_1;
  wire grp_fu_448_p2_carry__3_n_2;
  wire grp_fu_448_p2_carry__3_n_3;
  wire grp_fu_448_p2_carry__4_i_1_n_0;
  wire grp_fu_448_p2_carry__4_i_2_n_0;
  wire grp_fu_448_p2_carry__4_i_3_n_0;
  wire grp_fu_448_p2_carry__4_i_4_n_0;
  wire grp_fu_448_p2_carry__4_n_0;
  wire grp_fu_448_p2_carry__4_n_1;
  wire grp_fu_448_p2_carry__4_n_2;
  wire grp_fu_448_p2_carry__4_n_3;
  wire grp_fu_448_p2_carry__5_i_1_n_0;
  wire grp_fu_448_p2_carry__5_i_2_n_0;
  wire grp_fu_448_p2_carry__5_i_3_n_0;
  wire grp_fu_448_p2_carry__5_i_4_n_0;
  wire grp_fu_448_p2_carry__5_n_0;
  wire grp_fu_448_p2_carry__5_n_1;
  wire grp_fu_448_p2_carry__5_n_2;
  wire grp_fu_448_p2_carry__5_n_3;
  wire grp_fu_448_p2_carry__6_i_1_n_0;
  wire grp_fu_448_p2_carry__6_i_2_n_0;
  wire grp_fu_448_p2_carry__6_i_3_n_0;
  wire grp_fu_448_p2_carry__6_n_2;
  wire grp_fu_448_p2_carry__6_n_3;
  wire grp_fu_448_p2_carry_i_1_n_0;
  wire grp_fu_448_p2_carry_i_2_n_0;
  wire grp_fu_448_p2_carry_i_3_n_0;
  wire grp_fu_448_p2_carry_i_4_n_0;
  wire grp_fu_448_p2_carry_n_0;
  wire grp_fu_448_p2_carry_n_1;
  wire grp_fu_448_p2_carry_n_2;
  wire grp_fu_448_p2_carry_n_3;
  wire grp_fu_453_p2_carry__0_i_1_n_0;
  wire grp_fu_453_p2_carry__0_i_2_n_0;
  wire grp_fu_453_p2_carry__0_i_3_n_0;
  wire grp_fu_453_p2_carry__0_i_4_n_0;
  wire grp_fu_453_p2_carry__0_n_0;
  wire grp_fu_453_p2_carry__0_n_1;
  wire grp_fu_453_p2_carry__0_n_2;
  wire grp_fu_453_p2_carry__0_n_3;
  wire grp_fu_453_p2_carry__1_i_1_n_0;
  wire grp_fu_453_p2_carry__1_i_2_n_0;
  wire grp_fu_453_p2_carry__1_i_3_n_0;
  wire grp_fu_453_p2_carry__1_n_2;
  wire grp_fu_453_p2_carry__1_n_3;
  wire grp_fu_453_p2_carry_i_1_n_0;
  wire grp_fu_453_p2_carry_i_2_n_0;
  wire grp_fu_453_p2_carry_i_3_n_0;
  wire grp_fu_453_p2_carry_i_4_n_0;
  wire grp_fu_453_p2_carry_n_0;
  wire grp_fu_453_p2_carry_n_1;
  wire grp_fu_453_p2_carry_n_2;
  wire grp_fu_453_p2_carry_n_3;
  wire [31:0]height;
  wire [31:0]height_upper_edge_lo_fu_518_p3;
  wire [31:0]height_upper_edge_lo_reg_1147;
  wire led_exist;
  wire led_exist_load_reg_1185;
  wire [0:0]\led_exist_reg[0]_0 ;
  wire [0:0]\led_exist_reg[0]_1 ;
  wire \led_exist_reg[0]_2 ;
  wire \led_exist_reg[0]_3 ;
  wire \led_exist_reg[0]_4 ;
  wire \led_exist_reg[0]_5 ;
  wire [31:0]left_edge;
  wire left_edge0;
  wire left_edge_flag_2_reg_203;
  wire \left_edge_flag_2_reg_203[0]_i_1_n_0 ;
  wire left_edge_flag_3_reg_364;
  wire \left_edge_flag_3_reg_364[0]_i_1_n_0 ;
  wire [31:0]left_edge_loc_2_reg_223;
  wire \left_edge_loc_2_reg_223[0]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[10]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[11]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[12]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[13]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[14]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[15]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[16]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[17]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[18]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[19]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[1]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[20]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[21]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[22]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[23]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[24]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[25]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[26]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[27]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[28]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[29]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[2]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[30]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[31]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[31]_i_2_n_0 ;
  wire \left_edge_loc_2_reg_223[3]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[4]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[5]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[6]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[7]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[8]_i_1_n_0 ;
  wire \left_edge_loc_2_reg_223[9]_i_1_n_0 ;
  wire [31:0]left_edge_new_2_reg_213;
  wire \left_edge_new_2_reg_213[0]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[10]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[11]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[12]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[13]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[14]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[15]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[16]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[17]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[18]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[19]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[1]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[20]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[21]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[22]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[23]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[24]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[25]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[26]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[27]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[28]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[29]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[2]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[30]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[31]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[3]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[4]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[5]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[6]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[7]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[8]_i_1_n_0 ;
  wire \left_edge_new_2_reg_213[9]_i_1_n_0 ;
  wire [31:0]left_edge_new_3_reg_374;
  wire \left_edge_new_3_reg_374[0]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[10]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[11]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[12]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[13]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[14]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[15]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[16]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[17]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[18]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[19]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[1]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[20]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[21]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[22]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[23]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[24]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[25]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[26]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[27]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[28]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[29]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[2]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[30]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[31]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[3]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[4]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[5]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[6]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[7]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[8]_i_1_n_0 ;
  wire \left_edge_new_3_reg_374[9]_i_1_n_0 ;
  wire or_cond_7_reg_1172;
  wire other1_below_fu_669_p2_carry_n_1;
  wire other1_below_fu_669_p2_carry_n_2;
  wire other1_below_fu_669_p2_carry_n_3;
  wire other2_below_fu_663_p2_carry_i_18_n_0;
  wire other2_below_fu_663_p2_carry_n_1;
  wire other2_below_fu_663_p2_carry_n_2;
  wire other2_below_fu_663_p2_carry_n_3;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in3_in;
  wire p_4_reg_1204;
  wire \p_4_reg_1204[63]_i_2_n_0 ;
  wire [31:0]p_bottom_edge_load_reg_1154;
  wire \p_bottom_edge_load_reg_1154[0]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[10]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[11]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[12]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[13]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[14]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[15]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[16]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[17]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[18]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[19]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[1]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[20]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[21]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[22]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[23]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[24]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[25]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[26]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[27]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[28]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[29]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[2]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[30]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[31]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[3]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[4]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[5]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[6]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[7]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[8]_i_1_n_0 ;
  wire \p_bottom_edge_load_reg_1154[9]_i_1_n_0 ;
  wire [31:0]p_current_x_cord_load_fu_466_p3;
  wire [31:0]p_current_x_cord_load_reg_1099;
  wire [31:0]p_current_y_cord_load_fu_474_p3;
  wire [31:0]p_current_y_cord_load_reg_1111;
  wire [16:1]p_neg1_fu_882_p2;
  wire p_neg1_fu_882_p2_carry__0_i_1_n_0;
  wire p_neg1_fu_882_p2_carry__0_i_2_n_0;
  wire p_neg1_fu_882_p2_carry__0_i_3_n_0;
  wire p_neg1_fu_882_p2_carry__0_i_4_n_0;
  wire p_neg1_fu_882_p2_carry__0_n_0;
  wire p_neg1_fu_882_p2_carry__0_n_1;
  wire p_neg1_fu_882_p2_carry__0_n_2;
  wire p_neg1_fu_882_p2_carry__0_n_3;
  wire p_neg1_fu_882_p2_carry__1_i_1_n_0;
  wire p_neg1_fu_882_p2_carry__1_i_2_n_0;
  wire p_neg1_fu_882_p2_carry__1_i_3_n_0;
  wire p_neg1_fu_882_p2_carry__1_i_4_n_0;
  wire p_neg1_fu_882_p2_carry__1_n_0;
  wire p_neg1_fu_882_p2_carry__1_n_1;
  wire p_neg1_fu_882_p2_carry__1_n_2;
  wire p_neg1_fu_882_p2_carry__1_n_3;
  wire p_neg1_fu_882_p2_carry__2_i_1_n_0;
  wire p_neg1_fu_882_p2_carry__2_i_2_n_0;
  wire p_neg1_fu_882_p2_carry__2_i_3_n_0;
  wire p_neg1_fu_882_p2_carry__2_i_4_n_0;
  wire p_neg1_fu_882_p2_carry__2_n_0;
  wire p_neg1_fu_882_p2_carry__2_n_1;
  wire p_neg1_fu_882_p2_carry__2_n_2;
  wire p_neg1_fu_882_p2_carry__2_n_3;
  wire p_neg1_fu_882_p2_carry__3_i_1_n_0;
  wire p_neg1_fu_882_p2_carry_i_1_n_0;
  wire p_neg1_fu_882_p2_carry_i_2_n_0;
  wire p_neg1_fu_882_p2_carry_i_3_n_0;
  wire p_neg1_fu_882_p2_carry_n_0;
  wire p_neg1_fu_882_p2_carry_n_1;
  wire p_neg1_fu_882_p2_carry_n_2;
  wire p_neg1_fu_882_p2_carry_n_3;
  wire [16:1]p_neg_fu_927_p2;
  wire p_neg_fu_927_p2_carry__0_i_1_n_0;
  wire p_neg_fu_927_p2_carry__0_i_2_n_0;
  wire p_neg_fu_927_p2_carry__0_i_3_n_0;
  wire p_neg_fu_927_p2_carry__0_i_4_n_0;
  wire p_neg_fu_927_p2_carry__0_n_0;
  wire p_neg_fu_927_p2_carry__0_n_1;
  wire p_neg_fu_927_p2_carry__0_n_2;
  wire p_neg_fu_927_p2_carry__0_n_3;
  wire p_neg_fu_927_p2_carry__1_i_1_n_0;
  wire p_neg_fu_927_p2_carry__1_i_2_n_0;
  wire p_neg_fu_927_p2_carry__1_i_3_n_0;
  wire p_neg_fu_927_p2_carry__1_i_4_n_0;
  wire p_neg_fu_927_p2_carry__1_n_0;
  wire p_neg_fu_927_p2_carry__1_n_1;
  wire p_neg_fu_927_p2_carry__1_n_2;
  wire p_neg_fu_927_p2_carry__1_n_3;
  wire p_neg_fu_927_p2_carry__2_i_1_n_0;
  wire p_neg_fu_927_p2_carry__2_i_2_n_0;
  wire p_neg_fu_927_p2_carry__2_i_3_n_0;
  wire p_neg_fu_927_p2_carry__2_i_4_n_0;
  wire p_neg_fu_927_p2_carry__2_n_0;
  wire p_neg_fu_927_p2_carry__2_n_1;
  wire p_neg_fu_927_p2_carry__2_n_2;
  wire p_neg_fu_927_p2_carry__2_n_3;
  wire p_neg_fu_927_p2_carry__3_i_1_n_0;
  wire p_neg_fu_927_p2_carry_i_1_n_0;
  wire p_neg_fu_927_p2_carry_i_2_n_0;
  wire p_neg_fu_927_p2_carry_i_3_n_0;
  wire p_neg_fu_927_p2_carry_n_0;
  wire p_neg_fu_927_p2_carry_n_1;
  wire p_neg_fu_927_p2_carry_n_2;
  wire p_neg_fu_927_p2_carry_n_3;
  wire [31:0]p_right_edge_load_reg_1161;
  wire \p_right_edge_load_reg_1161[0]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[10]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[11]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[12]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[13]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[14]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[15]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[16]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[17]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[18]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[19]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[1]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[20]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[21]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[22]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[23]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[24]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[25]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[26]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[27]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[28]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[29]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[2]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[30]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[31]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[3]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[4]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[5]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[6]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[7]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[8]_i_1_n_0 ;
  wire \p_right_edge_load_reg_1161[9]_i_1_n_0 ;
  wire reset;
  wire [31:0]right_edge;
  wire right_edge0;
  wire right_edge_flag_2_reg_292;
  wire \right_edge_flag_2_reg_292[0]_i_1_n_0 ;
  wire right_edge_flag_3_reg_426;
  wire \right_edge_flag_3_reg_426[0]_i_1_n_0 ;
  wire [31:0]right_edge_loc_2_reg_314;
  wire \right_edge_loc_2_reg_314[0]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[10]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[11]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[12]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[13]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[14]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[15]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[16]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[17]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[18]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[19]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[1]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[20]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[21]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[22]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[23]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[24]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[25]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[26]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[27]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[28]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[29]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[2]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[30]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[31]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[31]_i_2_n_0 ;
  wire \right_edge_loc_2_reg_314[3]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[4]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[5]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[6]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[7]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[8]_i_1_n_0 ;
  wire \right_edge_loc_2_reg_314[9]_i_1_n_0 ;
  wire [31:0]right_edge_new_2_reg_302;
  wire \right_edge_new_2_reg_302[31]_i_1_n_0 ;
  wire [31:0]right_edge_new_3_reg_436;
  wire sig_det_color_cord_cord_out_V_full_n;
  wire [0:0]\state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire target_above_fu_675_p2_carry_i_19_n_0;
  wire target_above_fu_675_p2_carry_n_1;
  wire target_above_fu_675_p2_carry_n_2;
  wire target_above_fu_675_p2_carry_n_3;
  wire [7:0]target_color;
  wire tmp_10_reg_1181;
  wire \tmp_10_reg_1181[0]_i_1_n_0 ;
  wire [31:0]tmp_11_fu_819_p2;
  wire tmp_11_fu_819_p2_carry__0_i_5_n_0;
  wire tmp_11_fu_819_p2_carry__0_i_6_n_0;
  wire tmp_11_fu_819_p2_carry__0_i_7_n_0;
  wire tmp_11_fu_819_p2_carry__0_i_8_n_0;
  wire tmp_11_fu_819_p2_carry__0_n_0;
  wire tmp_11_fu_819_p2_carry__0_n_1;
  wire tmp_11_fu_819_p2_carry__0_n_2;
  wire tmp_11_fu_819_p2_carry__0_n_3;
  wire tmp_11_fu_819_p2_carry__1_i_5_n_0;
  wire tmp_11_fu_819_p2_carry__1_i_6_n_0;
  wire tmp_11_fu_819_p2_carry__1_i_7_n_0;
  wire tmp_11_fu_819_p2_carry__1_i_8_n_0;
  wire tmp_11_fu_819_p2_carry__1_n_0;
  wire tmp_11_fu_819_p2_carry__1_n_1;
  wire tmp_11_fu_819_p2_carry__1_n_2;
  wire tmp_11_fu_819_p2_carry__1_n_3;
  wire tmp_11_fu_819_p2_carry__2_i_5_n_0;
  wire tmp_11_fu_819_p2_carry__2_i_6_n_0;
  wire tmp_11_fu_819_p2_carry__2_i_7_n_0;
  wire tmp_11_fu_819_p2_carry__2_i_8_n_0;
  wire tmp_11_fu_819_p2_carry__2_n_0;
  wire tmp_11_fu_819_p2_carry__2_n_1;
  wire tmp_11_fu_819_p2_carry__2_n_2;
  wire tmp_11_fu_819_p2_carry__2_n_3;
  wire tmp_11_fu_819_p2_carry__3_i_5_n_0;
  wire tmp_11_fu_819_p2_carry__3_i_6_n_0;
  wire tmp_11_fu_819_p2_carry__3_i_7_n_0;
  wire tmp_11_fu_819_p2_carry__3_i_8_n_0;
  wire tmp_11_fu_819_p2_carry__3_n_0;
  wire tmp_11_fu_819_p2_carry__3_n_1;
  wire tmp_11_fu_819_p2_carry__3_n_2;
  wire tmp_11_fu_819_p2_carry__3_n_3;
  wire tmp_11_fu_819_p2_carry__4_i_5_n_0;
  wire tmp_11_fu_819_p2_carry__4_i_6_n_0;
  wire tmp_11_fu_819_p2_carry__4_i_7_n_0;
  wire tmp_11_fu_819_p2_carry__4_i_8_n_0;
  wire tmp_11_fu_819_p2_carry__4_n_0;
  wire tmp_11_fu_819_p2_carry__4_n_1;
  wire tmp_11_fu_819_p2_carry__4_n_2;
  wire tmp_11_fu_819_p2_carry__4_n_3;
  wire tmp_11_fu_819_p2_carry__5_i_5_n_0;
  wire tmp_11_fu_819_p2_carry__5_i_6_n_0;
  wire tmp_11_fu_819_p2_carry__5_i_7_n_0;
  wire tmp_11_fu_819_p2_carry__5_i_8_n_0;
  wire tmp_11_fu_819_p2_carry__5_n_0;
  wire tmp_11_fu_819_p2_carry__5_n_1;
  wire tmp_11_fu_819_p2_carry__5_n_2;
  wire tmp_11_fu_819_p2_carry__5_n_3;
  wire tmp_11_fu_819_p2_carry__6_i_4_n_0;
  wire tmp_11_fu_819_p2_carry__6_i_5_n_0;
  wire tmp_11_fu_819_p2_carry__6_i_6_n_0;
  wire tmp_11_fu_819_p2_carry__6_i_7_n_0;
  wire tmp_11_fu_819_p2_carry__6_n_1;
  wire tmp_11_fu_819_p2_carry__6_n_2;
  wire tmp_11_fu_819_p2_carry__6_n_3;
  wire tmp_11_fu_819_p2_carry_i_5_n_0;
  wire tmp_11_fu_819_p2_carry_i_6_n_0;
  wire tmp_11_fu_819_p2_carry_i_7_n_0;
  wire tmp_11_fu_819_p2_carry_i_8_n_0;
  wire tmp_11_fu_819_p2_carry_n_0;
  wire tmp_11_fu_819_p2_carry_n_1;
  wire tmp_11_fu_819_p2_carry_n_2;
  wire tmp_11_fu_819_p2_carry_n_3;
  wire [31:0]tmp_11_reg_1190;
  wire [15:1]tmp_13_fu_897_p2;
  wire [31:0]tmp_14_fu_825_p2;
  wire tmp_14_fu_825_p2_carry__0_i_1_n_0;
  wire tmp_14_fu_825_p2_carry__0_i_2_n_0;
  wire tmp_14_fu_825_p2_carry__0_i_3_n_0;
  wire tmp_14_fu_825_p2_carry__0_i_4_n_0;
  wire tmp_14_fu_825_p2_carry__0_n_0;
  wire tmp_14_fu_825_p2_carry__0_n_1;
  wire tmp_14_fu_825_p2_carry__0_n_2;
  wire tmp_14_fu_825_p2_carry__0_n_3;
  wire tmp_14_fu_825_p2_carry__1_i_1_n_0;
  wire tmp_14_fu_825_p2_carry__1_i_2_n_0;
  wire tmp_14_fu_825_p2_carry__1_i_3_n_0;
  wire tmp_14_fu_825_p2_carry__1_i_4_n_0;
  wire tmp_14_fu_825_p2_carry__1_n_0;
  wire tmp_14_fu_825_p2_carry__1_n_1;
  wire tmp_14_fu_825_p2_carry__1_n_2;
  wire tmp_14_fu_825_p2_carry__1_n_3;
  wire tmp_14_fu_825_p2_carry__2_i_1_n_0;
  wire tmp_14_fu_825_p2_carry__2_i_2_n_0;
  wire tmp_14_fu_825_p2_carry__2_i_3_n_0;
  wire tmp_14_fu_825_p2_carry__2_i_4_n_0;
  wire tmp_14_fu_825_p2_carry__2_n_0;
  wire tmp_14_fu_825_p2_carry__2_n_1;
  wire tmp_14_fu_825_p2_carry__2_n_2;
  wire tmp_14_fu_825_p2_carry__2_n_3;
  wire tmp_14_fu_825_p2_carry__3_i_5_n_0;
  wire tmp_14_fu_825_p2_carry__3_i_6_n_0;
  wire tmp_14_fu_825_p2_carry__3_i_7_n_0;
  wire tmp_14_fu_825_p2_carry__3_i_8_n_0;
  wire tmp_14_fu_825_p2_carry__3_n_0;
  wire tmp_14_fu_825_p2_carry__3_n_1;
  wire tmp_14_fu_825_p2_carry__3_n_2;
  wire tmp_14_fu_825_p2_carry__3_n_3;
  wire tmp_14_fu_825_p2_carry__4_i_5_n_0;
  wire tmp_14_fu_825_p2_carry__4_i_6_n_0;
  wire tmp_14_fu_825_p2_carry__4_i_7_n_0;
  wire tmp_14_fu_825_p2_carry__4_i_8_n_0;
  wire tmp_14_fu_825_p2_carry__4_n_0;
  wire tmp_14_fu_825_p2_carry__4_n_1;
  wire tmp_14_fu_825_p2_carry__4_n_2;
  wire tmp_14_fu_825_p2_carry__4_n_3;
  wire tmp_14_fu_825_p2_carry__5_i_5_n_0;
  wire tmp_14_fu_825_p2_carry__5_i_6_n_0;
  wire tmp_14_fu_825_p2_carry__5_i_7_n_0;
  wire tmp_14_fu_825_p2_carry__5_i_8_n_0;
  wire tmp_14_fu_825_p2_carry__5_n_0;
  wire tmp_14_fu_825_p2_carry__5_n_1;
  wire tmp_14_fu_825_p2_carry__5_n_2;
  wire tmp_14_fu_825_p2_carry__5_n_3;
  wire tmp_14_fu_825_p2_carry__6_i_4_n_0;
  wire tmp_14_fu_825_p2_carry__6_i_5_n_0;
  wire tmp_14_fu_825_p2_carry__6_i_6_n_0;
  wire tmp_14_fu_825_p2_carry__6_i_7_n_0;
  wire tmp_14_fu_825_p2_carry__6_n_1;
  wire tmp_14_fu_825_p2_carry__6_n_2;
  wire tmp_14_fu_825_p2_carry__6_n_3;
  wire tmp_14_fu_825_p2_carry_i_1_n_0;
  wire tmp_14_fu_825_p2_carry_i_2_n_0;
  wire tmp_14_fu_825_p2_carry_i_3_n_0;
  wire tmp_14_fu_825_p2_carry_i_4_n_0;
  wire tmp_14_fu_825_p2_carry_n_0;
  wire tmp_14_fu_825_p2_carry_n_1;
  wire tmp_14_fu_825_p2_carry_n_2;
  wire tmp_14_fu_825_p2_carry_n_3;
  wire [31:0]tmp_14_reg_1197;
  wire [15:1]tmp_18_fu_942_p2;
  wire [31:1]tmp_26_fu_990_p2;
  wire [31:1]tmp_27_fu_1002_p2;
  wire [15:0]tmp_29_fu_797_p1;
  wire [30:16]tmp_29_fu_797_p1__0;
  wire [15:0]tmp_30_fu_801_p1;
  wire [30:16]tmp_30_fu_801_p1__0;
  wire [30:16]tmp_33_fu_831_p1;
  wire [15:0]tmp_33_fu_831_p1__0;
  wire [15:0]tmp_34_fu_835_p1;
  wire [30:16]tmp_34_fu_835_p1__0;
  wire tmp_4_fu_488_p2;
  wire tmp_4_reg_1124;
  wire \tmp_4_reg_1124[0]_i_10_n_0 ;
  wire \tmp_4_reg_1124[0]_i_11_n_0 ;
  wire \tmp_4_reg_1124[0]_i_12_n_0 ;
  wire \tmp_4_reg_1124[0]_i_13_n_0 ;
  wire \tmp_4_reg_1124[0]_i_14_n_0 ;
  wire \tmp_4_reg_1124[0]_i_15_n_0 ;
  wire \tmp_4_reg_1124[0]_i_16_n_0 ;
  wire \tmp_4_reg_1124[0]_i_17_n_0 ;
  wire \tmp_4_reg_1124[0]_i_18_n_0 ;
  wire \tmp_4_reg_1124[0]_i_19_n_0 ;
  wire \tmp_4_reg_1124[0]_i_2_n_0 ;
  wire \tmp_4_reg_1124[0]_i_3_n_0 ;
  wire \tmp_4_reg_1124[0]_i_4_n_0 ;
  wire \tmp_4_reg_1124[0]_i_5_n_0 ;
  wire \tmp_4_reg_1124[0]_i_6_n_0 ;
  wire \tmp_4_reg_1124[0]_i_7_n_0 ;
  wire \tmp_4_reg_1124[0]_i_8_n_0 ;
  wire \tmp_4_reg_1124[0]_i_9_n_0 ;
  wire tmp_5_fu_810_p2;
  wire tmp_5_fu_810_p2_carry__0_i_1_n_0;
  wire tmp_5_fu_810_p2_carry__0_i_2_n_0;
  wire tmp_5_fu_810_p2_carry__0_i_3_n_0;
  wire tmp_5_fu_810_p2_carry__0_i_4_n_0;
  wire tmp_5_fu_810_p2_carry__0_n_0;
  wire tmp_5_fu_810_p2_carry__0_n_1;
  wire tmp_5_fu_810_p2_carry__0_n_2;
  wire tmp_5_fu_810_p2_carry__0_n_3;
  wire tmp_5_fu_810_p2_carry__1_i_1_n_0;
  wire tmp_5_fu_810_p2_carry__1_i_2_n_0;
  wire tmp_5_fu_810_p2_carry__1_i_3_n_0;
  wire tmp_5_fu_810_p2_carry__1_n_2;
  wire tmp_5_fu_810_p2_carry__1_n_3;
  wire tmp_5_fu_810_p2_carry_i_1_n_0;
  wire tmp_5_fu_810_p2_carry_i_2_n_0;
  wire tmp_5_fu_810_p2_carry_i_3_n_0;
  wire tmp_5_fu_810_p2_carry_i_4_n_0;
  wire tmp_5_fu_810_p2_carry_n_0;
  wire tmp_5_fu_810_p2_carry_n_1;
  wire tmp_5_fu_810_p2_carry_n_2;
  wire tmp_5_fu_810_p2_carry_n_3;
  wire tmp_5_reg_1176;
  wire \tmp_5_reg_1176[0]_i_1_n_0 ;
  wire tmp_6_fu_724_p2_carry__0_i_1_n_0;
  wire tmp_6_fu_724_p2_carry__0_i_2_n_0;
  wire tmp_6_fu_724_p2_carry__0_i_3_n_0;
  wire tmp_6_fu_724_p2_carry__0_i_4_n_0;
  wire tmp_6_fu_724_p2_carry__0_i_5_n_0;
  wire tmp_6_fu_724_p2_carry__0_i_6_n_0;
  wire tmp_6_fu_724_p2_carry__0_i_7_n_0;
  wire tmp_6_fu_724_p2_carry__0_i_8_n_0;
  wire tmp_6_fu_724_p2_carry__0_n_0;
  wire tmp_6_fu_724_p2_carry__0_n_1;
  wire tmp_6_fu_724_p2_carry__0_n_2;
  wire tmp_6_fu_724_p2_carry__0_n_3;
  wire tmp_6_fu_724_p2_carry__1_i_1_n_0;
  wire tmp_6_fu_724_p2_carry__1_i_2_n_0;
  wire tmp_6_fu_724_p2_carry__1_i_3_n_0;
  wire tmp_6_fu_724_p2_carry__1_i_4_n_0;
  wire tmp_6_fu_724_p2_carry__1_i_5_n_0;
  wire tmp_6_fu_724_p2_carry__1_i_6_n_0;
  wire tmp_6_fu_724_p2_carry__1_i_7_n_0;
  wire tmp_6_fu_724_p2_carry__1_i_8_n_0;
  wire tmp_6_fu_724_p2_carry__1_n_0;
  wire tmp_6_fu_724_p2_carry__1_n_1;
  wire tmp_6_fu_724_p2_carry__1_n_2;
  wire tmp_6_fu_724_p2_carry__1_n_3;
  wire tmp_6_fu_724_p2_carry__2_i_1_n_0;
  wire tmp_6_fu_724_p2_carry__2_i_2_n_0;
  wire tmp_6_fu_724_p2_carry__2_i_3_n_0;
  wire tmp_6_fu_724_p2_carry__2_i_4_n_0;
  wire tmp_6_fu_724_p2_carry__2_i_5_n_0;
  wire tmp_6_fu_724_p2_carry__2_i_6_n_0;
  wire tmp_6_fu_724_p2_carry__2_i_7_n_0;
  wire tmp_6_fu_724_p2_carry__2_i_8_n_0;
  wire tmp_6_fu_724_p2_carry__2_n_1;
  wire tmp_6_fu_724_p2_carry__2_n_2;
  wire tmp_6_fu_724_p2_carry__2_n_3;
  wire tmp_6_fu_724_p2_carry_i_1_n_0;
  wire tmp_6_fu_724_p2_carry_i_2_n_0;
  wire tmp_6_fu_724_p2_carry_i_3_n_0;
  wire tmp_6_fu_724_p2_carry_i_4_n_0;
  wire tmp_6_fu_724_p2_carry_i_5_n_0;
  wire tmp_6_fu_724_p2_carry_i_6_n_0;
  wire tmp_6_fu_724_p2_carry_i_7_n_0;
  wire tmp_6_fu_724_p2_carry_i_8_n_0;
  wire tmp_6_fu_724_p2_carry_n_0;
  wire tmp_6_fu_724_p2_carry_n_1;
  wire tmp_6_fu_724_p2_carry_n_2;
  wire tmp_6_fu_724_p2_carry_n_3;
  wire tmp_7_fu_748_p2_carry__0_i_1_n_0;
  wire tmp_7_fu_748_p2_carry__0_i_2_n_0;
  wire tmp_7_fu_748_p2_carry__0_i_3_n_0;
  wire tmp_7_fu_748_p2_carry__0_i_4_n_0;
  wire tmp_7_fu_748_p2_carry__0_i_5_n_0;
  wire tmp_7_fu_748_p2_carry__0_i_6_n_0;
  wire tmp_7_fu_748_p2_carry__0_i_7_n_0;
  wire tmp_7_fu_748_p2_carry__0_i_8_n_0;
  wire tmp_7_fu_748_p2_carry__0_n_0;
  wire tmp_7_fu_748_p2_carry__0_n_1;
  wire tmp_7_fu_748_p2_carry__0_n_2;
  wire tmp_7_fu_748_p2_carry__0_n_3;
  wire tmp_7_fu_748_p2_carry__1_i_1_n_0;
  wire tmp_7_fu_748_p2_carry__1_i_2_n_0;
  wire tmp_7_fu_748_p2_carry__1_i_3_n_0;
  wire tmp_7_fu_748_p2_carry__1_i_4_n_0;
  wire tmp_7_fu_748_p2_carry__1_i_5_n_0;
  wire tmp_7_fu_748_p2_carry__1_i_6_n_0;
  wire tmp_7_fu_748_p2_carry__1_i_7_n_0;
  wire tmp_7_fu_748_p2_carry__1_i_8_n_0;
  wire tmp_7_fu_748_p2_carry__1_n_0;
  wire tmp_7_fu_748_p2_carry__1_n_1;
  wire tmp_7_fu_748_p2_carry__1_n_2;
  wire tmp_7_fu_748_p2_carry__1_n_3;
  wire tmp_7_fu_748_p2_carry__2_i_1_n_0;
  wire tmp_7_fu_748_p2_carry__2_i_2_n_0;
  wire tmp_7_fu_748_p2_carry__2_i_3_n_0;
  wire tmp_7_fu_748_p2_carry__2_i_4_n_0;
  wire tmp_7_fu_748_p2_carry__2_i_5_n_0;
  wire tmp_7_fu_748_p2_carry__2_i_6_n_0;
  wire tmp_7_fu_748_p2_carry__2_i_7_n_0;
  wire tmp_7_fu_748_p2_carry__2_i_8_n_0;
  wire tmp_7_fu_748_p2_carry__2_n_1;
  wire tmp_7_fu_748_p2_carry__2_n_2;
  wire tmp_7_fu_748_p2_carry__2_n_3;
  wire tmp_7_fu_748_p2_carry_i_1_n_0;
  wire tmp_7_fu_748_p2_carry_i_2_n_0;
  wire tmp_7_fu_748_p2_carry_i_3_n_0;
  wire tmp_7_fu_748_p2_carry_i_4_n_0;
  wire tmp_7_fu_748_p2_carry_i_5_n_0;
  wire tmp_7_fu_748_p2_carry_i_6_n_0;
  wire tmp_7_fu_748_p2_carry_i_7_n_0;
  wire tmp_7_fu_748_p2_carry_i_8_n_0;
  wire tmp_7_fu_748_p2_carry_n_0;
  wire tmp_7_fu_748_p2_carry_n_1;
  wire tmp_7_fu_748_p2_carry_n_2;
  wire tmp_7_fu_748_p2_carry_n_3;
  wire tmp_8_fu_773_p2_carry__0_i_1_n_0;
  wire tmp_8_fu_773_p2_carry__0_i_2_n_0;
  wire tmp_8_fu_773_p2_carry__0_i_3_n_0;
  wire tmp_8_fu_773_p2_carry__0_i_4_n_0;
  wire tmp_8_fu_773_p2_carry__0_i_5_n_0;
  wire tmp_8_fu_773_p2_carry__0_i_6_n_0;
  wire tmp_8_fu_773_p2_carry__0_i_7_n_0;
  wire tmp_8_fu_773_p2_carry__0_i_8_n_0;
  wire tmp_8_fu_773_p2_carry__0_n_0;
  wire tmp_8_fu_773_p2_carry__0_n_1;
  wire tmp_8_fu_773_p2_carry__0_n_2;
  wire tmp_8_fu_773_p2_carry__0_n_3;
  wire tmp_8_fu_773_p2_carry__1_i_1_n_0;
  wire tmp_8_fu_773_p2_carry__1_i_2_n_0;
  wire tmp_8_fu_773_p2_carry__1_i_3_n_0;
  wire tmp_8_fu_773_p2_carry__1_i_4_n_0;
  wire tmp_8_fu_773_p2_carry__1_i_5_n_0;
  wire tmp_8_fu_773_p2_carry__1_i_6_n_0;
  wire tmp_8_fu_773_p2_carry__1_i_7_n_0;
  wire tmp_8_fu_773_p2_carry__1_i_8_n_0;
  wire tmp_8_fu_773_p2_carry__1_n_0;
  wire tmp_8_fu_773_p2_carry__1_n_1;
  wire tmp_8_fu_773_p2_carry__1_n_2;
  wire tmp_8_fu_773_p2_carry__1_n_3;
  wire tmp_8_fu_773_p2_carry__2_i_1_n_0;
  wire tmp_8_fu_773_p2_carry__2_i_2_n_0;
  wire tmp_8_fu_773_p2_carry__2_i_3_n_0;
  wire tmp_8_fu_773_p2_carry__2_i_4_n_0;
  wire tmp_8_fu_773_p2_carry__2_i_5_n_0;
  wire tmp_8_fu_773_p2_carry__2_i_6_n_0;
  wire tmp_8_fu_773_p2_carry__2_i_7_n_0;
  wire tmp_8_fu_773_p2_carry__2_i_8_n_0;
  wire tmp_8_fu_773_p2_carry__2_n_0;
  wire tmp_8_fu_773_p2_carry__2_n_1;
  wire tmp_8_fu_773_p2_carry__2_n_2;
  wire tmp_8_fu_773_p2_carry__2_n_3;
  wire tmp_8_fu_773_p2_carry_i_1_n_0;
  wire tmp_8_fu_773_p2_carry_i_2_n_0;
  wire tmp_8_fu_773_p2_carry_i_3_n_0;
  wire tmp_8_fu_773_p2_carry_i_4_n_0;
  wire tmp_8_fu_773_p2_carry_i_5_n_0;
  wire tmp_8_fu_773_p2_carry_i_6_n_0;
  wire tmp_8_fu_773_p2_carry_i_7_n_0;
  wire tmp_8_fu_773_p2_carry_i_8_n_0;
  wire tmp_8_fu_773_p2_carry_n_0;
  wire tmp_8_fu_773_p2_carry_n_1;
  wire tmp_8_fu_773_p2_carry_n_2;
  wire tmp_8_fu_773_p2_carry_n_3;
  wire [31:1]tmp_9_fu_805_p2;
  wire tmp_9_fu_805_p2_carry__0_i_1_n_0;
  wire tmp_9_fu_805_p2_carry__0_i_2_n_0;
  wire tmp_9_fu_805_p2_carry__0_i_3_n_0;
  wire tmp_9_fu_805_p2_carry__0_i_4_n_0;
  wire tmp_9_fu_805_p2_carry__0_n_0;
  wire tmp_9_fu_805_p2_carry__0_n_1;
  wire tmp_9_fu_805_p2_carry__0_n_2;
  wire tmp_9_fu_805_p2_carry__0_n_3;
  wire tmp_9_fu_805_p2_carry__1_i_1_n_0;
  wire tmp_9_fu_805_p2_carry__1_i_2_n_0;
  wire tmp_9_fu_805_p2_carry__1_i_3_n_0;
  wire tmp_9_fu_805_p2_carry__1_i_4_n_0;
  wire tmp_9_fu_805_p2_carry__1_n_0;
  wire tmp_9_fu_805_p2_carry__1_n_1;
  wire tmp_9_fu_805_p2_carry__1_n_2;
  wire tmp_9_fu_805_p2_carry__1_n_3;
  wire tmp_9_fu_805_p2_carry__2_i_1_n_0;
  wire tmp_9_fu_805_p2_carry__2_i_2_n_0;
  wire tmp_9_fu_805_p2_carry__2_i_3_n_0;
  wire tmp_9_fu_805_p2_carry__2_i_4_n_0;
  wire tmp_9_fu_805_p2_carry__2_n_0;
  wire tmp_9_fu_805_p2_carry__2_n_1;
  wire tmp_9_fu_805_p2_carry__2_n_2;
  wire tmp_9_fu_805_p2_carry__2_n_3;
  wire tmp_9_fu_805_p2_carry__3_i_1_n_0;
  wire tmp_9_fu_805_p2_carry__3_i_2_n_0;
  wire tmp_9_fu_805_p2_carry__3_i_3_n_0;
  wire tmp_9_fu_805_p2_carry__3_i_4_n_0;
  wire tmp_9_fu_805_p2_carry__3_n_0;
  wire tmp_9_fu_805_p2_carry__3_n_1;
  wire tmp_9_fu_805_p2_carry__3_n_2;
  wire tmp_9_fu_805_p2_carry__3_n_3;
  wire tmp_9_fu_805_p2_carry__4_i_1_n_0;
  wire tmp_9_fu_805_p2_carry__4_i_2_n_0;
  wire tmp_9_fu_805_p2_carry__4_i_3_n_0;
  wire tmp_9_fu_805_p2_carry__4_i_4_n_0;
  wire tmp_9_fu_805_p2_carry__4_n_0;
  wire tmp_9_fu_805_p2_carry__4_n_1;
  wire tmp_9_fu_805_p2_carry__4_n_2;
  wire tmp_9_fu_805_p2_carry__4_n_3;
  wire tmp_9_fu_805_p2_carry__5_i_1_n_0;
  wire tmp_9_fu_805_p2_carry__5_i_2_n_0;
  wire tmp_9_fu_805_p2_carry__5_i_3_n_0;
  wire tmp_9_fu_805_p2_carry__5_i_4_n_0;
  wire tmp_9_fu_805_p2_carry__5_n_0;
  wire tmp_9_fu_805_p2_carry__5_n_1;
  wire tmp_9_fu_805_p2_carry__5_n_2;
  wire tmp_9_fu_805_p2_carry__5_n_3;
  wire tmp_9_fu_805_p2_carry__6_i_1_n_0;
  wire tmp_9_fu_805_p2_carry__6_i_2_n_0;
  wire tmp_9_fu_805_p2_carry__6_i_3_n_0;
  wire tmp_9_fu_805_p2_carry__6_n_2;
  wire tmp_9_fu_805_p2_carry__6_n_3;
  wire tmp_9_fu_805_p2_carry_i_1_n_0;
  wire tmp_9_fu_805_p2_carry_i_2_n_0;
  wire tmp_9_fu_805_p2_carry_i_3_n_0;
  wire tmp_9_fu_805_p2_carry_i_4_n_0;
  wire tmp_9_fu_805_p2_carry_n_0;
  wire tmp_9_fu_805_p2_carry_n_1;
  wire tmp_9_fu_805_p2_carry_n_2;
  wire tmp_9_fu_805_p2_carry_n_3;
  wire tmp_reg_1168;
  wire \tmp_reg_1168_reg[0]_rep_n_0 ;
  wire tmp_s_fu_699_p2_carry__0_i_1_n_0;
  wire tmp_s_fu_699_p2_carry__0_i_2_n_0;
  wire tmp_s_fu_699_p2_carry__0_i_3_n_0;
  wire tmp_s_fu_699_p2_carry__0_i_4_n_0;
  wire tmp_s_fu_699_p2_carry__0_i_5_n_0;
  wire tmp_s_fu_699_p2_carry__0_i_6_n_0;
  wire tmp_s_fu_699_p2_carry__0_i_7_n_0;
  wire tmp_s_fu_699_p2_carry__0_i_8_n_0;
  wire tmp_s_fu_699_p2_carry__0_n_0;
  wire tmp_s_fu_699_p2_carry__0_n_1;
  wire tmp_s_fu_699_p2_carry__0_n_2;
  wire tmp_s_fu_699_p2_carry__0_n_3;
  wire tmp_s_fu_699_p2_carry__1_i_1_n_0;
  wire tmp_s_fu_699_p2_carry__1_i_2_n_0;
  wire tmp_s_fu_699_p2_carry__1_i_3_n_0;
  wire tmp_s_fu_699_p2_carry__1_i_4_n_0;
  wire tmp_s_fu_699_p2_carry__1_i_5_n_0;
  wire tmp_s_fu_699_p2_carry__1_i_6_n_0;
  wire tmp_s_fu_699_p2_carry__1_i_7_n_0;
  wire tmp_s_fu_699_p2_carry__1_i_8_n_0;
  wire tmp_s_fu_699_p2_carry__1_n_0;
  wire tmp_s_fu_699_p2_carry__1_n_1;
  wire tmp_s_fu_699_p2_carry__1_n_2;
  wire tmp_s_fu_699_p2_carry__1_n_3;
  wire tmp_s_fu_699_p2_carry__2_i_1_n_0;
  wire tmp_s_fu_699_p2_carry__2_i_2_n_0;
  wire tmp_s_fu_699_p2_carry__2_i_3_n_0;
  wire tmp_s_fu_699_p2_carry__2_i_4_n_0;
  wire tmp_s_fu_699_p2_carry__2_i_5_n_0;
  wire tmp_s_fu_699_p2_carry__2_i_6_n_0;
  wire tmp_s_fu_699_p2_carry__2_i_7_n_0;
  wire tmp_s_fu_699_p2_carry__2_i_8_n_0;
  wire tmp_s_fu_699_p2_carry__2_n_1;
  wire tmp_s_fu_699_p2_carry__2_n_2;
  wire tmp_s_fu_699_p2_carry__2_n_3;
  wire tmp_s_fu_699_p2_carry_i_1_n_0;
  wire tmp_s_fu_699_p2_carry_i_2_n_0;
  wire tmp_s_fu_699_p2_carry_i_3_n_0;
  wire tmp_s_fu_699_p2_carry_i_4_n_0;
  wire tmp_s_fu_699_p2_carry_i_5_n_0;
  wire tmp_s_fu_699_p2_carry_i_6_n_0;
  wire tmp_s_fu_699_p2_carry_i_7_n_0;
  wire tmp_s_fu_699_p2_carry_i_8_n_0;
  wire tmp_s_fu_699_p2_carry_n_0;
  wire tmp_s_fu_699_p2_carry_n_1;
  wire tmp_s_fu_699_p2_carry_n_2;
  wire tmp_s_fu_699_p2_carry_n_3;
  wire [31:0]upper_edge;
  wire upper_edge0;
  wire upper_edge_flag_2_reg_232;
  wire \upper_edge_flag_2_reg_232[0]_i_2_n_0 ;
  wire \upper_edge_flag_2_reg_232_reg_n_0_[0] ;
  wire upper_edge_flag_3_reg_384;
  wire \upper_edge_flag_3_reg_384[0]_i_1_n_0 ;
  wire \upper_edge_flag_3_reg_384_reg_n_0_[0] ;
  wire [31:0]upper_edge_loc_2_reg_252;
  wire \upper_edge_loc_2_reg_252[0]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[10]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[11]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[12]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[13]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[14]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[15]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[16]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[17]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[18]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[19]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[1]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[20]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[21]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[22]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[23]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[24]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[25]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[26]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[27]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[28]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[29]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[2]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[30]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[31]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[31]_i_2_n_0 ;
  wire \upper_edge_loc_2_reg_252[3]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[4]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[5]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[6]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[7]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[8]_i_1_n_0 ;
  wire \upper_edge_loc_2_reg_252[9]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[0]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[10]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[11]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[12]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[13]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[14]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[15]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[16]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[17]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[18]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[19]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[1]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[20]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[21]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[22]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[23]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[24]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[25]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[26]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[27]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[28]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[29]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[2]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[30]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[31]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[3]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[4]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[5]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[6]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[7]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[8]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242[9]_i_1_n_0 ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[0] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[10] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[11] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[12] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[13] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[14] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[15] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[16] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[17] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[18] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[19] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[1] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[20] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[21] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[22] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[23] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[24] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[25] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[26] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[27] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[28] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[29] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[2] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[30] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[31] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[3] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[4] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[5] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[6] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[7] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[8] ;
  wire \upper_edge_new_2_reg_242_reg_n_0_[9] ;
  wire \upper_edge_new_3_reg_394[0]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[10]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[11]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[12]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[13]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[14]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[15]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[16]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[17]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[18]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[19]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[1]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[20]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[21]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[22]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[23]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[24]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[25]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[26]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[27]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[28]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[29]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[2]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[30]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[31]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[3]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[4]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[5]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[6]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[7]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[8]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394[9]_i_1_n_0 ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[0] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[10] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[11] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[12] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[13] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[14] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[15] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[16] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[17] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[18] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[19] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[1] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[20] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[21] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[22] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[23] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[24] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[25] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[26] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[27] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[28] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[29] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[2] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[30] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[31] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[3] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[4] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[5] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[6] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[7] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[8] ;
  wire \upper_edge_new_3_reg_394_reg_n_0_[9] ;
  wire [63:32]val_assign_fu_861_p2;
  wire [31:0]width;
  wire [31:0]width_left_edge_load_fu_510_p3;
  wire [31:0]width_left_edge_load_reg_1140;
  wire [31:0]x_cord_out;
  wire \x_cord_out[12]_INST_0_i_1_n_0 ;
  wire \x_cord_out[12]_INST_0_i_1_n_1 ;
  wire \x_cord_out[12]_INST_0_i_1_n_2 ;
  wire \x_cord_out[12]_INST_0_i_1_n_3 ;
  wire \x_cord_out[16]_INST_0_i_1_n_0 ;
  wire \x_cord_out[16]_INST_0_i_1_n_1 ;
  wire \x_cord_out[16]_INST_0_i_1_n_2 ;
  wire \x_cord_out[16]_INST_0_i_1_n_3 ;
  wire \x_cord_out[20]_INST_0_i_1_n_0 ;
  wire \x_cord_out[20]_INST_0_i_1_n_1 ;
  wire \x_cord_out[20]_INST_0_i_1_n_2 ;
  wire \x_cord_out[20]_INST_0_i_1_n_3 ;
  wire \x_cord_out[24]_INST_0_i_1_n_0 ;
  wire \x_cord_out[24]_INST_0_i_1_n_1 ;
  wire \x_cord_out[24]_INST_0_i_1_n_2 ;
  wire \x_cord_out[24]_INST_0_i_1_n_3 ;
  wire \x_cord_out[28]_INST_0_i_1_n_0 ;
  wire \x_cord_out[28]_INST_0_i_1_n_1 ;
  wire \x_cord_out[28]_INST_0_i_1_n_2 ;
  wire \x_cord_out[28]_INST_0_i_1_n_3 ;
  wire \x_cord_out[31]_INST_0_i_1_n_2 ;
  wire \x_cord_out[31]_INST_0_i_1_n_3 ;
  wire \x_cord_out[4]_INST_0_i_1_n_0 ;
  wire \x_cord_out[4]_INST_0_i_1_n_1 ;
  wire \x_cord_out[4]_INST_0_i_1_n_2 ;
  wire \x_cord_out[4]_INST_0_i_1_n_3 ;
  wire \x_cord_out[8]_INST_0_i_1_n_0 ;
  wire \x_cord_out[8]_INST_0_i_1_n_1 ;
  wire \x_cord_out[8]_INST_0_i_1_n_2 ;
  wire \x_cord_out[8]_INST_0_i_1_n_3 ;
  wire [31:0]y_cord_out;
  wire \y_cord_out[12]_INST_0_i_1_n_0 ;
  wire \y_cord_out[12]_INST_0_i_1_n_1 ;
  wire \y_cord_out[12]_INST_0_i_1_n_2 ;
  wire \y_cord_out[12]_INST_0_i_1_n_3 ;
  wire \y_cord_out[16]_INST_0_i_1_n_0 ;
  wire \y_cord_out[16]_INST_0_i_1_n_1 ;
  wire \y_cord_out[16]_INST_0_i_1_n_2 ;
  wire \y_cord_out[16]_INST_0_i_1_n_3 ;
  wire \y_cord_out[20]_INST_0_i_1_n_0 ;
  wire \y_cord_out[20]_INST_0_i_1_n_1 ;
  wire \y_cord_out[20]_INST_0_i_1_n_2 ;
  wire \y_cord_out[20]_INST_0_i_1_n_3 ;
  wire \y_cord_out[24]_INST_0_i_1_n_0 ;
  wire \y_cord_out[24]_INST_0_i_1_n_1 ;
  wire \y_cord_out[24]_INST_0_i_1_n_2 ;
  wire \y_cord_out[24]_INST_0_i_1_n_3 ;
  wire \y_cord_out[28]_INST_0_i_1_n_0 ;
  wire \y_cord_out[28]_INST_0_i_1_n_1 ;
  wire \y_cord_out[28]_INST_0_i_1_n_2 ;
  wire \y_cord_out[28]_INST_0_i_1_n_3 ;
  wire \y_cord_out[31]_INST_0_i_1_n_2 ;
  wire \y_cord_out[31]_INST_0_i_1_n_3 ;
  wire \y_cord_out[4]_INST_0_i_1_n_0 ;
  wire \y_cord_out[4]_INST_0_i_1_n_1 ;
  wire \y_cord_out[4]_INST_0_i_1_n_2 ;
  wire \y_cord_out[4]_INST_0_i_1_n_3 ;
  wire \y_cord_out[8]_INST_0_i_1_n_0 ;
  wire \y_cord_out[8]_INST_0_i_1_n_1 ;
  wire \y_cord_out[8]_INST_0_i_1_n_2 ;
  wire \y_cord_out[8]_INST_0_i_1_n_3 ;
  wire [3:2]\NLW_data_p1_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_p1_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_data_p1_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_p1_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]NLW_grp_fu_448_p2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_grp_fu_448_p2_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_grp_fu_453_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_grp_fu_453_p2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_grp_fu_453_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_grp_fu_453_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_other1_below_fu_669_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_other2_below_fu_663_p2_carry_O_UNCONNECTED;
  wire [0:0]NLW_p_neg1_fu_882_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_p_neg1_fu_882_p2_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_p_neg1_fu_882_p2_carry__3_O_UNCONNECTED;
  wire [0:0]NLW_p_neg_fu_927_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_p_neg_fu_927_p2_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_p_neg_fu_927_p2_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_target_above_fu_675_p2_carry_O_UNCONNECTED;
  wire [3:1]NLW_tmp_11_fu_819_p2_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_tmp_11_fu_819_p2_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_tmp_11_fu_819_p2_carry__5_O_UNCONNECTED;
  wire [3:3]NLW_tmp_11_fu_819_p2_carry__6_CO_UNCONNECTED;
  wire [2:0]NLW_tmp_11_fu_819_p2_carry__6_O_UNCONNECTED;
  wire [3:1]NLW_tmp_14_fu_825_p2_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_tmp_14_fu_825_p2_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_tmp_14_fu_825_p2_carry__5_O_UNCONNECTED;
  wire [3:3]NLW_tmp_14_fu_825_p2_carry__6_CO_UNCONNECTED;
  wire [2:0]NLW_tmp_14_fu_825_p2_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_tmp_5_fu_810_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_tmp_5_fu_810_p2_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_tmp_5_fu_810_p2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_tmp_5_fu_810_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_tmp_6_fu_724_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_tmp_6_fu_724_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_tmp_6_fu_724_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_tmp_6_fu_724_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_tmp_7_fu_748_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_tmp_7_fu_748_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_tmp_7_fu_748_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_tmp_7_fu_748_p2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_tmp_8_fu_773_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_tmp_8_fu_773_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_tmp_8_fu_773_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_tmp_8_fu_773_p2_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_tmp_9_fu_805_p2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_tmp_9_fu_805_p2_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_tmp_s_fu_699_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_tmp_s_fu_699_p2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_tmp_s_fu_699_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_tmp_s_fu_699_p2_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_x_cord_out[31]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_cord_out[31]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_y_cord_out[31]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_y_cord_out[31]_INST_0_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I1(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I2(tmp_5_reg_1176),
        .I3(tmp_10_reg_1181),
        .I4(sig_det_color_cord_cord_out_V_full_n),
        .O(\ap_CS_fsm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(ap_CS_fsm_state3),
        .O(\ap_CS_fsm[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0DFD)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm[0]_i_1_n_0 ),
        .I1(ap_CS_fsm_state2),
        .I2(Q),
        .I3(\state_reg[0] ),
        .O(\ap_CS_fsm[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0DFD)) 
    \ap_CS_fsm[2]_rep_i_1 
       (.I0(\ap_CS_fsm[0]_i_1_n_0 ),
        .I1(ap_CS_fsm_state2),
        .I2(Q),
        .I3(\state_reg[0] ),
        .O(\ap_CS_fsm[2]_rep_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_0 ),
        .Q(Q),
        .S(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_0 ),
        .Q(ap_CS_fsm_state2),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  (* ORIG_CELL_NAME = "ap_CS_fsm_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\ap_CS_fsm[2]_i_1_n_0 ),
        .Q(ap_CS_fsm_state3),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  (* ORIG_CELL_NAME = "ap_CS_fsm_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2]_rep 
       (.C(aclk),
        .CE(1'b1),
        .D(\ap_CS_fsm[2]_rep_i_1_n_0 ),
        .Q(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .R(SR));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[0]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[0]),
        .I3(bottom_edge_new_3_reg_414[0]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[0]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[10]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[10]),
        .I3(bottom_edge_new_3_reg_414[10]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[10]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[11]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[11]),
        .I3(bottom_edge_new_3_reg_414[11]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[11]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[12]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[12]),
        .I3(bottom_edge_new_3_reg_414[12]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[12]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[13]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[13]),
        .I3(bottom_edge_new_3_reg_414[13]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[13]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[14]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[14]),
        .I3(bottom_edge_new_3_reg_414[14]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[14]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[15]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[15]),
        .I3(bottom_edge_new_3_reg_414[15]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[15]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[16]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[16]),
        .I3(bottom_edge_new_3_reg_414[16]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[16]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[17]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[17]),
        .I3(bottom_edge_new_3_reg_414[17]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[17]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[18]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[18]),
        .I3(bottom_edge_new_3_reg_414[18]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[18]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[19]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[19]),
        .I3(bottom_edge_new_3_reg_414[19]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[19]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[1]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[1]),
        .I3(bottom_edge_new_3_reg_414[1]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[1]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[20]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[20]),
        .I3(bottom_edge_new_3_reg_414[20]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[20]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[21]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[21]),
        .I3(bottom_edge_new_3_reg_414[21]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[21]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[22]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[22]),
        .I3(bottom_edge_new_3_reg_414[22]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[22]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[23]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[23]),
        .I3(bottom_edge_new_3_reg_414[23]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[23]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[24]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[24]),
        .I3(bottom_edge_new_3_reg_414[24]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[24]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[25]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[25]),
        .I3(bottom_edge_new_3_reg_414[25]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[25]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[26]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[26]),
        .I3(bottom_edge_new_3_reg_414[26]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[26]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[27]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[27]),
        .I3(bottom_edge_new_3_reg_414[27]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[27]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[28]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[28]),
        .I3(bottom_edge_new_3_reg_414[28]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[28]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[29]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[29]),
        .I3(bottom_edge_new_3_reg_414[29]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[29]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[2]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[2]),
        .I3(bottom_edge_new_3_reg_414[2]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[2]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[30]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[30]),
        .I3(bottom_edge_new_3_reg_414[30]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[30]));
  LUT5 #(
    .INIT(32'hF0807000)) 
    \bottom_edge[31]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(\ap_CS_fsm[0]_i_1_n_0 ),
        .I3(bottom_edge_flag_3_reg_404),
        .I4(bottom_edge_flag_2_reg_261),
        .O(bottom_edge0));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[31]_i_2 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[31]),
        .I3(bottom_edge_new_3_reg_414[31]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[31]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[3]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[3]),
        .I3(bottom_edge_new_3_reg_414[3]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[3]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[4]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[4]),
        .I3(bottom_edge_new_3_reg_414[4]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[4]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[5]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[5]),
        .I3(bottom_edge_new_3_reg_414[5]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[5]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[6]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[6]),
        .I3(bottom_edge_new_3_reg_414[6]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[6]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[7]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[7]),
        .I3(bottom_edge_new_3_reg_414[7]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[7]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[8]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[8]),
        .I3(bottom_edge_new_3_reg_414[8]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[8]));
  LUT4 #(
    .INIT(16'hF780)) 
    \bottom_edge[9]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(bottom_edge_new_2_reg_271[9]),
        .I3(bottom_edge_new_3_reg_414[9]),
        .O(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[9]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    \bottom_edge_flag_2_reg_261[0]_i_1 
       (.I0(tmp_4_fu_488_p2),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_4_reg_1124),
        .I3(p_0_in3_in),
        .O(\bottom_edge_flag_2_reg_261[0]_i_1_n_0 ));
  FDRE \bottom_edge_flag_2_reg_261_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\bottom_edge_flag_2_reg_261[0]_i_1_n_0 ),
        .Q(bottom_edge_flag_2_reg_261),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \bottom_edge_flag_3_reg_404[0]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(tmp_4_fu_488_p2),
        .I3(bottom_edge_flag_2_reg_261),
        .O(\bottom_edge_flag_3_reg_404[0]_i_1_n_0 ));
  FDRE \bottom_edge_flag_3_reg_404_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\bottom_edge_flag_3_reg_404[0]_i_1_n_0 ),
        .Q(bottom_edge_flag_3_reg_404),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[0]_i_1 
       (.I0(bottom_edge[0]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[0]),
        .O(\bottom_edge_loc_2_reg_283[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[10]_i_1 
       (.I0(bottom_edge[10]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[10]),
        .O(\bottom_edge_loc_2_reg_283[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[11]_i_1 
       (.I0(bottom_edge[11]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[11]),
        .O(\bottom_edge_loc_2_reg_283[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[12]_i_1 
       (.I0(bottom_edge[12]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[12]),
        .O(\bottom_edge_loc_2_reg_283[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[13]_i_1 
       (.I0(bottom_edge[13]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[13]),
        .O(\bottom_edge_loc_2_reg_283[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[14]_i_1 
       (.I0(bottom_edge[14]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[14]),
        .O(\bottom_edge_loc_2_reg_283[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[15]_i_1 
       (.I0(bottom_edge[15]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[15]),
        .O(\bottom_edge_loc_2_reg_283[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[16]_i_1 
       (.I0(bottom_edge[16]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[16]),
        .O(\bottom_edge_loc_2_reg_283[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[17]_i_1 
       (.I0(bottom_edge[17]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[17]),
        .O(\bottom_edge_loc_2_reg_283[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[18]_i_1 
       (.I0(bottom_edge[18]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[18]),
        .O(\bottom_edge_loc_2_reg_283[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[19]_i_1 
       (.I0(bottom_edge[19]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[19]),
        .O(\bottom_edge_loc_2_reg_283[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[1]_i_1 
       (.I0(bottom_edge[1]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[1]),
        .O(\bottom_edge_loc_2_reg_283[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[20]_i_1 
       (.I0(bottom_edge[20]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[20]),
        .O(\bottom_edge_loc_2_reg_283[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[21]_i_1 
       (.I0(bottom_edge[21]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[21]),
        .O(\bottom_edge_loc_2_reg_283[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[22]_i_1 
       (.I0(bottom_edge[22]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[22]),
        .O(\bottom_edge_loc_2_reg_283[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[23]_i_1 
       (.I0(bottom_edge[23]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[23]),
        .O(\bottom_edge_loc_2_reg_283[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[24]_i_1 
       (.I0(bottom_edge[24]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[24]),
        .O(\bottom_edge_loc_2_reg_283[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[25]_i_1 
       (.I0(bottom_edge[25]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[25]),
        .O(\bottom_edge_loc_2_reg_283[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[26]_i_1 
       (.I0(bottom_edge[26]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[26]),
        .O(\bottom_edge_loc_2_reg_283[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[27]_i_1 
       (.I0(bottom_edge[27]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[27]),
        .O(\bottom_edge_loc_2_reg_283[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[28]_i_1 
       (.I0(bottom_edge[28]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[28]),
        .O(\bottom_edge_loc_2_reg_283[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[29]_i_1 
       (.I0(bottom_edge[29]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[29]),
        .O(\bottom_edge_loc_2_reg_283[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[2]_i_1 
       (.I0(bottom_edge[2]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[2]),
        .O(\bottom_edge_loc_2_reg_283[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[30]_i_1 
       (.I0(bottom_edge[30]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1__0[30]),
        .O(\bottom_edge_loc_2_reg_283[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[31]_i_1 
       (.I0(bottom_edge[31]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(\bottom_edge_loc_2_reg_283[31]_i_2_n_0 ),
        .O(\bottom_edge_loc_2_reg_283[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \bottom_edge_loc_2_reg_283[31]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[31]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[31]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[31]),
        .O(\bottom_edge_loc_2_reg_283[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[3]_i_1 
       (.I0(bottom_edge[3]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[3]),
        .O(\bottom_edge_loc_2_reg_283[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[4]_i_1 
       (.I0(bottom_edge[4]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[4]),
        .O(\bottom_edge_loc_2_reg_283[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[5]_i_1 
       (.I0(bottom_edge[5]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[5]),
        .O(\bottom_edge_loc_2_reg_283[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[6]_i_1 
       (.I0(bottom_edge[6]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[6]),
        .O(\bottom_edge_loc_2_reg_283[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[7]_i_1 
       (.I0(bottom_edge[7]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[7]),
        .O(\bottom_edge_loc_2_reg_283[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[8]_i_1 
       (.I0(bottom_edge[8]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[8]),
        .O(\bottom_edge_loc_2_reg_283[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \bottom_edge_loc_2_reg_283[9]_i_1 
       (.I0(bottom_edge[9]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_29_fu_797_p1[9]),
        .O(\bottom_edge_loc_2_reg_283[9]_i_1_n_0 ));
  FDRE \bottom_edge_loc_2_reg_283_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[0]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[0]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[10]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[10]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[11]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[11]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[12]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[12]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[13]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[13]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[14]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[14]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[15]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[15]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[16]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[16]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[17]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[17]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[18]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[18]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[19]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[19]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[1]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[1]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[20]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[20]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[21]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[21]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[22]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[22]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[23]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[23]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[24]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[24]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[25]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[25]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[26]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[26]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[27]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[27]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[28]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[28]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[29]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[29]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[2]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[2]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[30]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[30]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[31]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[31]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[3]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[3]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[4]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[4]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[5]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[5]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[6]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[6]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[7]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[7]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[8]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[8]),
        .R(1'b0));
  FDRE \bottom_edge_loc_2_reg_283_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bottom_edge_loc_2_reg_283[9]_i_1_n_0 ),
        .Q(bottom_edge_loc_2_reg_283[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    \bottom_edge_new_2_reg_271[31]_i_1 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(p_0_in3_in),
        .I2(bottom_edge_flag_2_reg_2610),
        .O(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bottom_edge_new_2_reg_271[31]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(or_cond_7_reg_1172),
        .O(bottom_edge_flag_2_reg_2610));
  FDRE \bottom_edge_new_2_reg_271_reg[0] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[0]),
        .Q(bottom_edge_new_2_reg_271[0]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[10] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[10]),
        .Q(bottom_edge_new_2_reg_271[10]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[11] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[11]),
        .Q(bottom_edge_new_2_reg_271[11]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[12] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[12]),
        .Q(bottom_edge_new_2_reg_271[12]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[13] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[13]),
        .Q(bottom_edge_new_2_reg_271[13]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[14] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[14]),
        .Q(bottom_edge_new_2_reg_271[14]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[15] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[15]),
        .Q(bottom_edge_new_2_reg_271[15]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[16] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[16]),
        .Q(bottom_edge_new_2_reg_271[16]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[17] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[17]),
        .Q(bottom_edge_new_2_reg_271[17]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[18] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[18]),
        .Q(bottom_edge_new_2_reg_271[18]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[19] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[19]),
        .Q(bottom_edge_new_2_reg_271[19]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[1] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[1]),
        .Q(bottom_edge_new_2_reg_271[1]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[20] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[20]),
        .Q(bottom_edge_new_2_reg_271[20]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[21] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[21]),
        .Q(bottom_edge_new_2_reg_271[21]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[22] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[22]),
        .Q(bottom_edge_new_2_reg_271[22]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[23] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[23]),
        .Q(bottom_edge_new_2_reg_271[23]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[24] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[24]),
        .Q(bottom_edge_new_2_reg_271[24]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[25] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[25]),
        .Q(bottom_edge_new_2_reg_271[25]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[26] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[26]),
        .Q(bottom_edge_new_2_reg_271[26]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[27] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[27]),
        .Q(bottom_edge_new_2_reg_271[27]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[28] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[28]),
        .Q(bottom_edge_new_2_reg_271[28]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[29] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[29]),
        .Q(bottom_edge_new_2_reg_271[29]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[2] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[2]),
        .Q(bottom_edge_new_2_reg_271[2]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[30] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[30]),
        .Q(bottom_edge_new_2_reg_271[30]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[31] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[31]),
        .Q(bottom_edge_new_2_reg_271[31]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[3] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[3]),
        .Q(bottom_edge_new_2_reg_271[3]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[4] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[4]),
        .Q(bottom_edge_new_2_reg_271[4]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[5] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[5]),
        .Q(bottom_edge_new_2_reg_271[5]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[6] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[6]),
        .Q(bottom_edge_new_2_reg_271[6]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[7] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[7]),
        .Q(bottom_edge_new_2_reg_271[7]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[8] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[8]),
        .Q(bottom_edge_new_2_reg_271[8]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_2_reg_271_reg[9] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_y_cord_load_reg_1111[9]),
        .Q(bottom_edge_new_2_reg_271[9]),
        .R(\bottom_edge_new_2_reg_271[31]_i_1_n_0 ));
  FDRE \bottom_edge_new_3_reg_414_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[0]),
        .Q(bottom_edge_new_3_reg_414[0]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[10]),
        .Q(bottom_edge_new_3_reg_414[10]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[11]),
        .Q(bottom_edge_new_3_reg_414[11]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[12]),
        .Q(bottom_edge_new_3_reg_414[12]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[13]),
        .Q(bottom_edge_new_3_reg_414[13]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[14]),
        .Q(bottom_edge_new_3_reg_414[14]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[15]),
        .Q(bottom_edge_new_3_reg_414[15]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[16]),
        .Q(bottom_edge_new_3_reg_414[16]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[17]),
        .Q(bottom_edge_new_3_reg_414[17]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[18]),
        .Q(bottom_edge_new_3_reg_414[18]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[19]),
        .Q(bottom_edge_new_3_reg_414[19]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[1]),
        .Q(bottom_edge_new_3_reg_414[1]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[20]),
        .Q(bottom_edge_new_3_reg_414[20]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[21]),
        .Q(bottom_edge_new_3_reg_414[21]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[22]),
        .Q(bottom_edge_new_3_reg_414[22]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[23]),
        .Q(bottom_edge_new_3_reg_414[23]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[24]),
        .Q(bottom_edge_new_3_reg_414[24]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[25]),
        .Q(bottom_edge_new_3_reg_414[25]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[26]),
        .Q(bottom_edge_new_3_reg_414[26]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[27]),
        .Q(bottom_edge_new_3_reg_414[27]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[28]),
        .Q(bottom_edge_new_3_reg_414[28]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[29]),
        .Q(bottom_edge_new_3_reg_414[29]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[2]),
        .Q(bottom_edge_new_3_reg_414[2]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[30]),
        .Q(bottom_edge_new_3_reg_414[30]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[31]),
        .Q(bottom_edge_new_3_reg_414[31]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[3]),
        .Q(bottom_edge_new_3_reg_414[3]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[4]),
        .Q(bottom_edge_new_3_reg_414[4]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[5]),
        .Q(bottom_edge_new_3_reg_414[5]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[6]),
        .Q(bottom_edge_new_3_reg_414[6]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[7]),
        .Q(bottom_edge_new_3_reg_414[7]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[8]),
        .Q(bottom_edge_new_3_reg_414[8]),
        .R(ap_NS_fsm14_out));
  FDRE \bottom_edge_new_3_reg_414_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(bottom_edge_new_2_reg_271[9]),
        .Q(bottom_edge_new_3_reg_414[9]),
        .R(ap_NS_fsm14_out));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[0] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[0]),
        .Q(bottom_edge[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[10] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[10]),
        .Q(bottom_edge[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[11] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[11]),
        .Q(bottom_edge[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[12] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[12]),
        .Q(bottom_edge[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[13] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[13]),
        .Q(bottom_edge[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[14] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[14]),
        .Q(bottom_edge[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[15] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[15]),
        .Q(bottom_edge[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[16] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[16]),
        .Q(bottom_edge[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[17] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[17]),
        .Q(bottom_edge[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[18] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[18]),
        .Q(bottom_edge[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[19] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[19]),
        .Q(bottom_edge[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[1] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[1]),
        .Q(bottom_edge[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[20] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[20]),
        .Q(bottom_edge[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[21] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[21]),
        .Q(bottom_edge[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[22] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[22]),
        .Q(bottom_edge[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[23] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[23]),
        .Q(bottom_edge[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[24] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[24]),
        .Q(bottom_edge[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[25] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[25]),
        .Q(bottom_edge[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[26] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[26]),
        .Q(bottom_edge[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[27] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[27]),
        .Q(bottom_edge[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[28] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[28]),
        .Q(bottom_edge[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[29] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[29]),
        .Q(bottom_edge[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[2] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[2]),
        .Q(bottom_edge[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[30] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[30]),
        .Q(bottom_edge[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[31] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[31]),
        .Q(bottom_edge[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[3] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[3]),
        .Q(bottom_edge[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[4] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[4]),
        .Q(bottom_edge[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[5] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[5]),
        .Q(bottom_edge[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[6] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[6]),
        .Q(bottom_edge[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[7] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[7]),
        .Q(bottom_edge[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[8] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[8]),
        .Q(bottom_edge[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bottom_edge_reg[9] 
       (.C(aclk),
        .CE(bottom_edge0),
        .D(ap_phi_mux_bottom_edge_new_3_phi_fu_418_p4[9]),
        .Q(bottom_edge[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h777F0008)) 
    \current_x_cord[0]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(p_0_in),
        .I3(p_current_x_cord_load_reg_1099[0]),
        .I4(current_x_cord_new_1_reg_333[0]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[10]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[10]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[10]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[11]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[11]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[11]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[12]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[12]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[12]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[13]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[13]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[13]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[13]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[14]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[14]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[14]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[15]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[15]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[15]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[16]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[16]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[16]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[16]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[17]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[17]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[17]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[17]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[18]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[18]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[18]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[19]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[19]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[19]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[19]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[1]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[1]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[1]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[20]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[20]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[20]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[20]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[21]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[21]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[21]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[21]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[22]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[22]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[22]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[23]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[23]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[23]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[24]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[24]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[24]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[24]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[25]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[25]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[25]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[26]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[26]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[26]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[26]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[27]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[27]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[27]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[27]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[28]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[28]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[28]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[28]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[29]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[29]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[29]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[29]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[2]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[2]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[2]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[30]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[30]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[30]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[30]));
  LUT4 #(
    .INIT(16'hF080)) 
    \current_x_cord[31]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(\ap_CS_fsm[0]_i_1_n_0 ),
        .I3(current_x_cord_flag_1_reg_323),
        .O(current_x_cord0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[31]_i_2 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[31]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[31]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[31]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[3]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[3]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[3]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[4]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[4]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[4]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[5]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[5]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[5]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[6]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[6]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[6]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[7]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[7]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[7]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[8]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[8]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[8]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h77F70080)) 
    \current_x_cord[9]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_27_fu_1002_p2[9]),
        .I3(p_0_in),
        .I4(current_x_cord_new_1_reg_333[9]),
        .O(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[9]));
  LUT3 #(
    .INIT(8'hF2)) 
    \current_x_cord_flag_1_reg_323[0]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(E),
        .O(upper_edge_flag_3_reg_384));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hF2D0)) 
    \current_x_cord_flag_1_reg_323[0]_i_2 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(E),
        .I3(reset),
        .O(\current_x_cord_flag_1_reg_323[0]_i_2_n_0 ));
  FDRE \current_x_cord_flag_1_reg_323_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\current_x_cord_flag_1_reg_323[0]_i_2_n_0 ),
        .Q(current_x_cord_flag_1_reg_323),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \current_x_cord_new_1_reg_333[31]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .O(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[0]),
        .Q(current_x_cord_new_1_reg_333[0]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[10]),
        .Q(current_x_cord_new_1_reg_333[10]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[11]),
        .Q(current_x_cord_new_1_reg_333[11]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[12]),
        .Q(current_x_cord_new_1_reg_333[12]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[13]),
        .Q(current_x_cord_new_1_reg_333[13]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[14]),
        .Q(current_x_cord_new_1_reg_333[14]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[15]),
        .Q(current_x_cord_new_1_reg_333[15]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[16]),
        .Q(current_x_cord_new_1_reg_333[16]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[17]),
        .Q(current_x_cord_new_1_reg_333[17]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[18]),
        .Q(current_x_cord_new_1_reg_333[18]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[19]),
        .Q(current_x_cord_new_1_reg_333[19]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[1]),
        .Q(current_x_cord_new_1_reg_333[1]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[20]),
        .Q(current_x_cord_new_1_reg_333[20]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[21]),
        .Q(current_x_cord_new_1_reg_333[21]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[22]),
        .Q(current_x_cord_new_1_reg_333[22]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[23]),
        .Q(current_x_cord_new_1_reg_333[23]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[24]),
        .Q(current_x_cord_new_1_reg_333[24]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[25]),
        .Q(current_x_cord_new_1_reg_333[25]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[26]),
        .Q(current_x_cord_new_1_reg_333[26]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[27]),
        .Q(current_x_cord_new_1_reg_333[27]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[28]),
        .Q(current_x_cord_new_1_reg_333[28]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[29]),
        .Q(current_x_cord_new_1_reg_333[29]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[2]),
        .Q(current_x_cord_new_1_reg_333[2]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[30]),
        .Q(current_x_cord_new_1_reg_333[30]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[31]),
        .Q(current_x_cord_new_1_reg_333[31]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[3]),
        .Q(current_x_cord_new_1_reg_333[3]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[4]),
        .Q(current_x_cord_new_1_reg_333[4]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[5]),
        .Q(current_x_cord_new_1_reg_333[5]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[6]),
        .Q(current_x_cord_new_1_reg_333[6]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[7]),
        .Q(current_x_cord_new_1_reg_333[7]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[8]),
        .Q(current_x_cord_new_1_reg_333[8]),
        .R(ap_NS_fsm14_out));
  FDRE \current_x_cord_new_1_reg_333_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(x_cord_out[9]),
        .Q(current_x_cord_new_1_reg_333[9]),
        .R(ap_NS_fsm14_out));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[0] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[0]),
        .Q(current_x_cord[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[10] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[10]),
        .Q(current_x_cord[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[11] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[11]),
        .Q(current_x_cord[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[12] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[12]),
        .Q(current_x_cord[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[13] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[13]),
        .Q(current_x_cord[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[14] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[14]),
        .Q(current_x_cord[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[15] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[15]),
        .Q(current_x_cord[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[16] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[16]),
        .Q(current_x_cord[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[17] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[17]),
        .Q(current_x_cord[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[18] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[18]),
        .Q(current_x_cord[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[19] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[19]),
        .Q(current_x_cord[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[1] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[1]),
        .Q(current_x_cord[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[20] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[20]),
        .Q(current_x_cord[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[21] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[21]),
        .Q(current_x_cord[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[22] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[22]),
        .Q(current_x_cord[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[23] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[23]),
        .Q(current_x_cord[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[24] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[24]),
        .Q(current_x_cord[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[25] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[25]),
        .Q(current_x_cord[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[26] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[26]),
        .Q(current_x_cord[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[27] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[27]),
        .Q(current_x_cord[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[28] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[28]),
        .Q(current_x_cord[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[29] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[29]),
        .Q(current_x_cord[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[2] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[2]),
        .Q(current_x_cord[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[30] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[30]),
        .Q(current_x_cord[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[31] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[31]),
        .Q(current_x_cord[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[3] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[3]),
        .Q(current_x_cord[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[4] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[4]),
        .Q(current_x_cord[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[5] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[5]),
        .Q(current_x_cord[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[6] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[6]),
        .Q(current_x_cord[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[7] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[7]),
        .Q(current_x_cord[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[8] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[8]),
        .Q(current_x_cord[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_x_cord_reg[9] 
       (.C(aclk),
        .CE(current_x_cord0),
        .D(ap_phi_mux_current_x_cord_new_1_phi_fu_337_p4[9]),
        .Q(current_x_cord[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h77777F7700000800)) 
    \current_y_cord[0]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_5_reg_1176),
        .I3(p_0_in),
        .I4(p_current_y_cord_load_reg_1111[0]),
        .I5(current_y_cord_new_2_reg_353[0]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[0]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[10]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[10]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[10]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[10]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[11]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[11]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[11]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[11]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[12]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[12]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[12]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[12]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[13]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[13]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[13]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[13]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[14]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[14]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[14]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[14]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[15]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[15]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[15]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[15]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[16]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[16]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[16]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[16]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[17]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[17]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[17]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[17]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[18]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[18]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[18]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[18]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[19]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[19]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[19]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[19]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[1]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[1]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[1]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[1]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[20]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[20]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[20]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[20]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[21]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[21]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[21]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[21]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[22]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[22]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[22]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[22]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[23]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[23]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[23]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[23]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[24]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[24]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[24]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[24]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[25]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[25]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[25]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[25]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[26]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[26]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[26]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[26]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[27]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[27]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[27]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[27]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[28]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[28]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[28]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[28]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[29]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[29]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[29]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[29]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[2]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[2]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[2]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[2]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[30]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[30]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[30]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[30]));
  LUT6 #(
    .INIT(64'hF080F080F0807000)) 
    \current_y_cord[31]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(\ap_CS_fsm[0]_i_1_n_0 ),
        .I3(current_y_cord_flag_2_reg_344),
        .I4(p_0_in),
        .I5(reset),
        .O(current_y_cord0));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[31]_i_2 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[31]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[31]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[31]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[3]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[3]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[3]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[3]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[4]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[4]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[4]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[4]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[5]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[5]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[5]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[5]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[6]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[6]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[6]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[6]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[7]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[7]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[7]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[7]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[8]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[8]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[8]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[8]));
  LUT6 #(
    .INIT(64'h77F7777700800000)) 
    \current_y_cord[9]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_26_fu_990_p2[9]),
        .I3(tmp_5_reg_1176),
        .I4(p_0_in),
        .I5(current_y_cord_new_2_reg_353[9]),
        .O(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[9]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hFFD0)) 
    \current_y_cord_flag_2_reg_344[0]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(p_0_in),
        .I3(reset),
        .O(\current_y_cord_flag_2_reg_344[0]_i_1_n_0 ));
  FDRE \current_y_cord_flag_2_reg_344_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\current_y_cord_flag_2_reg_344[0]_i_1_n_0 ),
        .Q(current_y_cord_flag_2_reg_344),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \current_y_cord_new_2_reg_353[0]_i_1 
       (.I0(tmp_5_reg_1176),
        .I1(p_0_in),
        .I2(p_current_y_cord_load_reg_1111[0]),
        .O(current_y_cord_new_1_fu_1013_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[10]_i_1 
       (.I0(tmp_26_fu_990_p2[10]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[11]_i_1 
       (.I0(tmp_26_fu_990_p2[11]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[11]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[12]_i_1 
       (.I0(tmp_26_fu_990_p2[12]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[13]_i_1 
       (.I0(tmp_26_fu_990_p2[13]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[13]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[14]_i_1 
       (.I0(tmp_26_fu_990_p2[14]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[14]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[15]_i_1 
       (.I0(tmp_26_fu_990_p2[15]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[16]_i_1 
       (.I0(tmp_26_fu_990_p2[16]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[16]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[17]_i_1 
       (.I0(tmp_26_fu_990_p2[17]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[17]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[18]_i_1 
       (.I0(tmp_26_fu_990_p2[18]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[18]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[19]_i_1 
       (.I0(tmp_26_fu_990_p2[19]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[19]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[1]_i_1 
       (.I0(tmp_26_fu_990_p2[1]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[20]_i_1 
       (.I0(tmp_26_fu_990_p2[20]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[20]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[21]_i_1 
       (.I0(tmp_26_fu_990_p2[21]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[21]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[22]_i_1 
       (.I0(tmp_26_fu_990_p2[22]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[22]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[23]_i_1 
       (.I0(tmp_26_fu_990_p2[23]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[23]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[24]_i_1 
       (.I0(tmp_26_fu_990_p2[24]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[24]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[25]_i_1 
       (.I0(tmp_26_fu_990_p2[25]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[25]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[26]_i_1 
       (.I0(tmp_26_fu_990_p2[26]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[26]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[27]_i_1 
       (.I0(tmp_26_fu_990_p2[27]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[27]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[28]_i_1 
       (.I0(tmp_26_fu_990_p2[28]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[28]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[29]_i_1 
       (.I0(tmp_26_fu_990_p2[29]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[29]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[2]_i_1 
       (.I0(tmp_26_fu_990_p2[2]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[30]_i_1 
       (.I0(tmp_26_fu_990_p2[30]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[30]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[31]_i_1 
       (.I0(tmp_26_fu_990_p2[31]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[31]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[3]_i_1 
       (.I0(tmp_26_fu_990_p2[3]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[4]_i_1 
       (.I0(tmp_26_fu_990_p2[4]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[5]_i_1 
       (.I0(tmp_26_fu_990_p2[5]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[6]_i_1 
       (.I0(tmp_26_fu_990_p2[6]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[7]_i_1 
       (.I0(tmp_26_fu_990_p2[7]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[8]_i_1 
       (.I0(tmp_26_fu_990_p2[8]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \current_y_cord_new_2_reg_353[9]_i_1 
       (.I0(tmp_26_fu_990_p2[9]),
        .I1(tmp_5_reg_1176),
        .I2(p_0_in),
        .O(current_y_cord_new_1_fu_1013_p3[9]));
  FDRE \current_y_cord_new_2_reg_353_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[0]),
        .Q(current_y_cord_new_2_reg_353[0]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[10]),
        .Q(current_y_cord_new_2_reg_353[10]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[11]),
        .Q(current_y_cord_new_2_reg_353[11]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[12]),
        .Q(current_y_cord_new_2_reg_353[12]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[13]),
        .Q(current_y_cord_new_2_reg_353[13]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[14]),
        .Q(current_y_cord_new_2_reg_353[14]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[15]),
        .Q(current_y_cord_new_2_reg_353[15]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[16]),
        .Q(current_y_cord_new_2_reg_353[16]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[17]),
        .Q(current_y_cord_new_2_reg_353[17]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[18]),
        .Q(current_y_cord_new_2_reg_353[18]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[19]),
        .Q(current_y_cord_new_2_reg_353[19]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[1]),
        .Q(current_y_cord_new_2_reg_353[1]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[20]),
        .Q(current_y_cord_new_2_reg_353[20]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[21]),
        .Q(current_y_cord_new_2_reg_353[21]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[22]),
        .Q(current_y_cord_new_2_reg_353[22]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[23]),
        .Q(current_y_cord_new_2_reg_353[23]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[24]),
        .Q(current_y_cord_new_2_reg_353[24]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[25]),
        .Q(current_y_cord_new_2_reg_353[25]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[26]),
        .Q(current_y_cord_new_2_reg_353[26]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[27]),
        .Q(current_y_cord_new_2_reg_353[27]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[28]),
        .Q(current_y_cord_new_2_reg_353[28]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[29]),
        .Q(current_y_cord_new_2_reg_353[29]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[2]),
        .Q(current_y_cord_new_2_reg_353[2]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[30]),
        .Q(current_y_cord_new_2_reg_353[30]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[31]),
        .Q(current_y_cord_new_2_reg_353[31]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[3]),
        .Q(current_y_cord_new_2_reg_353[3]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[4]),
        .Q(current_y_cord_new_2_reg_353[4]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[5]),
        .Q(current_y_cord_new_2_reg_353[5]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[6]),
        .Q(current_y_cord_new_2_reg_353[6]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[7]),
        .Q(current_y_cord_new_2_reg_353[7]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[8]),
        .Q(current_y_cord_new_2_reg_353[8]),
        .R(ap_NS_fsm14_out));
  FDRE \current_y_cord_new_2_reg_353_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(current_y_cord_new_1_fu_1013_p3[9]),
        .Q(current_y_cord_new_2_reg_353[9]),
        .R(ap_NS_fsm14_out));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[0] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[0]),
        .Q(current_y_cord[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[10] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[10]),
        .Q(current_y_cord[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[11] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[11]),
        .Q(current_y_cord[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[12] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[12]),
        .Q(current_y_cord[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[13] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[13]),
        .Q(current_y_cord[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[14] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[14]),
        .Q(current_y_cord[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[15] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[15]),
        .Q(current_y_cord[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[16] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[16]),
        .Q(current_y_cord[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[17] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[17]),
        .Q(current_y_cord[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[18] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[18]),
        .Q(current_y_cord[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[19] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[19]),
        .Q(current_y_cord[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[1] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[1]),
        .Q(current_y_cord[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[20] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[20]),
        .Q(current_y_cord[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[21] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[21]),
        .Q(current_y_cord[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[22] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[22]),
        .Q(current_y_cord[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[23] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[23]),
        .Q(current_y_cord[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[24] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[24]),
        .Q(current_y_cord[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[25] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[25]),
        .Q(current_y_cord[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[26] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[26]),
        .Q(current_y_cord[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[27] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[27]),
        .Q(current_y_cord[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[28] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[28]),
        .Q(current_y_cord[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[29] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[29]),
        .Q(current_y_cord[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[2] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[2]),
        .Q(current_y_cord[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[30] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[30]),
        .Q(current_y_cord[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[31] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[31]),
        .Q(current_y_cord[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[3] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[3]),
        .Q(current_y_cord[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[4] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[4]),
        .Q(current_y_cord[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[5] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[5]),
        .Q(current_y_cord[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[6] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[6]),
        .Q(current_y_cord[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[7] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[7]),
        .Q(current_y_cord[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[8] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[8]),
        .Q(current_y_cord[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_y_cord_reg[9] 
       (.C(aclk),
        .CE(current_y_cord0),
        .D(ap_phi_mux_current_y_cord_new_2_phi_fu_357_p4[9]),
        .Q(current_y_cord[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[0]_i_1 
       (.I0(\data_p2_reg[31] [0]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[1]),
        .I3(tmp_14_reg_1197[31]),
        .I4(p_neg_fu_927_p2[1]),
        .I5(led_exist_load_reg_1185),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[10]_i_1 
       (.I0(\data_p2_reg[31] [10]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[11]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[10]),
        .I5(led_exist_load_reg_1185),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[11]_i_1 
       (.I0(\data_p2_reg[31] [11]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[12]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[11]),
        .I5(led_exist_load_reg_1185),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[12]_i_1 
       (.I0(\data_p2_reg[31] [12]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[13]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[12]),
        .I5(led_exist_load_reg_1185),
        .O(D[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[12]_i_3 
       (.I0(p_neg_fu_927_p2[13]),
        .O(\data_p1[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[12]_i_4 
       (.I0(p_neg_fu_927_p2[12]),
        .O(\data_p1[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[12]_i_5 
       (.I0(p_neg_fu_927_p2[11]),
        .O(\data_p1[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[12]_i_6 
       (.I0(p_neg_fu_927_p2[10]),
        .O(\data_p1[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[13]_i_1 
       (.I0(\data_p2_reg[31] [13]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[14]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[13]),
        .I5(led_exist_load_reg_1185),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[14]_i_1 
       (.I0(\data_p2_reg[31] [14]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[15]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[14]),
        .I5(led_exist_load_reg_1185),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[15]_i_1 
       (.I0(\data_p2_reg[31] [15]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[16]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[15]),
        .I5(led_exist_load_reg_1185),
        .O(D[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[15]_i_3 
       (.I0(p_neg_fu_927_p2[16]),
        .O(\data_p1[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[15]_i_4 
       (.I0(p_neg_fu_927_p2[15]),
        .O(\data_p1[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[15]_i_5 
       (.I0(p_neg_fu_927_p2[14]),
        .O(\data_p1[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[16]_i_1 
       (.I0(\data_p2_reg[31] [16]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[1]),
        .I3(tmp_11_reg_1190[31]),
        .I4(p_neg1_fu_882_p2[1]),
        .I5(led_exist_load_reg_1185),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[17]_i_1 
       (.I0(\data_p2_reg[31] [17]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[2]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[1]),
        .I5(led_exist_load_reg_1185),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[18]_i_1 
       (.I0(\data_p2_reg[31] [18]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[3]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[2]),
        .I5(led_exist_load_reg_1185),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[19]_i_1 
       (.I0(\data_p2_reg[31] [19]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[4]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[3]),
        .I5(led_exist_load_reg_1185),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[1]_i_1 
       (.I0(\data_p2_reg[31] [1]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[2]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[1]),
        .I5(led_exist_load_reg_1185),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[20]_i_1 
       (.I0(\data_p2_reg[31] [20]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[5]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[4]),
        .I5(led_exist_load_reg_1185),
        .O(D[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[20]_i_3 
       (.I0(p_neg1_fu_882_p2[1]),
        .O(\data_p1[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[20]_i_4 
       (.I0(p_neg1_fu_882_p2[5]),
        .O(\data_p1[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[20]_i_5 
       (.I0(p_neg1_fu_882_p2[4]),
        .O(\data_p1[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[20]_i_6 
       (.I0(p_neg1_fu_882_p2[3]),
        .O(\data_p1[20]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[20]_i_7 
       (.I0(p_neg1_fu_882_p2[2]),
        .O(\data_p1[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[21]_i_1 
       (.I0(\data_p2_reg[31] [21]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[6]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[5]),
        .I5(led_exist_load_reg_1185),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[22]_i_1 
       (.I0(\data_p2_reg[31] [22]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[7]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[6]),
        .I5(led_exist_load_reg_1185),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[23]_i_1__0 
       (.I0(\data_p2_reg[31] [23]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[8]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[7]),
        .I5(led_exist_load_reg_1185),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[24]_i_1 
       (.I0(\data_p2_reg[31] [24]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[9]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[8]),
        .I5(led_exist_load_reg_1185),
        .O(D[24]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[24]_i_3 
       (.I0(p_neg1_fu_882_p2[9]),
        .O(\data_p1[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[24]_i_4 
       (.I0(p_neg1_fu_882_p2[8]),
        .O(\data_p1[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[24]_i_5 
       (.I0(p_neg1_fu_882_p2[7]),
        .O(\data_p1[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[24]_i_6 
       (.I0(p_neg1_fu_882_p2[6]),
        .O(\data_p1[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[25]_i_1 
       (.I0(\data_p2_reg[31] [25]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[10]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[9]),
        .I5(led_exist_load_reg_1185),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[26]_i_1 
       (.I0(\data_p2_reg[31] [26]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[11]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[10]),
        .I5(led_exist_load_reg_1185),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[27]_i_1 
       (.I0(\data_p2_reg[31] [27]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[12]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[11]),
        .I5(led_exist_load_reg_1185),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[28]_i_1 
       (.I0(\data_p2_reg[31] [28]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[13]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[12]),
        .I5(led_exist_load_reg_1185),
        .O(D[28]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[28]_i_3 
       (.I0(p_neg1_fu_882_p2[13]),
        .O(\data_p1[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[28]_i_4 
       (.I0(p_neg1_fu_882_p2[12]),
        .O(\data_p1[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[28]_i_5 
       (.I0(p_neg1_fu_882_p2[11]),
        .O(\data_p1[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[28]_i_6 
       (.I0(p_neg1_fu_882_p2[10]),
        .O(\data_p1[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[29]_i_1 
       (.I0(\data_p2_reg[31] [29]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[14]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[13]),
        .I5(led_exist_load_reg_1185),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[2]_i_1 
       (.I0(\data_p2_reg[31] [2]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[3]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[2]),
        .I5(led_exist_load_reg_1185),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[30]_i_1 
       (.I0(\data_p2_reg[31] [30]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[15]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[14]),
        .I5(led_exist_load_reg_1185),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[31]_i_1 
       (.I0(\data_p2_reg[31] [31]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_11_reg_1190[16]),
        .I3(tmp_11_reg_1190[31]),
        .I4(tmp_13_fu_897_p2[15]),
        .I5(led_exist_load_reg_1185),
        .O(D[31]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[31]_i_4 
       (.I0(p_neg1_fu_882_p2[16]),
        .O(\data_p1[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[31]_i_5 
       (.I0(p_neg1_fu_882_p2[15]),
        .O(\data_p1[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[31]_i_6 
       (.I0(p_neg1_fu_882_p2[14]),
        .O(\data_p1[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[3]_i_1 
       (.I0(\data_p2_reg[31] [3]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[4]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[3]),
        .I5(led_exist_load_reg_1185),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[4]_i_1 
       (.I0(\data_p2_reg[31] [4]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[5]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[4]),
        .I5(led_exist_load_reg_1185),
        .O(D[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[4]_i_3 
       (.I0(p_neg_fu_927_p2[1]),
        .O(\data_p1[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[4]_i_4 
       (.I0(p_neg_fu_927_p2[5]),
        .O(\data_p1[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[4]_i_5 
       (.I0(p_neg_fu_927_p2[4]),
        .O(\data_p1[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[4]_i_6 
       (.I0(p_neg_fu_927_p2[3]),
        .O(\data_p1[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[4]_i_7 
       (.I0(p_neg_fu_927_p2[2]),
        .O(\data_p1[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[5]_i_1 
       (.I0(\data_p2_reg[31] [5]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[6]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[5]),
        .I5(led_exist_load_reg_1185),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[6]_i_1 
       (.I0(\data_p2_reg[31] [6]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[7]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[6]),
        .I5(led_exist_load_reg_1185),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[7]_i_1 
       (.I0(\data_p2_reg[31] [7]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[8]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[7]),
        .I5(led_exist_load_reg_1185),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[8]_i_1 
       (.I0(\data_p2_reg[31] [8]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[9]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[8]),
        .I5(led_exist_load_reg_1185),
        .O(D[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[8]_i_3 
       (.I0(p_neg_fu_927_p2[9]),
        .O(\data_p1[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[8]_i_4 
       (.I0(p_neg_fu_927_p2[8]),
        .O(\data_p1[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[8]_i_5 
       (.I0(p_neg_fu_927_p2[7]),
        .O(\data_p1[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[8]_i_6 
       (.I0(p_neg_fu_927_p2[6]),
        .O(\data_p1[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \data_p1[9]_i_1 
       (.I0(\data_p2_reg[31] [9]),
        .I1(\FSM_sequential_state_reg[0] ),
        .I2(tmp_14_reg_1197[10]),
        .I3(tmp_14_reg_1197[31]),
        .I4(tmp_18_fu_942_p2[9]),
        .I5(led_exist_load_reg_1185),
        .O(D[9]));
  CARRY4 \data_p1_reg[12]_i_2 
       (.CI(\data_p1_reg[8]_i_2_n_0 ),
        .CO({\data_p1_reg[12]_i_2_n_0 ,\data_p1_reg[12]_i_2_n_1 ,\data_p1_reg[12]_i_2_n_2 ,\data_p1_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_18_fu_942_p2[12:9]),
        .S({\data_p1[12]_i_3_n_0 ,\data_p1[12]_i_4_n_0 ,\data_p1[12]_i_5_n_0 ,\data_p1[12]_i_6_n_0 }));
  CARRY4 \data_p1_reg[15]_i_2 
       (.CI(\data_p1_reg[12]_i_2_n_0 ),
        .CO({\NLW_data_p1_reg[15]_i_2_CO_UNCONNECTED [3:2],\data_p1_reg[15]_i_2_n_2 ,\data_p1_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_p1_reg[15]_i_2_O_UNCONNECTED [3],tmp_18_fu_942_p2[15:13]}),
        .S({1'b0,\data_p1[15]_i_3_n_0 ,\data_p1[15]_i_4_n_0 ,\data_p1[15]_i_5_n_0 }));
  CARRY4 \data_p1_reg[20]_i_2 
       (.CI(1'b0),
        .CO({\data_p1_reg[20]_i_2_n_0 ,\data_p1_reg[20]_i_2_n_1 ,\data_p1_reg[20]_i_2_n_2 ,\data_p1_reg[20]_i_2_n_3 }),
        .CYINIT(\data_p1[20]_i_3_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_13_fu_897_p2[4:1]),
        .S({\data_p1[20]_i_4_n_0 ,\data_p1[20]_i_5_n_0 ,\data_p1[20]_i_6_n_0 ,\data_p1[20]_i_7_n_0 }));
  CARRY4 \data_p1_reg[24]_i_2 
       (.CI(\data_p1_reg[20]_i_2_n_0 ),
        .CO({\data_p1_reg[24]_i_2_n_0 ,\data_p1_reg[24]_i_2_n_1 ,\data_p1_reg[24]_i_2_n_2 ,\data_p1_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_13_fu_897_p2[8:5]),
        .S({\data_p1[24]_i_3_n_0 ,\data_p1[24]_i_4_n_0 ,\data_p1[24]_i_5_n_0 ,\data_p1[24]_i_6_n_0 }));
  CARRY4 \data_p1_reg[28]_i_2 
       (.CI(\data_p1_reg[24]_i_2_n_0 ),
        .CO({\data_p1_reg[28]_i_2_n_0 ,\data_p1_reg[28]_i_2_n_1 ,\data_p1_reg[28]_i_2_n_2 ,\data_p1_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_13_fu_897_p2[12:9]),
        .S({\data_p1[28]_i_3_n_0 ,\data_p1[28]_i_4_n_0 ,\data_p1[28]_i_5_n_0 ,\data_p1[28]_i_6_n_0 }));
  CARRY4 \data_p1_reg[31]_i_3 
       (.CI(\data_p1_reg[28]_i_2_n_0 ),
        .CO({\NLW_data_p1_reg[31]_i_3_CO_UNCONNECTED [3:2],\data_p1_reg[31]_i_3_n_2 ,\data_p1_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_p1_reg[31]_i_3_O_UNCONNECTED [3],tmp_13_fu_897_p2[15:13]}),
        .S({1'b0,\data_p1[31]_i_4_n_0 ,\data_p1[31]_i_5_n_0 ,\data_p1[31]_i_6_n_0 }));
  CARRY4 \data_p1_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\data_p1_reg[4]_i_2_n_0 ,\data_p1_reg[4]_i_2_n_1 ,\data_p1_reg[4]_i_2_n_2 ,\data_p1_reg[4]_i_2_n_3 }),
        .CYINIT(\data_p1[4]_i_3_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_18_fu_942_p2[4:1]),
        .S({\data_p1[4]_i_4_n_0 ,\data_p1[4]_i_5_n_0 ,\data_p1[4]_i_6_n_0 ,\data_p1[4]_i_7_n_0 }));
  CARRY4 \data_p1_reg[8]_i_2 
       (.CI(\data_p1_reg[4]_i_2_n_0 ),
        .CO({\data_p1_reg[8]_i_2_n_0 ,\data_p1_reg[8]_i_2_n_1 ,\data_p1_reg[8]_i_2_n_2 ,\data_p1_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_18_fu_942_p2[8:5]),
        .S({\data_p1[8]_i_3_n_0 ,\data_p1[8]_i_4_n_0 ,\data_p1[8]_i_5_n_0 ,\data_p1[8]_i_6_n_0 }));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[0]_i_1 
       (.I0(tmp_14_reg_1197[1]),
        .I1(tmp_14_reg_1197[31]),
        .I2(p_neg_fu_927_p2[1]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [0]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[10]_i_1 
       (.I0(tmp_14_reg_1197[11]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[10]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [10]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[11]_i_1 
       (.I0(tmp_14_reg_1197[12]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[11]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [11]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[12]_i_1 
       (.I0(tmp_14_reg_1197[13]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[12]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [12]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[13]_i_1 
       (.I0(tmp_14_reg_1197[14]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[13]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [13]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[14]_i_1 
       (.I0(tmp_14_reg_1197[15]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[14]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [14]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[15]_i_1 
       (.I0(tmp_14_reg_1197[16]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[15]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [15]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[16]_i_1 
       (.I0(tmp_11_reg_1190[1]),
        .I1(tmp_11_reg_1190[31]),
        .I2(p_neg1_fu_882_p2[1]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [16]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[17]_i_1 
       (.I0(tmp_11_reg_1190[2]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[1]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [17]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[18]_i_1 
       (.I0(tmp_11_reg_1190[3]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[2]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [18]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[19]_i_1 
       (.I0(tmp_11_reg_1190[4]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[3]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [19]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[1]_i_1 
       (.I0(tmp_14_reg_1197[2]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[1]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [1]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[20]_i_1 
       (.I0(tmp_11_reg_1190[5]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[4]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [20]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[21]_i_1 
       (.I0(tmp_11_reg_1190[6]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[5]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [21]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[22]_i_1 
       (.I0(tmp_11_reg_1190[7]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[6]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [22]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[23]_i_1__0 
       (.I0(tmp_11_reg_1190[8]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[7]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [23]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[24]_i_1 
       (.I0(tmp_11_reg_1190[9]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[8]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [24]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[25]_i_1 
       (.I0(tmp_11_reg_1190[10]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[9]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [25]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[26]_i_1 
       (.I0(tmp_11_reg_1190[11]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[10]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [26]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[27]_i_1 
       (.I0(tmp_11_reg_1190[12]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[11]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [27]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[28]_i_1 
       (.I0(tmp_11_reg_1190[13]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[12]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [28]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[29]_i_1 
       (.I0(tmp_11_reg_1190[14]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[13]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [29]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[2]_i_1 
       (.I0(tmp_14_reg_1197[3]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[2]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [2]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[30]_i_1 
       (.I0(tmp_11_reg_1190[15]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[14]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [30]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[31]_i_1 
       (.I0(tmp_11_reg_1190[16]),
        .I1(tmp_11_reg_1190[31]),
        .I2(tmp_13_fu_897_p2[15]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [31]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[3]_i_1 
       (.I0(tmp_14_reg_1197[4]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[3]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [3]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[4]_i_1 
       (.I0(tmp_14_reg_1197[5]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[4]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [4]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[5]_i_1 
       (.I0(tmp_14_reg_1197[6]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[5]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [5]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[6]_i_1 
       (.I0(tmp_14_reg_1197[7]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[6]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [6]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[7]_i_1 
       (.I0(tmp_14_reg_1197[8]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[7]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [7]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[8]_i_1 
       (.I0(tmp_14_reg_1197[9]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[8]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [8]));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \data_p2[9]_i_1 
       (.I0(tmp_14_reg_1197[10]),
        .I1(tmp_14_reg_1197[31]),
        .I2(tmp_18_fu_942_p2[9]),
        .I3(led_exist_load_reg_1185),
        .O(\edgeout_val[63] [9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    edgeout_val_ap_vld_INST_0
       (.I0(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I1(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I2(tmp_5_reg_1176),
        .I3(tmp_10_reg_1181),
        .I4(sig_det_color_cord_cord_out_V_full_n),
        .O(edgeout_val_ap_vld));
  CARRY4 grp_fu_448_p2_carry
       (.CI(1'b0),
        .CO({grp_fu_448_p2_carry_n_0,grp_fu_448_p2_carry_n_1,grp_fu_448_p2_carry_n_2,grp_fu_448_p2_carry_n_3}),
        .CYINIT(width[0]),
        .DI(width[4:1]),
        .O(grp_fu_448_p2[4:1]),
        .S({grp_fu_448_p2_carry_i_1_n_0,grp_fu_448_p2_carry_i_2_n_0,grp_fu_448_p2_carry_i_3_n_0,grp_fu_448_p2_carry_i_4_n_0}));
  CARRY4 grp_fu_448_p2_carry__0
       (.CI(grp_fu_448_p2_carry_n_0),
        .CO({grp_fu_448_p2_carry__0_n_0,grp_fu_448_p2_carry__0_n_1,grp_fu_448_p2_carry__0_n_2,grp_fu_448_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(width[8:5]),
        .O(grp_fu_448_p2[8:5]),
        .S({grp_fu_448_p2_carry__0_i_1_n_0,grp_fu_448_p2_carry__0_i_2_n_0,grp_fu_448_p2_carry__0_i_3_n_0,grp_fu_448_p2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__0_i_1
       (.I0(width[8]),
        .O(grp_fu_448_p2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__0_i_2
       (.I0(width[7]),
        .O(grp_fu_448_p2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__0_i_3
       (.I0(width[6]),
        .O(grp_fu_448_p2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__0_i_4
       (.I0(width[5]),
        .O(grp_fu_448_p2_carry__0_i_4_n_0));
  CARRY4 grp_fu_448_p2_carry__1
       (.CI(grp_fu_448_p2_carry__0_n_0),
        .CO({grp_fu_448_p2_carry__1_n_0,grp_fu_448_p2_carry__1_n_1,grp_fu_448_p2_carry__1_n_2,grp_fu_448_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(width[12:9]),
        .O(grp_fu_448_p2[12:9]),
        .S({grp_fu_448_p2_carry__1_i_1_n_0,grp_fu_448_p2_carry__1_i_2_n_0,grp_fu_448_p2_carry__1_i_3_n_0,grp_fu_448_p2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__1_i_1
       (.I0(width[12]),
        .O(grp_fu_448_p2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__1_i_2
       (.I0(width[11]),
        .O(grp_fu_448_p2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__1_i_3
       (.I0(width[10]),
        .O(grp_fu_448_p2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__1_i_4
       (.I0(width[9]),
        .O(grp_fu_448_p2_carry__1_i_4_n_0));
  CARRY4 grp_fu_448_p2_carry__2
       (.CI(grp_fu_448_p2_carry__1_n_0),
        .CO({grp_fu_448_p2_carry__2_n_0,grp_fu_448_p2_carry__2_n_1,grp_fu_448_p2_carry__2_n_2,grp_fu_448_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(width[16:13]),
        .O(grp_fu_448_p2[16:13]),
        .S({grp_fu_448_p2_carry__2_i_1_n_0,grp_fu_448_p2_carry__2_i_2_n_0,grp_fu_448_p2_carry__2_i_3_n_0,grp_fu_448_p2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__2_i_1
       (.I0(width[16]),
        .O(grp_fu_448_p2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__2_i_2
       (.I0(width[15]),
        .O(grp_fu_448_p2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__2_i_3
       (.I0(width[14]),
        .O(grp_fu_448_p2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__2_i_4
       (.I0(width[13]),
        .O(grp_fu_448_p2_carry__2_i_4_n_0));
  CARRY4 grp_fu_448_p2_carry__3
       (.CI(grp_fu_448_p2_carry__2_n_0),
        .CO({grp_fu_448_p2_carry__3_n_0,grp_fu_448_p2_carry__3_n_1,grp_fu_448_p2_carry__3_n_2,grp_fu_448_p2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(width[20:17]),
        .O(grp_fu_448_p2[20:17]),
        .S({grp_fu_448_p2_carry__3_i_1_n_0,grp_fu_448_p2_carry__3_i_2_n_0,grp_fu_448_p2_carry__3_i_3_n_0,grp_fu_448_p2_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__3_i_1
       (.I0(width[20]),
        .O(grp_fu_448_p2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__3_i_2
       (.I0(width[19]),
        .O(grp_fu_448_p2_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__3_i_3
       (.I0(width[18]),
        .O(grp_fu_448_p2_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__3_i_4
       (.I0(width[17]),
        .O(grp_fu_448_p2_carry__3_i_4_n_0));
  CARRY4 grp_fu_448_p2_carry__4
       (.CI(grp_fu_448_p2_carry__3_n_0),
        .CO({grp_fu_448_p2_carry__4_n_0,grp_fu_448_p2_carry__4_n_1,grp_fu_448_p2_carry__4_n_2,grp_fu_448_p2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(width[24:21]),
        .O(grp_fu_448_p2[24:21]),
        .S({grp_fu_448_p2_carry__4_i_1_n_0,grp_fu_448_p2_carry__4_i_2_n_0,grp_fu_448_p2_carry__4_i_3_n_0,grp_fu_448_p2_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__4_i_1
       (.I0(width[24]),
        .O(grp_fu_448_p2_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__4_i_2
       (.I0(width[23]),
        .O(grp_fu_448_p2_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__4_i_3
       (.I0(width[22]),
        .O(grp_fu_448_p2_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__4_i_4
       (.I0(width[21]),
        .O(grp_fu_448_p2_carry__4_i_4_n_0));
  CARRY4 grp_fu_448_p2_carry__5
       (.CI(grp_fu_448_p2_carry__4_n_0),
        .CO({grp_fu_448_p2_carry__5_n_0,grp_fu_448_p2_carry__5_n_1,grp_fu_448_p2_carry__5_n_2,grp_fu_448_p2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(width[28:25]),
        .O(grp_fu_448_p2[28:25]),
        .S({grp_fu_448_p2_carry__5_i_1_n_0,grp_fu_448_p2_carry__5_i_2_n_0,grp_fu_448_p2_carry__5_i_3_n_0,grp_fu_448_p2_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__5_i_1
       (.I0(width[28]),
        .O(grp_fu_448_p2_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__5_i_2
       (.I0(width[27]),
        .O(grp_fu_448_p2_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__5_i_3
       (.I0(width[26]),
        .O(grp_fu_448_p2_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__5_i_4
       (.I0(width[25]),
        .O(grp_fu_448_p2_carry__5_i_4_n_0));
  CARRY4 grp_fu_448_p2_carry__6
       (.CI(grp_fu_448_p2_carry__5_n_0),
        .CO({NLW_grp_fu_448_p2_carry__6_CO_UNCONNECTED[3:2],grp_fu_448_p2_carry__6_n_2,grp_fu_448_p2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,width[30:29]}),
        .O({NLW_grp_fu_448_p2_carry__6_O_UNCONNECTED[3],grp_fu_448_p2[31:29]}),
        .S({1'b0,grp_fu_448_p2_carry__6_i_1_n_0,grp_fu_448_p2_carry__6_i_2_n_0,grp_fu_448_p2_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__6_i_1
       (.I0(width[31]),
        .O(grp_fu_448_p2_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__6_i_2
       (.I0(width[30]),
        .O(grp_fu_448_p2_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry__6_i_3
       (.I0(width[29]),
        .O(grp_fu_448_p2_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry_i_1
       (.I0(width[4]),
        .O(grp_fu_448_p2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry_i_2
       (.I0(width[3]),
        .O(grp_fu_448_p2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry_i_3
       (.I0(width[2]),
        .O(grp_fu_448_p2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    grp_fu_448_p2_carry_i_4
       (.I0(width[1]),
        .O(grp_fu_448_p2_carry_i_4_n_0));
  CARRY4 grp_fu_453_p2_carry
       (.CI(1'b0),
        .CO({grp_fu_453_p2_carry_n_0,grp_fu_453_p2_carry_n_1,grp_fu_453_p2_carry_n_2,grp_fu_453_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_grp_fu_453_p2_carry_O_UNCONNECTED[3:0]),
        .S({grp_fu_453_p2_carry_i_1_n_0,grp_fu_453_p2_carry_i_2_n_0,grp_fu_453_p2_carry_i_3_n_0,grp_fu_453_p2_carry_i_4_n_0}));
  CARRY4 grp_fu_453_p2_carry__0
       (.CI(grp_fu_453_p2_carry_n_0),
        .CO({grp_fu_453_p2_carry__0_n_0,grp_fu_453_p2_carry__0_n_1,grp_fu_453_p2_carry__0_n_2,grp_fu_453_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_grp_fu_453_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({grp_fu_453_p2_carry__0_i_1_n_0,grp_fu_453_p2_carry__0_i_2_n_0,grp_fu_453_p2_carry__0_i_3_n_0,grp_fu_453_p2_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    grp_fu_453_p2_carry__0_i_1
       (.I0(grp_fu_448_p2[21]),
        .I1(p_current_x_cord_load_reg_1099[21]),
        .I2(grp_fu_448_p2[22]),
        .I3(p_current_x_cord_load_reg_1099[22]),
        .I4(p_current_x_cord_load_reg_1099[23]),
        .I5(grp_fu_448_p2[23]),
        .O(grp_fu_453_p2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    grp_fu_453_p2_carry__0_i_2
       (.I0(grp_fu_448_p2[18]),
        .I1(p_current_x_cord_load_reg_1099[18]),
        .I2(grp_fu_448_p2[20]),
        .I3(p_current_x_cord_load_reg_1099[20]),
        .I4(p_current_x_cord_load_reg_1099[19]),
        .I5(grp_fu_448_p2[19]),
        .O(grp_fu_453_p2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    grp_fu_453_p2_carry__0_i_3
       (.I0(grp_fu_448_p2[15]),
        .I1(p_current_x_cord_load_reg_1099[15]),
        .I2(grp_fu_448_p2[17]),
        .I3(p_current_x_cord_load_reg_1099[17]),
        .I4(p_current_x_cord_load_reg_1099[16]),
        .I5(grp_fu_448_p2[16]),
        .O(grp_fu_453_p2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    grp_fu_453_p2_carry__0_i_4
       (.I0(grp_fu_448_p2[13]),
        .I1(p_current_x_cord_load_reg_1099[13]),
        .I2(grp_fu_448_p2[14]),
        .I3(p_current_x_cord_load_reg_1099[14]),
        .I4(p_current_x_cord_load_reg_1099[12]),
        .I5(grp_fu_448_p2[12]),
        .O(grp_fu_453_p2_carry__0_i_4_n_0));
  CARRY4 grp_fu_453_p2_carry__1
       (.CI(grp_fu_453_p2_carry__0_n_0),
        .CO({NLW_grp_fu_453_p2_carry__1_CO_UNCONNECTED[3],p_0_in,grp_fu_453_p2_carry__1_n_2,grp_fu_453_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_grp_fu_453_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,grp_fu_453_p2_carry__1_i_1_n_0,grp_fu_453_p2_carry__1_i_2_n_0,grp_fu_453_p2_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    grp_fu_453_p2_carry__1_i_1
       (.I0(p_current_x_cord_load_reg_1099[31]),
        .I1(grp_fu_448_p2[31]),
        .I2(p_current_x_cord_load_reg_1099[30]),
        .I3(grp_fu_448_p2[30]),
        .O(grp_fu_453_p2_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    grp_fu_453_p2_carry__1_i_2
       (.I0(grp_fu_448_p2[27]),
        .I1(p_current_x_cord_load_reg_1099[27]),
        .I2(grp_fu_448_p2[29]),
        .I3(p_current_x_cord_load_reg_1099[29]),
        .I4(p_current_x_cord_load_reg_1099[28]),
        .I5(grp_fu_448_p2[28]),
        .O(grp_fu_453_p2_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    grp_fu_453_p2_carry__1_i_3
       (.I0(grp_fu_448_p2[24]),
        .I1(p_current_x_cord_load_reg_1099[24]),
        .I2(grp_fu_448_p2[25]),
        .I3(p_current_x_cord_load_reg_1099[25]),
        .I4(p_current_x_cord_load_reg_1099[26]),
        .I5(grp_fu_448_p2[26]),
        .O(grp_fu_453_p2_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    grp_fu_453_p2_carry_i_1
       (.I0(grp_fu_448_p2[10]),
        .I1(p_current_x_cord_load_reg_1099[10]),
        .I2(grp_fu_448_p2[11]),
        .I3(p_current_x_cord_load_reg_1099[11]),
        .I4(p_current_x_cord_load_reg_1099[9]),
        .I5(grp_fu_448_p2[9]),
        .O(grp_fu_453_p2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    grp_fu_453_p2_carry_i_2
       (.I0(grp_fu_448_p2[7]),
        .I1(p_current_x_cord_load_reg_1099[7]),
        .I2(grp_fu_448_p2[8]),
        .I3(p_current_x_cord_load_reg_1099[8]),
        .I4(p_current_x_cord_load_reg_1099[6]),
        .I5(grp_fu_448_p2[6]),
        .O(grp_fu_453_p2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    grp_fu_453_p2_carry_i_3
       (.I0(grp_fu_448_p2[4]),
        .I1(p_current_x_cord_load_reg_1099[4]),
        .I2(grp_fu_448_p2[5]),
        .I3(p_current_x_cord_load_reg_1099[5]),
        .I4(p_current_x_cord_load_reg_1099[3]),
        .I5(grp_fu_448_p2[3]),
        .O(grp_fu_453_p2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    grp_fu_453_p2_carry_i_4
       (.I0(p_current_x_cord_load_reg_1099[0]),
        .I1(width[0]),
        .I2(grp_fu_448_p2[1]),
        .I3(p_current_x_cord_load_reg_1099[1]),
        .I4(grp_fu_448_p2[2]),
        .I5(p_current_x_cord_load_reg_1099[2]),
        .O(grp_fu_453_p2_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[0]_i_1 
       (.I0(height[0]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[0]),
        .O(height_upper_edge_lo_fu_518_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[10]_i_1 
       (.I0(height[10]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[10]),
        .O(height_upper_edge_lo_fu_518_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[11]_i_1 
       (.I0(height[11]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[11]),
        .O(height_upper_edge_lo_fu_518_p3[11]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[12]_i_1 
       (.I0(height[12]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[12]),
        .O(height_upper_edge_lo_fu_518_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[13]_i_1 
       (.I0(height[13]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[13]),
        .O(height_upper_edge_lo_fu_518_p3[13]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[14]_i_1 
       (.I0(height[14]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[14]),
        .O(height_upper_edge_lo_fu_518_p3[14]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[15]_i_1 
       (.I0(height[15]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[15]),
        .O(height_upper_edge_lo_fu_518_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[16]_i_1 
       (.I0(height[16]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[16]),
        .O(height_upper_edge_lo_fu_518_p3[16]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[17]_i_1 
       (.I0(height[17]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[17]),
        .O(height_upper_edge_lo_fu_518_p3[17]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[18]_i_1 
       (.I0(height[18]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[18]),
        .O(height_upper_edge_lo_fu_518_p3[18]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[19]_i_1 
       (.I0(height[19]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[19]),
        .O(height_upper_edge_lo_fu_518_p3[19]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[1]_i_1 
       (.I0(height[1]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[1]),
        .O(height_upper_edge_lo_fu_518_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[20]_i_1 
       (.I0(height[20]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[20]),
        .O(height_upper_edge_lo_fu_518_p3[20]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[21]_i_1 
       (.I0(height[21]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[21]),
        .O(height_upper_edge_lo_fu_518_p3[21]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[22]_i_1 
       (.I0(height[22]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[22]),
        .O(height_upper_edge_lo_fu_518_p3[22]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[23]_i_1 
       (.I0(height[23]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[23]),
        .O(height_upper_edge_lo_fu_518_p3[23]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[24]_i_1 
       (.I0(height[24]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[24]),
        .O(height_upper_edge_lo_fu_518_p3[24]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[25]_i_1 
       (.I0(height[25]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[25]),
        .O(height_upper_edge_lo_fu_518_p3[25]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[26]_i_1 
       (.I0(height[26]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[26]),
        .O(height_upper_edge_lo_fu_518_p3[26]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[27]_i_1 
       (.I0(height[27]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[27]),
        .O(height_upper_edge_lo_fu_518_p3[27]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[28]_i_1 
       (.I0(height[28]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[28]),
        .O(height_upper_edge_lo_fu_518_p3[28]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[29]_i_1 
       (.I0(height[29]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[29]),
        .O(height_upper_edge_lo_fu_518_p3[29]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[2]_i_1 
       (.I0(height[2]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[2]),
        .O(height_upper_edge_lo_fu_518_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[30]_i_1 
       (.I0(height[30]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[30]),
        .O(height_upper_edge_lo_fu_518_p3[30]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[31]_i_1 
       (.I0(height[31]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[31]),
        .O(height_upper_edge_lo_fu_518_p3[31]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[3]_i_1 
       (.I0(height[3]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[3]),
        .O(height_upper_edge_lo_fu_518_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[4]_i_1 
       (.I0(height[4]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[4]),
        .O(height_upper_edge_lo_fu_518_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[5]_i_1 
       (.I0(height[5]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[5]),
        .O(height_upper_edge_lo_fu_518_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[6]_i_1 
       (.I0(height[6]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[6]),
        .O(height_upper_edge_lo_fu_518_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[7]_i_1 
       (.I0(height[7]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[7]),
        .O(height_upper_edge_lo_fu_518_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[8]_i_1 
       (.I0(height[8]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[8]),
        .O(height_upper_edge_lo_fu_518_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \height_upper_edge_lo_reg_1147[9]_i_1 
       (.I0(height[9]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[9]),
        .O(height_upper_edge_lo_fu_518_p3[9]));
  FDRE \height_upper_edge_lo_reg_1147_reg[0] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[0]),
        .Q(height_upper_edge_lo_reg_1147[0]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[10] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[10]),
        .Q(height_upper_edge_lo_reg_1147[10]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[11] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[11]),
        .Q(height_upper_edge_lo_reg_1147[11]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[12] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[12]),
        .Q(height_upper_edge_lo_reg_1147[12]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[13] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[13]),
        .Q(height_upper_edge_lo_reg_1147[13]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[14] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[14]),
        .Q(height_upper_edge_lo_reg_1147[14]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[15] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[15]),
        .Q(height_upper_edge_lo_reg_1147[15]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[16] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[16]),
        .Q(height_upper_edge_lo_reg_1147[16]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[17] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[17]),
        .Q(height_upper_edge_lo_reg_1147[17]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[18] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[18]),
        .Q(height_upper_edge_lo_reg_1147[18]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[19] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[19]),
        .Q(height_upper_edge_lo_reg_1147[19]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[1] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[1]),
        .Q(height_upper_edge_lo_reg_1147[1]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[20] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[20]),
        .Q(height_upper_edge_lo_reg_1147[20]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[21] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[21]),
        .Q(height_upper_edge_lo_reg_1147[21]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[22] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[22]),
        .Q(height_upper_edge_lo_reg_1147[22]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[23] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[23]),
        .Q(height_upper_edge_lo_reg_1147[23]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[24] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[24]),
        .Q(height_upper_edge_lo_reg_1147[24]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[25] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[25]),
        .Q(height_upper_edge_lo_reg_1147[25]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[26] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[26]),
        .Q(height_upper_edge_lo_reg_1147[26]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[27] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[27]),
        .Q(height_upper_edge_lo_reg_1147[27]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[28] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[28]),
        .Q(height_upper_edge_lo_reg_1147[28]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[29] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[29]),
        .Q(height_upper_edge_lo_reg_1147[29]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[2] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[2]),
        .Q(height_upper_edge_lo_reg_1147[2]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[30] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[30]),
        .Q(height_upper_edge_lo_reg_1147[30]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[31] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[31]),
        .Q(height_upper_edge_lo_reg_1147[31]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[3] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[3]),
        .Q(height_upper_edge_lo_reg_1147[3]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[4] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[4]),
        .Q(height_upper_edge_lo_reg_1147[4]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[5] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[5]),
        .Q(height_upper_edge_lo_reg_1147[5]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[6] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[6]),
        .Q(height_upper_edge_lo_reg_1147[6]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[7] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[7]),
        .Q(height_upper_edge_lo_reg_1147[7]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[8] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[8]),
        .Q(height_upper_edge_lo_reg_1147[8]),
        .R(1'b0));
  FDRE \height_upper_edge_lo_reg_1147_reg[9] 
       (.C(aclk),
        .CE(Q),
        .D(height_upper_edge_lo_fu_518_p3[9]),
        .Q(height_upper_edge_lo_reg_1147[9]),
        .R(1'b0));
  FDRE \led_exist_load_reg_1185_reg[0] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(led_exist),
        .Q(led_exist_load_reg_1185),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_exist_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\led_exist_reg[0]_5 ),
        .Q(led_exist),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[0]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[0]),
        .I3(left_edge_new_3_reg_374[0]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[0]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[10]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[10]),
        .I3(left_edge_new_3_reg_374[10]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[10]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[11]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[11]),
        .I3(left_edge_new_3_reg_374[11]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[11]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[12]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[12]),
        .I3(left_edge_new_3_reg_374[12]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[12]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[13]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[13]),
        .I3(left_edge_new_3_reg_374[13]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[13]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[14]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[14]),
        .I3(left_edge_new_3_reg_374[14]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[14]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[15]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[15]),
        .I3(left_edge_new_3_reg_374[15]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[15]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[16]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[16]),
        .I3(left_edge_new_3_reg_374[16]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[16]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[17]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[17]),
        .I3(left_edge_new_3_reg_374[17]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[17]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[18]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[18]),
        .I3(left_edge_new_3_reg_374[18]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[18]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[19]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[19]),
        .I3(left_edge_new_3_reg_374[19]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[19]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[1]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[1]),
        .I3(left_edge_new_3_reg_374[1]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[1]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[20]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[20]),
        .I3(left_edge_new_3_reg_374[20]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[20]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[21]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[21]),
        .I3(left_edge_new_3_reg_374[21]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[21]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[22]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[22]),
        .I3(left_edge_new_3_reg_374[22]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[22]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[23]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[23]),
        .I3(left_edge_new_3_reg_374[23]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[23]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[24]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[24]),
        .I3(left_edge_new_3_reg_374[24]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[24]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[25]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[25]),
        .I3(left_edge_new_3_reg_374[25]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[25]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[26]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[26]),
        .I3(left_edge_new_3_reg_374[26]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[26]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[27]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[27]),
        .I3(left_edge_new_3_reg_374[27]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[27]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[28]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[28]),
        .I3(left_edge_new_3_reg_374[28]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[28]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[29]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[29]),
        .I3(left_edge_new_3_reg_374[29]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[29]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[2]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[2]),
        .I3(left_edge_new_3_reg_374[2]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[2]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[30]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[30]),
        .I3(left_edge_new_3_reg_374[30]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[30]));
  LUT5 #(
    .INIT(32'hF0807000)) 
    \left_edge[31]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\ap_CS_fsm[0]_i_1_n_0 ),
        .I3(left_edge_flag_3_reg_364),
        .I4(left_edge_flag_2_reg_203),
        .O(left_edge0));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[31]_i_2 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[31]),
        .I3(left_edge_new_3_reg_374[31]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[31]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[3]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[3]),
        .I3(left_edge_new_3_reg_374[3]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[3]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[4]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[4]),
        .I3(left_edge_new_3_reg_374[4]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[4]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[5]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[5]),
        .I3(left_edge_new_3_reg_374[5]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[5]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[6]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[6]),
        .I3(left_edge_new_3_reg_374[6]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[6]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[7]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[7]),
        .I3(left_edge_new_3_reg_374[7]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[7]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[8]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[8]),
        .I3(left_edge_new_3_reg_374[8]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[8]));
  LUT4 #(
    .INIT(16'hF780)) 
    \left_edge[9]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(left_edge_new_2_reg_213[9]),
        .I3(left_edge_new_3_reg_374[9]),
        .O(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[9]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    \left_edge_flag_2_reg_203[0]_i_1 
       (.I0(tmp_4_fu_488_p2),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_4_reg_1124),
        .I3(p_0_in1_in),
        .O(\left_edge_flag_2_reg_203[0]_i_1_n_0 ));
  FDRE \left_edge_flag_2_reg_203_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_flag_2_reg_203[0]_i_1_n_0 ),
        .Q(left_edge_flag_2_reg_203),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_flag_3_reg_364[0]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(tmp_4_fu_488_p2),
        .I3(left_edge_flag_2_reg_203),
        .O(\left_edge_flag_3_reg_364[0]_i_1_n_0 ));
  FDRE \left_edge_flag_3_reg_364_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_flag_3_reg_364[0]_i_1_n_0 ),
        .Q(left_edge_flag_3_reg_364),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[0]_i_1 
       (.I0(width[0]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[0]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[0]),
        .O(\left_edge_loc_2_reg_223[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[0]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[0]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[0]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[0]),
        .O(tmp_33_fu_831_p1__0[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[10]_i_1 
       (.I0(width[10]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[10]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[10]),
        .O(\left_edge_loc_2_reg_223[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[10]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[10]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[10]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[10]),
        .O(tmp_33_fu_831_p1__0[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[11]_i_1 
       (.I0(width[11]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[11]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[11]),
        .O(\left_edge_loc_2_reg_223[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[11]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[11]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[11]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[11]),
        .O(tmp_33_fu_831_p1__0[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[12]_i_1 
       (.I0(width[12]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[12]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[12]),
        .O(\left_edge_loc_2_reg_223[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[12]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[12]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[12]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[12]),
        .O(tmp_33_fu_831_p1__0[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[13]_i_1 
       (.I0(width[13]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[13]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[13]),
        .O(\left_edge_loc_2_reg_223[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[13]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[13]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[13]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[13]),
        .O(tmp_33_fu_831_p1__0[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[14]_i_1 
       (.I0(width[14]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[14]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[14]),
        .O(\left_edge_loc_2_reg_223[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[14]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[14]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[14]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[14]),
        .O(tmp_33_fu_831_p1__0[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[15]_i_1 
       (.I0(width[15]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[15]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[15]),
        .O(\left_edge_loc_2_reg_223[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[15]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[15]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[15]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[15]),
        .O(tmp_33_fu_831_p1__0[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[16]_i_1 
       (.I0(width[16]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[16]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[16]),
        .O(\left_edge_loc_2_reg_223[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[16]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[16]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[16]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[16]),
        .O(tmp_33_fu_831_p1[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[17]_i_1 
       (.I0(width[17]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[17]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[17]),
        .O(\left_edge_loc_2_reg_223[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[17]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[17]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[17]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[17]),
        .O(tmp_33_fu_831_p1[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[18]_i_1 
       (.I0(width[18]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[18]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[18]),
        .O(\left_edge_loc_2_reg_223[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[18]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[18]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[18]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[18]),
        .O(tmp_33_fu_831_p1[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[19]_i_1 
       (.I0(width[19]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[19]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[19]),
        .O(\left_edge_loc_2_reg_223[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[19]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[19]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[19]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[19]),
        .O(tmp_33_fu_831_p1[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[1]_i_1 
       (.I0(width[1]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[1]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[1]),
        .O(\left_edge_loc_2_reg_223[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[1]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[1]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[1]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[1]),
        .O(tmp_33_fu_831_p1__0[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[20]_i_1 
       (.I0(width[20]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[20]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[20]),
        .O(\left_edge_loc_2_reg_223[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[20]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[20]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[20]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[20]),
        .O(tmp_33_fu_831_p1[20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[21]_i_1 
       (.I0(width[21]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[21]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[21]),
        .O(\left_edge_loc_2_reg_223[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[21]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[21]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[21]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[21]),
        .O(tmp_33_fu_831_p1[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[22]_i_1 
       (.I0(width[22]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[22]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[22]),
        .O(\left_edge_loc_2_reg_223[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[22]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[22]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[22]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[22]),
        .O(tmp_33_fu_831_p1[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[23]_i_1 
       (.I0(width[23]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[23]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[23]),
        .O(\left_edge_loc_2_reg_223[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[23]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[23]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[23]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[23]),
        .O(tmp_33_fu_831_p1[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[24]_i_1 
       (.I0(width[24]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[24]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[24]),
        .O(\left_edge_loc_2_reg_223[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[24]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[24]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[24]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[24]),
        .O(tmp_33_fu_831_p1[24]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[25]_i_1 
       (.I0(width[25]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[25]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[25]),
        .O(\left_edge_loc_2_reg_223[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[25]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[25]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[25]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[25]),
        .O(tmp_33_fu_831_p1[25]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[26]_i_1 
       (.I0(width[26]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[26]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[26]),
        .O(\left_edge_loc_2_reg_223[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[26]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[26]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[26]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[26]),
        .O(tmp_33_fu_831_p1[26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[27]_i_1 
       (.I0(width[27]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[27]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[27]),
        .O(\left_edge_loc_2_reg_223[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[27]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[27]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[27]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[27]),
        .O(tmp_33_fu_831_p1[27]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[28]_i_1 
       (.I0(width[28]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[28]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[28]),
        .O(\left_edge_loc_2_reg_223[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[28]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[28]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[28]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[28]),
        .O(tmp_33_fu_831_p1[28]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[29]_i_1 
       (.I0(width[29]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[29]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[29]),
        .O(\left_edge_loc_2_reg_223[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[29]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[29]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[29]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[29]),
        .O(tmp_33_fu_831_p1[29]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[2]_i_1 
       (.I0(width[2]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[2]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[2]),
        .O(\left_edge_loc_2_reg_223[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[2]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[2]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[2]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[2]),
        .O(tmp_33_fu_831_p1__0[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[30]_i_1 
       (.I0(width[30]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[30]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1[30]),
        .O(\left_edge_loc_2_reg_223[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[30]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[30]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[30]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[30]),
        .O(tmp_33_fu_831_p1[30]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[31]_i_1 
       (.I0(width[31]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[31]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(\left_edge_loc_2_reg_223[31]_i_2_n_0 ),
        .O(\left_edge_loc_2_reg_223[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[31]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[31]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[31]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[31]),
        .O(\left_edge_loc_2_reg_223[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[3]_i_1 
       (.I0(width[3]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[3]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[3]),
        .O(\left_edge_loc_2_reg_223[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[3]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[3]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[3]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[3]),
        .O(tmp_33_fu_831_p1__0[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[4]_i_1 
       (.I0(width[4]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[4]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[4]),
        .O(\left_edge_loc_2_reg_223[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[4]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[4]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[4]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[4]),
        .O(tmp_33_fu_831_p1__0[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[5]_i_1 
       (.I0(width[5]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[5]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[5]),
        .O(\left_edge_loc_2_reg_223[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[5]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[5]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[5]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[5]),
        .O(tmp_33_fu_831_p1__0[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[6]_i_1 
       (.I0(width[6]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[6]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[6]),
        .O(\left_edge_loc_2_reg_223[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[6]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[6]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[6]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[6]),
        .O(tmp_33_fu_831_p1__0[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[7]_i_1 
       (.I0(width[7]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[7]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[7]),
        .O(\left_edge_loc_2_reg_223[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[7]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[7]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[7]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[7]),
        .O(tmp_33_fu_831_p1__0[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[8]_i_1 
       (.I0(width[8]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[8]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[8]),
        .O(\left_edge_loc_2_reg_223[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[8]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[8]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[8]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[8]),
        .O(tmp_33_fu_831_p1__0[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[9]_i_1 
       (.I0(width[9]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[9]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_33_fu_831_p1__0[9]),
        .O(\left_edge_loc_2_reg_223[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \left_edge_loc_2_reg_223[9]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[9]),
        .I1(p_0_in1_in),
        .I2(width_left_edge_load_reg_1140[9]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(left_edge_loc_2_reg_223[9]),
        .O(tmp_33_fu_831_p1__0[9]));
  FDRE \left_edge_loc_2_reg_223_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[0]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[0]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[10]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[10]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[11]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[11]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[12]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[12]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[13]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[13]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[14]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[14]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[15]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[15]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[16]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[16]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[17]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[17]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[18]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[18]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[19]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[19]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[1]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[1]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[20]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[20]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[21]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[21]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[22]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[22]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[23]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[23]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[24]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[24]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[25]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[25]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[26]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[26]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[27]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[27]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[28]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[28]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[29]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[29]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[2]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[2]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[30]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[30]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[31]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[31]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[3]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[3]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[4]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[4]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[5]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[5]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[6]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[6]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[7]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[7]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[8]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[8]),
        .R(1'b0));
  FDRE \left_edge_loc_2_reg_223_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\left_edge_loc_2_reg_223[9]_i_1_n_0 ),
        .Q(left_edge_loc_2_reg_223[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[0]_i_1 
       (.I0(width[0]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[0]),
        .O(\left_edge_new_2_reg_213[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[10]_i_1 
       (.I0(width[10]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[10]),
        .O(\left_edge_new_2_reg_213[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[11]_i_1 
       (.I0(width[11]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[11]),
        .O(\left_edge_new_2_reg_213[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[12]_i_1 
       (.I0(width[12]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[12]),
        .O(\left_edge_new_2_reg_213[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[13]_i_1 
       (.I0(width[13]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[13]),
        .O(\left_edge_new_2_reg_213[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[14]_i_1 
       (.I0(width[14]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[14]),
        .O(\left_edge_new_2_reg_213[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[15]_i_1 
       (.I0(width[15]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[15]),
        .O(\left_edge_new_2_reg_213[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[16]_i_1 
       (.I0(width[16]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[16]),
        .O(\left_edge_new_2_reg_213[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[17]_i_1 
       (.I0(width[17]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[17]),
        .O(\left_edge_new_2_reg_213[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[18]_i_1 
       (.I0(width[18]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[18]),
        .O(\left_edge_new_2_reg_213[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[19]_i_1 
       (.I0(width[19]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[19]),
        .O(\left_edge_new_2_reg_213[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[1]_i_1 
       (.I0(width[1]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[1]),
        .O(\left_edge_new_2_reg_213[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[20]_i_1 
       (.I0(width[20]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[20]),
        .O(\left_edge_new_2_reg_213[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[21]_i_1 
       (.I0(width[21]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[21]),
        .O(\left_edge_new_2_reg_213[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[22]_i_1 
       (.I0(width[22]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[22]),
        .O(\left_edge_new_2_reg_213[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[23]_i_1 
       (.I0(width[23]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[23]),
        .O(\left_edge_new_2_reg_213[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[24]_i_1 
       (.I0(width[24]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[24]),
        .O(\left_edge_new_2_reg_213[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[25]_i_1 
       (.I0(width[25]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[25]),
        .O(\left_edge_new_2_reg_213[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[26]_i_1 
       (.I0(width[26]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[26]),
        .O(\left_edge_new_2_reg_213[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[27]_i_1 
       (.I0(width[27]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[27]),
        .O(\left_edge_new_2_reg_213[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[28]_i_1 
       (.I0(width[28]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[28]),
        .O(\left_edge_new_2_reg_213[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[29]_i_1 
       (.I0(width[29]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[29]),
        .O(\left_edge_new_2_reg_213[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[2]_i_1 
       (.I0(width[2]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[2]),
        .O(\left_edge_new_2_reg_213[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[30]_i_1 
       (.I0(width[30]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[30]),
        .O(\left_edge_new_2_reg_213[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[31]_i_1 
       (.I0(width[31]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[31]),
        .O(\left_edge_new_2_reg_213[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[3]_i_1 
       (.I0(width[3]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[3]),
        .O(\left_edge_new_2_reg_213[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[4]_i_1 
       (.I0(width[4]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[4]),
        .O(\left_edge_new_2_reg_213[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[5]_i_1 
       (.I0(width[5]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[5]),
        .O(\left_edge_new_2_reg_213[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[6]_i_1 
       (.I0(width[6]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[6]),
        .O(\left_edge_new_2_reg_213[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[7]_i_1 
       (.I0(width[7]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[7]),
        .O(\left_edge_new_2_reg_213[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[8]_i_1 
       (.I0(width[8]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[8]),
        .O(\left_edge_new_2_reg_213[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \left_edge_new_2_reg_213[9]_i_1 
       (.I0(width[9]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(p_0_in1_in),
        .I3(p_current_x_cord_load_reg_1099[9]),
        .O(\left_edge_new_2_reg_213[9]_i_1_n_0 ));
  FDRE \left_edge_new_2_reg_213_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[0]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[0]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[10] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[10]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[10]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[11] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[11]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[11]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[12] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[12]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[12]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[13] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[13]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[13]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[14] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[14]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[14]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[15] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[15]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[15]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[16] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[16]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[16]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[17] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[17]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[17]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[18] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[18]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[18]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[19] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[19]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[19]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[1] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[1]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[1]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[20] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[20]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[20]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[21] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[21]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[21]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[22] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[22]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[22]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[23] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[23]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[23]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[24] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[24]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[24]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[25] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[25]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[25]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[26] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[26]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[26]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[27] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[27]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[27]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[28] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[28]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[28]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[29] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[29]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[29]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[2] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[2]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[2]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[30] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[30]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[30]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[31] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[31]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[31]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[3] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[3]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[3]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[4] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[4]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[4]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[5] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[5]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[5]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[6] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[6]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[6]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[7] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[7]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[7]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[8] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[8]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[8]),
        .R(1'b0));
  FDRE \left_edge_new_2_reg_213_reg[9] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\left_edge_new_2_reg_213[9]_i_1_n_0 ),
        .Q(left_edge_new_2_reg_213[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[0]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[0]),
        .I3(left_edge_new_2_reg_213[0]),
        .O(\left_edge_new_3_reg_374[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[10]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[10]),
        .I3(left_edge_new_2_reg_213[10]),
        .O(\left_edge_new_3_reg_374[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[11]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[11]),
        .I3(left_edge_new_2_reg_213[11]),
        .O(\left_edge_new_3_reg_374[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[12]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[12]),
        .I3(left_edge_new_2_reg_213[12]),
        .O(\left_edge_new_3_reg_374[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[13]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[13]),
        .I3(left_edge_new_2_reg_213[13]),
        .O(\left_edge_new_3_reg_374[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[14]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[14]),
        .I3(left_edge_new_2_reg_213[14]),
        .O(\left_edge_new_3_reg_374[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[15]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[15]),
        .I3(left_edge_new_2_reg_213[15]),
        .O(\left_edge_new_3_reg_374[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[16]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[16]),
        .I3(left_edge_new_2_reg_213[16]),
        .O(\left_edge_new_3_reg_374[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[17]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[17]),
        .I3(left_edge_new_2_reg_213[17]),
        .O(\left_edge_new_3_reg_374[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[18]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[18]),
        .I3(left_edge_new_2_reg_213[18]),
        .O(\left_edge_new_3_reg_374[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[19]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[19]),
        .I3(left_edge_new_2_reg_213[19]),
        .O(\left_edge_new_3_reg_374[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[1]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[1]),
        .I3(left_edge_new_2_reg_213[1]),
        .O(\left_edge_new_3_reg_374[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[20]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[20]),
        .I3(left_edge_new_2_reg_213[20]),
        .O(\left_edge_new_3_reg_374[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[21]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[21]),
        .I3(left_edge_new_2_reg_213[21]),
        .O(\left_edge_new_3_reg_374[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[22]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[22]),
        .I3(left_edge_new_2_reg_213[22]),
        .O(\left_edge_new_3_reg_374[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[23]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[23]),
        .I3(left_edge_new_2_reg_213[23]),
        .O(\left_edge_new_3_reg_374[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[24]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[24]),
        .I3(left_edge_new_2_reg_213[24]),
        .O(\left_edge_new_3_reg_374[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[25]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[25]),
        .I3(left_edge_new_2_reg_213[25]),
        .O(\left_edge_new_3_reg_374[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[26]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[26]),
        .I3(left_edge_new_2_reg_213[26]),
        .O(\left_edge_new_3_reg_374[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[27]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[27]),
        .I3(left_edge_new_2_reg_213[27]),
        .O(\left_edge_new_3_reg_374[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[28]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[28]),
        .I3(left_edge_new_2_reg_213[28]),
        .O(\left_edge_new_3_reg_374[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[29]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[29]),
        .I3(left_edge_new_2_reg_213[29]),
        .O(\left_edge_new_3_reg_374[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[2]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[2]),
        .I3(left_edge_new_2_reg_213[2]),
        .O(\left_edge_new_3_reg_374[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[30]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[30]),
        .I3(left_edge_new_2_reg_213[30]),
        .O(\left_edge_new_3_reg_374[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[31]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[31]),
        .I3(left_edge_new_2_reg_213[31]),
        .O(\left_edge_new_3_reg_374[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[3]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[3]),
        .I3(left_edge_new_2_reg_213[3]),
        .O(\left_edge_new_3_reg_374[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[4]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[4]),
        .I3(left_edge_new_2_reg_213[4]),
        .O(\left_edge_new_3_reg_374[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[5]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[5]),
        .I3(left_edge_new_2_reg_213[5]),
        .O(\left_edge_new_3_reg_374[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[6]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[6]),
        .I3(left_edge_new_2_reg_213[6]),
        .O(\left_edge_new_3_reg_374[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[7]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[7]),
        .I3(left_edge_new_2_reg_213[7]),
        .O(\left_edge_new_3_reg_374[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[8]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[8]),
        .I3(left_edge_new_2_reg_213[8]),
        .O(\left_edge_new_3_reg_374[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \left_edge_new_3_reg_374[9]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(width[9]),
        .I3(left_edge_new_2_reg_213[9]),
        .O(\left_edge_new_3_reg_374[9]_i_1_n_0 ));
  FDRE \left_edge_new_3_reg_374_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[0]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[0]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[10] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[10]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[10]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[11] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[11]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[11]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[12] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[12]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[12]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[13] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[13]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[13]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[14] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[14]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[14]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[15] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[15]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[15]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[16] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[16]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[16]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[17] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[17]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[17]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[18] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[18]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[18]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[19] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[19]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[19]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[1] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[1]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[1]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[20] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[20]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[20]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[21] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[21]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[21]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[22] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[22]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[22]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[23] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[23]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[23]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[24] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[24]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[24]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[25] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[25]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[25]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[26] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[26]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[26]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[27] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[27]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[27]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[28] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[28]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[28]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[29] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[29]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[29]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[2] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[2]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[2]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[30] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[30]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[30]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[31] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[31]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[31]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[3] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[3]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[3]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[4] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[4]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[4]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[5] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[5]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[5]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[6] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[6]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[6]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[7] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[7]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[7]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[8] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[8]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[8]),
        .R(1'b0));
  FDRE \left_edge_new_3_reg_374_reg[9] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\left_edge_new_3_reg_374[9]_i_1_n_0 ),
        .Q(left_edge_new_3_reg_374[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[0] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[0]),
        .Q(left_edge[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[10] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[10]),
        .Q(left_edge[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[11] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[11]),
        .Q(left_edge[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[12] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[12]),
        .Q(left_edge[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[13] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[13]),
        .Q(left_edge[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[14] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[14]),
        .Q(left_edge[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[15] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[15]),
        .Q(left_edge[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[16] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[16]),
        .Q(left_edge[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[17] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[17]),
        .Q(left_edge[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[18] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[18]),
        .Q(left_edge[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[19] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[19]),
        .Q(left_edge[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[1] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[1]),
        .Q(left_edge[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[20] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[20]),
        .Q(left_edge[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[21] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[21]),
        .Q(left_edge[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[22] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[22]),
        .Q(left_edge[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[23] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[23]),
        .Q(left_edge[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[24] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[24]),
        .Q(left_edge[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[25] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[25]),
        .Q(left_edge[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[26] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[26]),
        .Q(left_edge[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[27] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[27]),
        .Q(left_edge[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[28] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[28]),
        .Q(left_edge[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[29] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[29]),
        .Q(left_edge[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[2] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[2]),
        .Q(left_edge[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[30] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[30]),
        .Q(left_edge[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[31] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[31]),
        .Q(left_edge[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[3] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[3]),
        .Q(left_edge[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[4] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[4]),
        .Q(left_edge[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[5] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[5]),
        .Q(left_edge[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[6] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[6]),
        .Q(left_edge[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[7] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[7]),
        .Q(left_edge[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[8] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[8]),
        .Q(left_edge[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \left_edge_reg[9] 
       (.C(aclk),
        .CE(left_edge0),
        .D(ap_phi_mux_left_edge_new_3_phi_fu_377_p4[9]),
        .Q(left_edge[9]),
        .R(1'b0));
  FDRE \or_cond_7_reg_1172_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state_reg[0]_0 ),
        .Q(or_cond_7_reg_1172),
        .R(1'b0));
  CARRY4 other1_below_fu_669_p2_carry
       (.CI(1'b0),
        .CO({\led_exist_reg[0]_0 ,other1_below_fu_669_p2_carry_n_1,other1_below_fu_669_p2_carry_n_2,other1_below_fu_669_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\data_p1_reg[15] ),
        .O(NLW_other1_below_fu_669_p2_carry_O_UNCONNECTED[3:0]),
        .S(\data_p1_reg[23] ));
  CARRY4 other2_below_fu_663_p2_carry
       (.CI(1'b0),
        .CO({\led_exist_reg[0]_1 ,other2_below_fu_663_p2_carry_n_1,other2_below_fu_663_p2_carry_n_2,other2_below_fu_663_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(\data_p1_reg[6] ),
        .O(NLW_other2_below_fu_663_p2_carry_O_UNCONNECTED[3:0]),
        .S(\data_p1_reg[14] ));
  LUT5 #(
    .INIT(32'h00000040)) 
    other2_below_fu_663_p2_carry_i_10
       (.I0(other2_below_fu_663_p2_carry_i_18_n_0),
        .I1(target_color[0]),
        .I2(target_color[1]),
        .I3(target_color[3]),
        .I4(target_color[2]),
        .O(\led_exist_reg[0]_3 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    other2_below_fu_663_p2_carry_i_18
       (.I0(target_color[7]),
        .I1(target_color[6]),
        .I2(target_color[4]),
        .I3(target_color[5]),
        .O(other2_below_fu_663_p2_carry_i_18_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[0]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[0]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[0]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[0]),
        .O(tmp_29_fu_797_p1[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[10]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[10]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[10]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[10]),
        .O(tmp_29_fu_797_p1[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[11]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[11]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[11]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[11]),
        .O(tmp_29_fu_797_p1[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[12]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[12]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[12]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[12]),
        .O(tmp_29_fu_797_p1[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[13]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[13]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[13]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[13]),
        .O(tmp_29_fu_797_p1[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[14]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[14]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[14]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[14]),
        .O(tmp_29_fu_797_p1[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[15]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[15]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[15]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[15]),
        .O(tmp_29_fu_797_p1[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[16]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[0]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[0]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[0]),
        .O(tmp_34_fu_835_p1[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[17]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[1]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[1]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[1]),
        .O(tmp_34_fu_835_p1[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[18]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[2]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[2]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[2]),
        .O(tmp_34_fu_835_p1[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[19]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[3]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[3]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[3]),
        .O(tmp_34_fu_835_p1[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[1]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[1]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[1]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[1]),
        .O(tmp_29_fu_797_p1[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[20]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[4]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[4]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[4]),
        .O(tmp_34_fu_835_p1[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[21]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[5]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[5]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[5]),
        .O(tmp_34_fu_835_p1[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[22]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[6]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[6]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[6]),
        .O(tmp_34_fu_835_p1[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[23]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[7]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[7]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[7]),
        .O(tmp_34_fu_835_p1[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[24]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[8]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[8]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[8]),
        .O(tmp_34_fu_835_p1[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[25]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[9]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[9]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[9]),
        .O(tmp_34_fu_835_p1[9]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[26]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[10]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[10]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[10]),
        .O(tmp_34_fu_835_p1[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[27]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[11]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[11]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[11]),
        .O(tmp_34_fu_835_p1[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[28]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[12]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[12]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[12]),
        .O(tmp_34_fu_835_p1[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[29]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[13]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[13]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[13]),
        .O(tmp_34_fu_835_p1[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[2]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[2]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[2]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[2]),
        .O(tmp_29_fu_797_p1[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[30]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[14]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[14]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[14]),
        .O(tmp_34_fu_835_p1[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[31]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[15]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[15]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[15]),
        .O(tmp_34_fu_835_p1[15]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[32]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[0]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[0]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[0]),
        .O(val_assign_fu_861_p2[32]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[33]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[1]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[1]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[1]),
        .O(val_assign_fu_861_p2[33]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[34]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[2]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[2]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[2]),
        .O(val_assign_fu_861_p2[34]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[35]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[3]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[3]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[3]),
        .O(val_assign_fu_861_p2[35]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[36]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[4]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[4]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[4]),
        .O(val_assign_fu_861_p2[36]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[37]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[5]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[5]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[5]),
        .O(val_assign_fu_861_p2[37]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[38]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[6]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[6]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[6]),
        .O(val_assign_fu_861_p2[38]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[39]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[7]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[7]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[7]),
        .O(val_assign_fu_861_p2[39]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[3]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[3]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[3]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[3]),
        .O(tmp_29_fu_797_p1[3]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[40]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[8]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[8]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[8]),
        .O(val_assign_fu_861_p2[40]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[41]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[9]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[9]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[9]),
        .O(val_assign_fu_861_p2[41]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[42]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[10]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[10]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[10]),
        .O(val_assign_fu_861_p2[42]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[43]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[11]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[11]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[11]),
        .O(val_assign_fu_861_p2[43]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[44]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[12]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[12]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[12]),
        .O(val_assign_fu_861_p2[44]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[45]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[13]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[13]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[13]),
        .O(val_assign_fu_861_p2[45]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[46]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[14]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[14]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[14]),
        .O(val_assign_fu_861_p2[46]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[47]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(right_edge_loc_2_reg_314[15]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(p_right_edge_load_reg_1161[15]),
        .I4(p_0_in0_in),
        .I5(p_current_x_cord_load_reg_1099[15]),
        .O(val_assign_fu_861_p2[47]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[48]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[0]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[0]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[0]),
        .O(val_assign_fu_861_p2[48]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[49]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[1]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[1]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[1]),
        .O(val_assign_fu_861_p2[49]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[4]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[4]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[4]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[4]),
        .O(tmp_29_fu_797_p1[4]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[50]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[2]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[2]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[2]),
        .O(val_assign_fu_861_p2[50]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[51]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[3]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[3]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[3]),
        .O(val_assign_fu_861_p2[51]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[52]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[4]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[4]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[4]),
        .O(val_assign_fu_861_p2[52]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[53]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[5]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[5]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[5]),
        .O(val_assign_fu_861_p2[53]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[54]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[6]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[6]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[6]),
        .O(val_assign_fu_861_p2[54]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[55]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[7]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[7]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[7]),
        .O(val_assign_fu_861_p2[55]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[56]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[8]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[8]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[8]),
        .O(val_assign_fu_861_p2[56]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[57]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[9]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[9]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[9]),
        .O(val_assign_fu_861_p2[57]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[58]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[10]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[10]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[10]),
        .O(val_assign_fu_861_p2[58]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[59]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[11]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[11]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[11]),
        .O(val_assign_fu_861_p2[59]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[5]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[5]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[5]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[5]),
        .O(tmp_29_fu_797_p1[5]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[60]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[12]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[12]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[12]),
        .O(val_assign_fu_861_p2[60]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[61]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[13]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[13]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[13]),
        .O(val_assign_fu_861_p2[61]));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[62]_i_1 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[14]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[14]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[14]),
        .O(val_assign_fu_861_p2[62]));
  LUT4 #(
    .INIT(16'h0080)) 
    \p_4_reg_1204[63]_i_1 
       (.I0(p_0_in),
        .I1(tmp_5_fu_810_p2),
        .I2(ap_CS_fsm_state2),
        .I3(led_exist),
        .O(p_4_reg_1204));
  LUT3 #(
    .INIT(8'h80)) 
    \p_4_reg_1204[63]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(tmp_5_fu_810_p2),
        .I2(p_0_in),
        .O(\p_4_reg_1204[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \p_4_reg_1204[63]_i_3 
       (.I0(tmp_34_fu_835_p1[15]),
        .I1(left_edge_loc_2_reg_223[15]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[15]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[15]),
        .O(val_assign_fu_861_p2[63]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[6]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[6]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[6]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[6]),
        .O(tmp_29_fu_797_p1[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[7]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[7]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[7]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[7]),
        .O(tmp_29_fu_797_p1[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[8]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[8]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[8]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[8]),
        .O(tmp_29_fu_797_p1[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \p_4_reg_1204[9]_i_1 
       (.I0(p_current_y_cord_load_reg_1111[9]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[9]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[9]),
        .O(tmp_29_fu_797_p1[9]));
  FDSE \p_4_reg_1204_reg[0] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[0]),
        .Q(\edgeout_val[63] [32]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[10] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[10]),
        .Q(\edgeout_val[63] [42]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[11] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[11]),
        .Q(\edgeout_val[63] [43]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[12] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[12]),
        .Q(\edgeout_val[63] [44]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[13] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[13]),
        .Q(\edgeout_val[63] [45]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[14] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[14]),
        .Q(\edgeout_val[63] [46]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[15] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[15]),
        .Q(\edgeout_val[63] [47]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[16] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[0]),
        .Q(\edgeout_val[63] [48]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[17] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[1]),
        .Q(\edgeout_val[63] [49]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[18] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[2]),
        .Q(\edgeout_val[63] [50]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[19] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[3]),
        .Q(\edgeout_val[63] [51]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[1] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[1]),
        .Q(\edgeout_val[63] [33]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[20] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[4]),
        .Q(\edgeout_val[63] [52]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[21] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[5]),
        .Q(\edgeout_val[63] [53]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[22] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[6]),
        .Q(\edgeout_val[63] [54]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[23] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[7]),
        .Q(\edgeout_val[63] [55]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[24] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[8]),
        .Q(\edgeout_val[63] [56]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[25] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[9]),
        .Q(\edgeout_val[63] [57]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[26] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[10]),
        .Q(\edgeout_val[63] [58]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[27] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[11]),
        .Q(\edgeout_val[63] [59]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[28] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[12]),
        .Q(\edgeout_val[63] [60]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[29] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[13]),
        .Q(\edgeout_val[63] [61]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[2] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[2]),
        .Q(\edgeout_val[63] [34]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[30] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[14]),
        .Q(\edgeout_val[63] [62]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[31] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_34_fu_835_p1[15]),
        .Q(\edgeout_val[63] [63]),
        .S(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[32] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[32]),
        .Q(\edgeout_val[63] [64]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[33] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[33]),
        .Q(\edgeout_val[63] [65]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[34] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[34]),
        .Q(\edgeout_val[63] [66]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[35] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[35]),
        .Q(\edgeout_val[63] [67]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[36] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[36]),
        .Q(\edgeout_val[63] [68]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[37] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[37]),
        .Q(\edgeout_val[63] [69]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[38] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[38]),
        .Q(\edgeout_val[63] [70]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[39] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[39]),
        .Q(\edgeout_val[63] [71]),
        .R(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[3] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[3]),
        .Q(\edgeout_val[63] [35]),
        .S(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[40] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[40]),
        .Q(\edgeout_val[63] [72]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[41] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[41]),
        .Q(\edgeout_val[63] [73]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[42] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[42]),
        .Q(\edgeout_val[63] [74]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[43] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[43]),
        .Q(\edgeout_val[63] [75]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[44] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[44]),
        .Q(\edgeout_val[63] [76]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[45] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[45]),
        .Q(\edgeout_val[63] [77]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[46] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[46]),
        .Q(\edgeout_val[63] [78]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[47] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[47]),
        .Q(\edgeout_val[63] [79]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[48] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[48]),
        .Q(\edgeout_val[63] [80]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[49] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[49]),
        .Q(\edgeout_val[63] [81]),
        .R(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[4] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[4]),
        .Q(\edgeout_val[63] [36]),
        .S(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[50] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[50]),
        .Q(\edgeout_val[63] [82]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[51] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[51]),
        .Q(\edgeout_val[63] [83]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[52] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[52]),
        .Q(\edgeout_val[63] [84]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[53] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[53]),
        .Q(\edgeout_val[63] [85]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[54] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[54]),
        .Q(\edgeout_val[63] [86]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[55] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[55]),
        .Q(\edgeout_val[63] [87]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[56] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[56]),
        .Q(\edgeout_val[63] [88]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[57] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[57]),
        .Q(\edgeout_val[63] [89]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[58] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[58]),
        .Q(\edgeout_val[63] [90]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[59] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[59]),
        .Q(\edgeout_val[63] [91]),
        .R(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[5] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[5]),
        .Q(\edgeout_val[63] [37]),
        .S(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[60] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[60]),
        .Q(\edgeout_val[63] [92]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[61] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[61]),
        .Q(\edgeout_val[63] [93]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[62] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[62]),
        .Q(\edgeout_val[63] [94]),
        .R(p_4_reg_1204));
  FDRE \p_4_reg_1204_reg[63] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(val_assign_fu_861_p2[63]),
        .Q(\edgeout_val[63] [95]),
        .R(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[6] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[6]),
        .Q(\edgeout_val[63] [38]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[7] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[7]),
        .Q(\edgeout_val[63] [39]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[8] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[8]),
        .Q(\edgeout_val[63] [40]),
        .S(p_4_reg_1204));
  FDSE \p_4_reg_1204_reg[9] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_29_fu_797_p1[9]),
        .Q(\edgeout_val[63] [41]),
        .S(p_4_reg_1204));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[0]_i_1 
       (.I0(bottom_edge[0]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[10]_i_1 
       (.I0(bottom_edge[10]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[11]_i_1 
       (.I0(bottom_edge[11]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[12]_i_1 
       (.I0(bottom_edge[12]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[13]_i_1 
       (.I0(bottom_edge[13]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[14]_i_1 
       (.I0(bottom_edge[14]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[15]_i_1 
       (.I0(bottom_edge[15]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[16]_i_1 
       (.I0(bottom_edge[16]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[17]_i_1 
       (.I0(bottom_edge[17]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[18]_i_1 
       (.I0(bottom_edge[18]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[19]_i_1 
       (.I0(bottom_edge[19]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[1]_i_1 
       (.I0(bottom_edge[1]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[20]_i_1 
       (.I0(bottom_edge[20]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[21]_i_1 
       (.I0(bottom_edge[21]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[22]_i_1 
       (.I0(bottom_edge[22]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[23]_i_1 
       (.I0(bottom_edge[23]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[24]_i_1 
       (.I0(bottom_edge[24]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[25]_i_1 
       (.I0(bottom_edge[25]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[26]_i_1 
       (.I0(bottom_edge[26]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[27]_i_1 
       (.I0(bottom_edge[27]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[28]_i_1 
       (.I0(bottom_edge[28]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[29]_i_1 
       (.I0(bottom_edge[29]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[2]_i_1 
       (.I0(bottom_edge[2]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[30]_i_1 
       (.I0(bottom_edge[30]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[31]_i_1 
       (.I0(bottom_edge[31]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[3]_i_1 
       (.I0(bottom_edge[3]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[4]_i_1 
       (.I0(bottom_edge[4]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[5]_i_1 
       (.I0(bottom_edge[5]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[6]_i_1 
       (.I0(bottom_edge[6]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[7]_i_1 
       (.I0(bottom_edge[7]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[8]_i_1 
       (.I0(bottom_edge[8]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_bottom_edge_load_reg_1154[9]_i_1 
       (.I0(bottom_edge[9]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_bottom_edge_load_reg_1154[9]_i_1_n_0 ));
  FDRE \p_bottom_edge_load_reg_1154_reg[0] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[0]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[0]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[10] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[10]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[10]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[11] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[11]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[11]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[12] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[12]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[12]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[13] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[13]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[13]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[14] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[14]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[14]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[15] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[15]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[15]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[16] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[16]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[16]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[17] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[17]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[17]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[18] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[18]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[18]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[19] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[19]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[19]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[1] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[1]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[1]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[20] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[20]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[20]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[21] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[21]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[21]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[22] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[22]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[22]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[23] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[23]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[23]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[24] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[24]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[24]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[25] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[25]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[25]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[26] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[26]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[26]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[27] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[27]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[27]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[28] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[28]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[28]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[29] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[29]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[29]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[2] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[2]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[2]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[30] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[30]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[30]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[31] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[31]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[31]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[3] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[3]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[3]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[4] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[4]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[4]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[5] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[5]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[5]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[6] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[6]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[6]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[7] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[7]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[7]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[8] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[8]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[8]),
        .R(1'b0));
  FDRE \p_bottom_edge_load_reg_1154_reg[9] 
       (.C(aclk),
        .CE(Q),
        .D(\p_bottom_edge_load_reg_1154[9]_i_1_n_0 ),
        .Q(p_bottom_edge_load_reg_1154[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[0]_i_1 
       (.I0(current_x_cord[0]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[10]_i_1 
       (.I0(current_x_cord[10]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[11]_i_1 
       (.I0(current_x_cord[11]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[12]_i_1 
       (.I0(current_x_cord[12]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[13]_i_1 
       (.I0(current_x_cord[13]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[13]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[14]_i_1 
       (.I0(current_x_cord[14]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[14]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[15]_i_1 
       (.I0(current_x_cord[15]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[16]_i_1 
       (.I0(current_x_cord[16]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[16]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[17]_i_1 
       (.I0(current_x_cord[17]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[17]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[18]_i_1 
       (.I0(current_x_cord[18]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[18]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[19]_i_1 
       (.I0(current_x_cord[19]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[19]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[1]_i_1 
       (.I0(current_x_cord[1]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[20]_i_1 
       (.I0(current_x_cord[20]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[20]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[21]_i_1 
       (.I0(current_x_cord[21]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[21]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[22]_i_1 
       (.I0(current_x_cord[22]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[22]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[23]_i_1 
       (.I0(current_x_cord[23]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[23]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[24]_i_1 
       (.I0(current_x_cord[24]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[24]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[25]_i_1 
       (.I0(current_x_cord[25]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[25]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[26]_i_1 
       (.I0(current_x_cord[26]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[26]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[27]_i_1 
       (.I0(current_x_cord[27]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[27]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[28]_i_1 
       (.I0(current_x_cord[28]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[28]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[29]_i_1 
       (.I0(current_x_cord[29]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[29]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[2]_i_1 
       (.I0(current_x_cord[2]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[30]_i_1 
       (.I0(current_x_cord[30]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[30]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[31]_i_1 
       (.I0(current_x_cord[31]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[31]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[3]_i_1 
       (.I0(current_x_cord[3]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[4]_i_1 
       (.I0(current_x_cord[4]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[5]_i_1 
       (.I0(current_x_cord[5]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[6]_i_1 
       (.I0(current_x_cord[6]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[7]_i_1 
       (.I0(current_x_cord[7]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[8]_i_1 
       (.I0(current_x_cord[8]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_x_cord_load_reg_1099[9]_i_1 
       (.I0(current_x_cord[9]),
        .I1(reset),
        .O(p_current_x_cord_load_fu_466_p3[9]));
  FDRE \p_current_x_cord_load_reg_1099_reg[0] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[0]),
        .Q(p_current_x_cord_load_reg_1099[0]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[10] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[10]),
        .Q(p_current_x_cord_load_reg_1099[10]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[11] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[11]),
        .Q(p_current_x_cord_load_reg_1099[11]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[12] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[12]),
        .Q(p_current_x_cord_load_reg_1099[12]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[13] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[13]),
        .Q(p_current_x_cord_load_reg_1099[13]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[14] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[14]),
        .Q(p_current_x_cord_load_reg_1099[14]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[15] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[15]),
        .Q(p_current_x_cord_load_reg_1099[15]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[16] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[16]),
        .Q(p_current_x_cord_load_reg_1099[16]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[17] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[17]),
        .Q(p_current_x_cord_load_reg_1099[17]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[18] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[18]),
        .Q(p_current_x_cord_load_reg_1099[18]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[19] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[19]),
        .Q(p_current_x_cord_load_reg_1099[19]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[1] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[1]),
        .Q(p_current_x_cord_load_reg_1099[1]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[20] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[20]),
        .Q(p_current_x_cord_load_reg_1099[20]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[21] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[21]),
        .Q(p_current_x_cord_load_reg_1099[21]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[22] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[22]),
        .Q(p_current_x_cord_load_reg_1099[22]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[23] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[23]),
        .Q(p_current_x_cord_load_reg_1099[23]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[24] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[24]),
        .Q(p_current_x_cord_load_reg_1099[24]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[25] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[25]),
        .Q(p_current_x_cord_load_reg_1099[25]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[26] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[26]),
        .Q(p_current_x_cord_load_reg_1099[26]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[27] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[27]),
        .Q(p_current_x_cord_load_reg_1099[27]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[28] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[28]),
        .Q(p_current_x_cord_load_reg_1099[28]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[29] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[29]),
        .Q(p_current_x_cord_load_reg_1099[29]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[2] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[2]),
        .Q(p_current_x_cord_load_reg_1099[2]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[30] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[30]),
        .Q(p_current_x_cord_load_reg_1099[30]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[31] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[31]),
        .Q(p_current_x_cord_load_reg_1099[31]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[3] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[3]),
        .Q(p_current_x_cord_load_reg_1099[3]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[4] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[4]),
        .Q(p_current_x_cord_load_reg_1099[4]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[5] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[5]),
        .Q(p_current_x_cord_load_reg_1099[5]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[6] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[6]),
        .Q(p_current_x_cord_load_reg_1099[6]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[7] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[7]),
        .Q(p_current_x_cord_load_reg_1099[7]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[8] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[8]),
        .Q(p_current_x_cord_load_reg_1099[8]),
        .R(1'b0));
  FDRE \p_current_x_cord_load_reg_1099_reg[9] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_x_cord_load_fu_466_p3[9]),
        .Q(p_current_x_cord_load_reg_1099[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[0]_i_1 
       (.I0(current_y_cord[0]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[10]_i_1 
       (.I0(current_y_cord[10]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[11]_i_1 
       (.I0(current_y_cord[11]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[11]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[12]_i_1 
       (.I0(current_y_cord[12]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[13]_i_1 
       (.I0(current_y_cord[13]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[13]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[14]_i_1 
       (.I0(current_y_cord[14]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[14]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[15]_i_1 
       (.I0(current_y_cord[15]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[16]_i_1 
       (.I0(current_y_cord[16]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[16]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[17]_i_1 
       (.I0(current_y_cord[17]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[17]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[18]_i_1 
       (.I0(current_y_cord[18]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[18]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[19]_i_1 
       (.I0(current_y_cord[19]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[19]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[1]_i_1 
       (.I0(current_y_cord[1]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[20]_i_1 
       (.I0(current_y_cord[20]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[20]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[21]_i_1 
       (.I0(current_y_cord[21]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[21]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[22]_i_1 
       (.I0(current_y_cord[22]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[22]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[23]_i_1 
       (.I0(current_y_cord[23]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[23]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[24]_i_1 
       (.I0(current_y_cord[24]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[24]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[25]_i_1 
       (.I0(current_y_cord[25]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[25]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[26]_i_1 
       (.I0(current_y_cord[26]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[26]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[27]_i_1 
       (.I0(current_y_cord[27]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[27]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[28]_i_1 
       (.I0(current_y_cord[28]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[28]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[29]_i_1 
       (.I0(current_y_cord[29]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[29]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[2]_i_1 
       (.I0(current_y_cord[2]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[30]_i_1 
       (.I0(current_y_cord[30]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[30]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[31]_i_1 
       (.I0(current_y_cord[31]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[31]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[3]_i_1 
       (.I0(current_y_cord[3]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[4]_i_1 
       (.I0(current_y_cord[4]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[5]_i_1 
       (.I0(current_y_cord[5]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[6]_i_1 
       (.I0(current_y_cord[6]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[7]_i_1 
       (.I0(current_y_cord[7]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[8]_i_1 
       (.I0(current_y_cord[8]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_current_y_cord_load_reg_1111[9]_i_1 
       (.I0(current_y_cord[9]),
        .I1(reset),
        .O(p_current_y_cord_load_fu_474_p3[9]));
  FDRE \p_current_y_cord_load_reg_1111_reg[0] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[0]),
        .Q(p_current_y_cord_load_reg_1111[0]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[10] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[10]),
        .Q(p_current_y_cord_load_reg_1111[10]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[11] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[11]),
        .Q(p_current_y_cord_load_reg_1111[11]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[12] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[12]),
        .Q(p_current_y_cord_load_reg_1111[12]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[13] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[13]),
        .Q(p_current_y_cord_load_reg_1111[13]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[14] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[14]),
        .Q(p_current_y_cord_load_reg_1111[14]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[15] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[15]),
        .Q(p_current_y_cord_load_reg_1111[15]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[16] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[16]),
        .Q(p_current_y_cord_load_reg_1111[16]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[17] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[17]),
        .Q(p_current_y_cord_load_reg_1111[17]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[18] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[18]),
        .Q(p_current_y_cord_load_reg_1111[18]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[19] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[19]),
        .Q(p_current_y_cord_load_reg_1111[19]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[1] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[1]),
        .Q(p_current_y_cord_load_reg_1111[1]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[20] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[20]),
        .Q(p_current_y_cord_load_reg_1111[20]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[21] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[21]),
        .Q(p_current_y_cord_load_reg_1111[21]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[22] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[22]),
        .Q(p_current_y_cord_load_reg_1111[22]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[23] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[23]),
        .Q(p_current_y_cord_load_reg_1111[23]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[24] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[24]),
        .Q(p_current_y_cord_load_reg_1111[24]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[25] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[25]),
        .Q(p_current_y_cord_load_reg_1111[25]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[26] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[26]),
        .Q(p_current_y_cord_load_reg_1111[26]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[27] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[27]),
        .Q(p_current_y_cord_load_reg_1111[27]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[28] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[28]),
        .Q(p_current_y_cord_load_reg_1111[28]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[29] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[29]),
        .Q(p_current_y_cord_load_reg_1111[29]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[2] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[2]),
        .Q(p_current_y_cord_load_reg_1111[2]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[30] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[30]),
        .Q(p_current_y_cord_load_reg_1111[30]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[31] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[31]),
        .Q(p_current_y_cord_load_reg_1111[31]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[3] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[3]),
        .Q(p_current_y_cord_load_reg_1111[3]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[4] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[4]),
        .Q(p_current_y_cord_load_reg_1111[4]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[5] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[5]),
        .Q(p_current_y_cord_load_reg_1111[5]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[6] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[6]),
        .Q(p_current_y_cord_load_reg_1111[6]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[7] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[7]),
        .Q(p_current_y_cord_load_reg_1111[7]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[8] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[8]),
        .Q(p_current_y_cord_load_reg_1111[8]),
        .R(1'b0));
  FDRE \p_current_y_cord_load_reg_1111_reg[9] 
       (.C(aclk),
        .CE(Q),
        .D(p_current_y_cord_load_fu_474_p3[9]),
        .Q(p_current_y_cord_load_reg_1111[9]),
        .R(1'b0));
  CARRY4 p_neg1_fu_882_p2_carry
       (.CI(1'b0),
        .CO({p_neg1_fu_882_p2_carry_n_0,p_neg1_fu_882_p2_carry_n_1,p_neg1_fu_882_p2_carry_n_2,p_neg1_fu_882_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({p_neg1_fu_882_p2[3:1],NLW_p_neg1_fu_882_p2_carry_O_UNCONNECTED[0]}),
        .S({p_neg1_fu_882_p2_carry_i_1_n_0,p_neg1_fu_882_p2_carry_i_2_n_0,p_neg1_fu_882_p2_carry_i_3_n_0,tmp_11_reg_1190[0]}));
  CARRY4 p_neg1_fu_882_p2_carry__0
       (.CI(p_neg1_fu_882_p2_carry_n_0),
        .CO({p_neg1_fu_882_p2_carry__0_n_0,p_neg1_fu_882_p2_carry__0_n_1,p_neg1_fu_882_p2_carry__0_n_2,p_neg1_fu_882_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_neg1_fu_882_p2[7:4]),
        .S({p_neg1_fu_882_p2_carry__0_i_1_n_0,p_neg1_fu_882_p2_carry__0_i_2_n_0,p_neg1_fu_882_p2_carry__0_i_3_n_0,p_neg1_fu_882_p2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry__0_i_1
       (.I0(tmp_11_reg_1190[7]),
        .O(p_neg1_fu_882_p2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry__0_i_2
       (.I0(tmp_11_reg_1190[6]),
        .O(p_neg1_fu_882_p2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry__0_i_3
       (.I0(tmp_11_reg_1190[5]),
        .O(p_neg1_fu_882_p2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry__0_i_4
       (.I0(tmp_11_reg_1190[4]),
        .O(p_neg1_fu_882_p2_carry__0_i_4_n_0));
  CARRY4 p_neg1_fu_882_p2_carry__1
       (.CI(p_neg1_fu_882_p2_carry__0_n_0),
        .CO({p_neg1_fu_882_p2_carry__1_n_0,p_neg1_fu_882_p2_carry__1_n_1,p_neg1_fu_882_p2_carry__1_n_2,p_neg1_fu_882_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_neg1_fu_882_p2[11:8]),
        .S({p_neg1_fu_882_p2_carry__1_i_1_n_0,p_neg1_fu_882_p2_carry__1_i_2_n_0,p_neg1_fu_882_p2_carry__1_i_3_n_0,p_neg1_fu_882_p2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry__1_i_1
       (.I0(tmp_11_reg_1190[11]),
        .O(p_neg1_fu_882_p2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry__1_i_2
       (.I0(tmp_11_reg_1190[10]),
        .O(p_neg1_fu_882_p2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry__1_i_3
       (.I0(tmp_11_reg_1190[9]),
        .O(p_neg1_fu_882_p2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry__1_i_4
       (.I0(tmp_11_reg_1190[8]),
        .O(p_neg1_fu_882_p2_carry__1_i_4_n_0));
  CARRY4 p_neg1_fu_882_p2_carry__2
       (.CI(p_neg1_fu_882_p2_carry__1_n_0),
        .CO({p_neg1_fu_882_p2_carry__2_n_0,p_neg1_fu_882_p2_carry__2_n_1,p_neg1_fu_882_p2_carry__2_n_2,p_neg1_fu_882_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_neg1_fu_882_p2[15:12]),
        .S({p_neg1_fu_882_p2_carry__2_i_1_n_0,p_neg1_fu_882_p2_carry__2_i_2_n_0,p_neg1_fu_882_p2_carry__2_i_3_n_0,p_neg1_fu_882_p2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry__2_i_1
       (.I0(tmp_11_reg_1190[15]),
        .O(p_neg1_fu_882_p2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry__2_i_2
       (.I0(tmp_11_reg_1190[14]),
        .O(p_neg1_fu_882_p2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry__2_i_3
       (.I0(tmp_11_reg_1190[13]),
        .O(p_neg1_fu_882_p2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry__2_i_4
       (.I0(tmp_11_reg_1190[12]),
        .O(p_neg1_fu_882_p2_carry__2_i_4_n_0));
  CARRY4 p_neg1_fu_882_p2_carry__3
       (.CI(p_neg1_fu_882_p2_carry__2_n_0),
        .CO(NLW_p_neg1_fu_882_p2_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_neg1_fu_882_p2_carry__3_O_UNCONNECTED[3:1],p_neg1_fu_882_p2[16]}),
        .S({1'b0,1'b0,1'b0,p_neg1_fu_882_p2_carry__3_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry__3_i_1
       (.I0(tmp_11_reg_1190[16]),
        .O(p_neg1_fu_882_p2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry_i_1
       (.I0(tmp_11_reg_1190[3]),
        .O(p_neg1_fu_882_p2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry_i_2
       (.I0(tmp_11_reg_1190[2]),
        .O(p_neg1_fu_882_p2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg1_fu_882_p2_carry_i_3
       (.I0(tmp_11_reg_1190[1]),
        .O(p_neg1_fu_882_p2_carry_i_3_n_0));
  CARRY4 p_neg_fu_927_p2_carry
       (.CI(1'b0),
        .CO({p_neg_fu_927_p2_carry_n_0,p_neg_fu_927_p2_carry_n_1,p_neg_fu_927_p2_carry_n_2,p_neg_fu_927_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({p_neg_fu_927_p2[3:1],NLW_p_neg_fu_927_p2_carry_O_UNCONNECTED[0]}),
        .S({p_neg_fu_927_p2_carry_i_1_n_0,p_neg_fu_927_p2_carry_i_2_n_0,p_neg_fu_927_p2_carry_i_3_n_0,tmp_14_reg_1197[0]}));
  CARRY4 p_neg_fu_927_p2_carry__0
       (.CI(p_neg_fu_927_p2_carry_n_0),
        .CO({p_neg_fu_927_p2_carry__0_n_0,p_neg_fu_927_p2_carry__0_n_1,p_neg_fu_927_p2_carry__0_n_2,p_neg_fu_927_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_neg_fu_927_p2[7:4]),
        .S({p_neg_fu_927_p2_carry__0_i_1_n_0,p_neg_fu_927_p2_carry__0_i_2_n_0,p_neg_fu_927_p2_carry__0_i_3_n_0,p_neg_fu_927_p2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry__0_i_1
       (.I0(tmp_14_reg_1197[7]),
        .O(p_neg_fu_927_p2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry__0_i_2
       (.I0(tmp_14_reg_1197[6]),
        .O(p_neg_fu_927_p2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry__0_i_3
       (.I0(tmp_14_reg_1197[5]),
        .O(p_neg_fu_927_p2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry__0_i_4
       (.I0(tmp_14_reg_1197[4]),
        .O(p_neg_fu_927_p2_carry__0_i_4_n_0));
  CARRY4 p_neg_fu_927_p2_carry__1
       (.CI(p_neg_fu_927_p2_carry__0_n_0),
        .CO({p_neg_fu_927_p2_carry__1_n_0,p_neg_fu_927_p2_carry__1_n_1,p_neg_fu_927_p2_carry__1_n_2,p_neg_fu_927_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_neg_fu_927_p2[11:8]),
        .S({p_neg_fu_927_p2_carry__1_i_1_n_0,p_neg_fu_927_p2_carry__1_i_2_n_0,p_neg_fu_927_p2_carry__1_i_3_n_0,p_neg_fu_927_p2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry__1_i_1
       (.I0(tmp_14_reg_1197[11]),
        .O(p_neg_fu_927_p2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry__1_i_2
       (.I0(tmp_14_reg_1197[10]),
        .O(p_neg_fu_927_p2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry__1_i_3
       (.I0(tmp_14_reg_1197[9]),
        .O(p_neg_fu_927_p2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry__1_i_4
       (.I0(tmp_14_reg_1197[8]),
        .O(p_neg_fu_927_p2_carry__1_i_4_n_0));
  CARRY4 p_neg_fu_927_p2_carry__2
       (.CI(p_neg_fu_927_p2_carry__1_n_0),
        .CO({p_neg_fu_927_p2_carry__2_n_0,p_neg_fu_927_p2_carry__2_n_1,p_neg_fu_927_p2_carry__2_n_2,p_neg_fu_927_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_neg_fu_927_p2[15:12]),
        .S({p_neg_fu_927_p2_carry__2_i_1_n_0,p_neg_fu_927_p2_carry__2_i_2_n_0,p_neg_fu_927_p2_carry__2_i_3_n_0,p_neg_fu_927_p2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry__2_i_1
       (.I0(tmp_14_reg_1197[15]),
        .O(p_neg_fu_927_p2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry__2_i_2
       (.I0(tmp_14_reg_1197[14]),
        .O(p_neg_fu_927_p2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry__2_i_3
       (.I0(tmp_14_reg_1197[13]),
        .O(p_neg_fu_927_p2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry__2_i_4
       (.I0(tmp_14_reg_1197[12]),
        .O(p_neg_fu_927_p2_carry__2_i_4_n_0));
  CARRY4 p_neg_fu_927_p2_carry__3
       (.CI(p_neg_fu_927_p2_carry__2_n_0),
        .CO(NLW_p_neg_fu_927_p2_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_neg_fu_927_p2_carry__3_O_UNCONNECTED[3:1],p_neg_fu_927_p2[16]}),
        .S({1'b0,1'b0,1'b0,p_neg_fu_927_p2_carry__3_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry__3_i_1
       (.I0(tmp_14_reg_1197[16]),
        .O(p_neg_fu_927_p2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry_i_1
       (.I0(tmp_14_reg_1197[3]),
        .O(p_neg_fu_927_p2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry_i_2
       (.I0(tmp_14_reg_1197[2]),
        .O(p_neg_fu_927_p2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_neg_fu_927_p2_carry_i_3
       (.I0(tmp_14_reg_1197[1]),
        .O(p_neg_fu_927_p2_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[0]_i_1 
       (.I0(right_edge[0]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[10]_i_1 
       (.I0(right_edge[10]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[11]_i_1 
       (.I0(right_edge[11]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[12]_i_1 
       (.I0(right_edge[12]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[13]_i_1 
       (.I0(right_edge[13]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[14]_i_1 
       (.I0(right_edge[14]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[15]_i_1 
       (.I0(right_edge[15]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[16]_i_1 
       (.I0(right_edge[16]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[17]_i_1 
       (.I0(right_edge[17]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[18]_i_1 
       (.I0(right_edge[18]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[19]_i_1 
       (.I0(right_edge[19]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[1]_i_1 
       (.I0(right_edge[1]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[20]_i_1 
       (.I0(right_edge[20]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[21]_i_1 
       (.I0(right_edge[21]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[22]_i_1 
       (.I0(right_edge[22]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[23]_i_1 
       (.I0(right_edge[23]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[24]_i_1 
       (.I0(right_edge[24]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[25]_i_1 
       (.I0(right_edge[25]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[26]_i_1 
       (.I0(right_edge[26]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[27]_i_1 
       (.I0(right_edge[27]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[28]_i_1 
       (.I0(right_edge[28]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[29]_i_1 
       (.I0(right_edge[29]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[2]_i_1 
       (.I0(right_edge[2]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[30]_i_1 
       (.I0(right_edge[30]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[31]_i_1 
       (.I0(right_edge[31]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[3]_i_1 
       (.I0(right_edge[3]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[4]_i_1 
       (.I0(right_edge[4]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[5]_i_1 
       (.I0(right_edge[5]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[6]_i_1 
       (.I0(right_edge[6]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[7]_i_1 
       (.I0(right_edge[7]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[8]_i_1 
       (.I0(right_edge[8]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \p_right_edge_load_reg_1161[9]_i_1 
       (.I0(right_edge[9]),
        .I1(tmp_4_fu_488_p2),
        .O(\p_right_edge_load_reg_1161[9]_i_1_n_0 ));
  FDRE \p_right_edge_load_reg_1161_reg[0] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[0]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[0]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[10] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[10]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[10]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[11] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[11]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[11]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[12] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[12]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[12]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[13] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[13]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[13]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[14] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[14]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[14]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[15] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[15]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[15]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[16] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[16]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[16]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[17] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[17]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[17]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[18] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[18]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[18]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[19] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[19]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[19]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[1] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[1]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[1]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[20] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[20]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[20]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[21] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[21]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[21]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[22] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[22]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[22]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[23] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[23]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[23]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[24] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[24]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[24]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[25] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[25]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[25]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[26] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[26]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[26]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[27] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[27]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[27]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[28] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[28]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[28]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[29] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[29]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[29]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[2] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[2]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[2]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[30] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[30]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[30]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[31] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[31]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[31]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[3] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[3]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[3]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[4] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[4]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[4]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[5] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[5]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[5]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[6] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[6]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[6]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[7] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[7]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[7]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[8] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[8]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[8]),
        .R(1'b0));
  FDRE \p_right_edge_load_reg_1161_reg[9] 
       (.C(aclk),
        .CE(Q),
        .D(\p_right_edge_load_reg_1161[9]_i_1_n_0 ),
        .Q(p_right_edge_load_reg_1161[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[0]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[0]),
        .I3(right_edge_new_3_reg_436[0]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[0]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[10]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[10]),
        .I3(right_edge_new_3_reg_436[10]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[10]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[11]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[11]),
        .I3(right_edge_new_3_reg_436[11]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[11]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[12]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[12]),
        .I3(right_edge_new_3_reg_436[12]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[12]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[13]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[13]),
        .I3(right_edge_new_3_reg_436[13]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[13]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[14]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[14]),
        .I3(right_edge_new_3_reg_436[14]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[14]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[15]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[15]),
        .I3(right_edge_new_3_reg_436[15]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[15]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[16]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[16]),
        .I3(right_edge_new_3_reg_436[16]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[16]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[17]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[17]),
        .I3(right_edge_new_3_reg_436[17]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[17]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[18]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[18]),
        .I3(right_edge_new_3_reg_436[18]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[18]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[19]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[19]),
        .I3(right_edge_new_3_reg_436[19]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[19]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[1]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[1]),
        .I3(right_edge_new_3_reg_436[1]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[1]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[20]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[20]),
        .I3(right_edge_new_3_reg_436[20]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[20]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[21]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[21]),
        .I3(right_edge_new_3_reg_436[21]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[21]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[22]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[22]),
        .I3(right_edge_new_3_reg_436[22]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[22]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[23]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[23]),
        .I3(right_edge_new_3_reg_436[23]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[23]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[24]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[24]),
        .I3(right_edge_new_3_reg_436[24]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[24]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[25]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[25]),
        .I3(right_edge_new_3_reg_436[25]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[25]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[26]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[26]),
        .I3(right_edge_new_3_reg_436[26]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[26]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[27]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[27]),
        .I3(right_edge_new_3_reg_436[27]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[27]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[28]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[28]),
        .I3(right_edge_new_3_reg_436[28]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[28]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[29]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[29]),
        .I3(right_edge_new_3_reg_436[29]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[29]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[2]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[2]),
        .I3(right_edge_new_3_reg_436[2]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[2]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[30]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[30]),
        .I3(right_edge_new_3_reg_436[30]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[30]));
  LUT5 #(
    .INIT(32'hF0807000)) 
    \right_edge[31]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(\ap_CS_fsm[0]_i_1_n_0 ),
        .I3(right_edge_flag_3_reg_426),
        .I4(right_edge_flag_2_reg_292),
        .O(right_edge0));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[31]_i_2 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[31]),
        .I3(right_edge_new_3_reg_436[31]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[31]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[3]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[3]),
        .I3(right_edge_new_3_reg_436[3]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[3]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[4]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[4]),
        .I3(right_edge_new_3_reg_436[4]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[4]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[5]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[5]),
        .I3(right_edge_new_3_reg_436[5]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[5]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[6]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[6]),
        .I3(right_edge_new_3_reg_436[6]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[6]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[7]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[7]),
        .I3(right_edge_new_3_reg_436[7]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[7]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[8]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[8]),
        .I3(right_edge_new_3_reg_436[8]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[8]));
  LUT4 #(
    .INIT(16'hF780)) 
    \right_edge[9]_i_1 
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(right_edge_new_2_reg_302[9]),
        .I3(right_edge_new_3_reg_436[9]),
        .O(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[9]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    \right_edge_flag_2_reg_292[0]_i_1 
       (.I0(tmp_4_fu_488_p2),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_4_reg_1124),
        .I3(p_0_in0_in),
        .O(\right_edge_flag_2_reg_292[0]_i_1_n_0 ));
  FDRE \right_edge_flag_2_reg_292_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\right_edge_flag_2_reg_292[0]_i_1_n_0 ),
        .Q(right_edge_flag_2_reg_292),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \right_edge_flag_3_reg_426[0]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(tmp_4_fu_488_p2),
        .I3(right_edge_flag_2_reg_292),
        .O(\right_edge_flag_3_reg_426[0]_i_1_n_0 ));
  FDRE \right_edge_flag_3_reg_426_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\right_edge_flag_3_reg_426[0]_i_1_n_0 ),
        .Q(right_edge_flag_3_reg_426),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[0]_i_1 
       (.I0(right_edge[0]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[0]),
        .O(\right_edge_loc_2_reg_314[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[10]_i_1 
       (.I0(right_edge[10]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[10]),
        .O(\right_edge_loc_2_reg_314[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[11]_i_1 
       (.I0(right_edge[11]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[11]),
        .O(\right_edge_loc_2_reg_314[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[12]_i_1 
       (.I0(right_edge[12]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[12]),
        .O(\right_edge_loc_2_reg_314[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[13]_i_1 
       (.I0(right_edge[13]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[13]),
        .O(\right_edge_loc_2_reg_314[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[14]_i_1 
       (.I0(right_edge[14]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[14]),
        .O(\right_edge_loc_2_reg_314[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[15]_i_1 
       (.I0(right_edge[15]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[15]),
        .O(\right_edge_loc_2_reg_314[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[16]_i_1 
       (.I0(right_edge[16]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[16]),
        .O(\right_edge_loc_2_reg_314[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[17]_i_1 
       (.I0(right_edge[17]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[17]),
        .O(\right_edge_loc_2_reg_314[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[18]_i_1 
       (.I0(right_edge[18]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[18]),
        .O(\right_edge_loc_2_reg_314[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[19]_i_1 
       (.I0(right_edge[19]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[19]),
        .O(\right_edge_loc_2_reg_314[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[1]_i_1 
       (.I0(right_edge[1]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[1]),
        .O(\right_edge_loc_2_reg_314[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[20]_i_1 
       (.I0(right_edge[20]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[20]),
        .O(\right_edge_loc_2_reg_314[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[21]_i_1 
       (.I0(right_edge[21]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[21]),
        .O(\right_edge_loc_2_reg_314[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[22]_i_1 
       (.I0(right_edge[22]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[22]),
        .O(\right_edge_loc_2_reg_314[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[23]_i_1 
       (.I0(right_edge[23]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[23]),
        .O(\right_edge_loc_2_reg_314[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[24]_i_1 
       (.I0(right_edge[24]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[24]),
        .O(\right_edge_loc_2_reg_314[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[25]_i_1 
       (.I0(right_edge[25]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[25]),
        .O(\right_edge_loc_2_reg_314[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[26]_i_1 
       (.I0(right_edge[26]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[26]),
        .O(\right_edge_loc_2_reg_314[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[27]_i_1 
       (.I0(right_edge[27]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[27]),
        .O(\right_edge_loc_2_reg_314[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[28]_i_1 
       (.I0(right_edge[28]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[28]),
        .O(\right_edge_loc_2_reg_314[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[29]_i_1 
       (.I0(right_edge[29]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[29]),
        .O(\right_edge_loc_2_reg_314[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[2]_i_1 
       (.I0(right_edge[2]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[2]),
        .O(\right_edge_loc_2_reg_314[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[30]_i_1 
       (.I0(right_edge[30]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1__0[30]),
        .O(\right_edge_loc_2_reg_314[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[31]_i_1 
       (.I0(right_edge[31]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(\right_edge_loc_2_reg_314[31]_i_2_n_0 ),
        .O(\right_edge_loc_2_reg_314[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \right_edge_loc_2_reg_314[31]_i_2 
       (.I0(p_current_x_cord_load_reg_1099[31]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[31]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[31]),
        .O(\right_edge_loc_2_reg_314[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[3]_i_1 
       (.I0(right_edge[3]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[3]),
        .O(\right_edge_loc_2_reg_314[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[4]_i_1 
       (.I0(right_edge[4]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[4]),
        .O(\right_edge_loc_2_reg_314[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[5]_i_1 
       (.I0(right_edge[5]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[5]),
        .O(\right_edge_loc_2_reg_314[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[6]_i_1 
       (.I0(right_edge[6]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[6]),
        .O(\right_edge_loc_2_reg_314[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[7]_i_1 
       (.I0(right_edge[7]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[7]),
        .O(\right_edge_loc_2_reg_314[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[8]_i_1 
       (.I0(right_edge[8]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[8]),
        .O(\right_edge_loc_2_reg_314[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \right_edge_loc_2_reg_314[9]_i_1 
       (.I0(right_edge[9]),
        .I1(tmp_4_fu_488_p2),
        .I2(\ap_CS_fsm_reg[0]_0 ),
        .I3(tmp_30_fu_801_p1[9]),
        .O(\right_edge_loc_2_reg_314[9]_i_1_n_0 ));
  FDRE \right_edge_loc_2_reg_314_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[0]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[0]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[10]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[10]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[11]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[11]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[12]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[12]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[13]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[13]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[14]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[14]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[15]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[15]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[16]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[16]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[17]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[17]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[18]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[18]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[19]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[19]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[1]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[1]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[20]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[20]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[21]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[21]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[22]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[22]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[23]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[23]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[24]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[24]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[25]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[25]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[26]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[26]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[27]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[27]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[28]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[28]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[29]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[29]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[2]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[2]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[30]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[30]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[31]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[31]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[3]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[3]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[4]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[4]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[5]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[5]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[6]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[6]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[7]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[7]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[8]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[8]),
        .R(1'b0));
  FDRE \right_edge_loc_2_reg_314_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\right_edge_loc_2_reg_314[9]_i_1_n_0 ),
        .Q(right_edge_loc_2_reg_314[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    \right_edge_new_2_reg_302[31]_i_1 
       (.I0(\ap_CS_fsm_reg[0]_0 ),
        .I1(p_0_in0_in),
        .I2(bottom_edge_flag_2_reg_2610),
        .O(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[0] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[0]),
        .Q(right_edge_new_2_reg_302[0]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[10] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[10]),
        .Q(right_edge_new_2_reg_302[10]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[11] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[11]),
        .Q(right_edge_new_2_reg_302[11]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[12] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[12]),
        .Q(right_edge_new_2_reg_302[12]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[13] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[13]),
        .Q(right_edge_new_2_reg_302[13]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[14] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[14]),
        .Q(right_edge_new_2_reg_302[14]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[15] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[15]),
        .Q(right_edge_new_2_reg_302[15]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[16] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[16]),
        .Q(right_edge_new_2_reg_302[16]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[17] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[17]),
        .Q(right_edge_new_2_reg_302[17]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[18] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[18]),
        .Q(right_edge_new_2_reg_302[18]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[19] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[19]),
        .Q(right_edge_new_2_reg_302[19]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[1] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[1]),
        .Q(right_edge_new_2_reg_302[1]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[20] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[20]),
        .Q(right_edge_new_2_reg_302[20]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[21] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[21]),
        .Q(right_edge_new_2_reg_302[21]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[22] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[22]),
        .Q(right_edge_new_2_reg_302[22]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[23] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[23]),
        .Q(right_edge_new_2_reg_302[23]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[24] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[24]),
        .Q(right_edge_new_2_reg_302[24]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[25] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[25]),
        .Q(right_edge_new_2_reg_302[25]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[26] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[26]),
        .Q(right_edge_new_2_reg_302[26]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[27] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[27]),
        .Q(right_edge_new_2_reg_302[27]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[28] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[28]),
        .Q(right_edge_new_2_reg_302[28]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[29] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[29]),
        .Q(right_edge_new_2_reg_302[29]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[2] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[2]),
        .Q(right_edge_new_2_reg_302[2]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[30] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[30]),
        .Q(right_edge_new_2_reg_302[30]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[31] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[31]),
        .Q(right_edge_new_2_reg_302[31]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[3] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[3]),
        .Q(right_edge_new_2_reg_302[3]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[4] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[4]),
        .Q(right_edge_new_2_reg_302[4]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[5] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[5]),
        .Q(right_edge_new_2_reg_302[5]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[6] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[6]),
        .Q(right_edge_new_2_reg_302[6]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[7] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[7]),
        .Q(right_edge_new_2_reg_302[7]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[8] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[8]),
        .Q(right_edge_new_2_reg_302[8]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_2_reg_302_reg[9] 
       (.C(aclk),
        .CE(bottom_edge_flag_2_reg_2610),
        .D(p_current_x_cord_load_reg_1099[9]),
        .Q(right_edge_new_2_reg_302[9]),
        .R(\right_edge_new_2_reg_302[31]_i_1_n_0 ));
  FDRE \right_edge_new_3_reg_436_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[0]),
        .Q(right_edge_new_3_reg_436[0]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[10]),
        .Q(right_edge_new_3_reg_436[10]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[11]),
        .Q(right_edge_new_3_reg_436[11]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[12]),
        .Q(right_edge_new_3_reg_436[12]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[13]),
        .Q(right_edge_new_3_reg_436[13]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[14]),
        .Q(right_edge_new_3_reg_436[14]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[15]),
        .Q(right_edge_new_3_reg_436[15]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[16]),
        .Q(right_edge_new_3_reg_436[16]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[17]),
        .Q(right_edge_new_3_reg_436[17]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[18]),
        .Q(right_edge_new_3_reg_436[18]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[19]),
        .Q(right_edge_new_3_reg_436[19]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[1]),
        .Q(right_edge_new_3_reg_436[1]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[20]),
        .Q(right_edge_new_3_reg_436[20]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[21]),
        .Q(right_edge_new_3_reg_436[21]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[22]),
        .Q(right_edge_new_3_reg_436[22]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[23]),
        .Q(right_edge_new_3_reg_436[23]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[24]),
        .Q(right_edge_new_3_reg_436[24]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[25]),
        .Q(right_edge_new_3_reg_436[25]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[26]),
        .Q(right_edge_new_3_reg_436[26]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[27]),
        .Q(right_edge_new_3_reg_436[27]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[28]),
        .Q(right_edge_new_3_reg_436[28]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[29]),
        .Q(right_edge_new_3_reg_436[29]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[2]),
        .Q(right_edge_new_3_reg_436[2]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[30]),
        .Q(right_edge_new_3_reg_436[30]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[31]),
        .Q(right_edge_new_3_reg_436[31]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[3]),
        .Q(right_edge_new_3_reg_436[3]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[4]),
        .Q(right_edge_new_3_reg_436[4]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[5]),
        .Q(right_edge_new_3_reg_436[5]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[6]),
        .Q(right_edge_new_3_reg_436[6]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[7]),
        .Q(right_edge_new_3_reg_436[7]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[8]),
        .Q(right_edge_new_3_reg_436[8]),
        .R(ap_NS_fsm14_out));
  FDRE \right_edge_new_3_reg_436_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(right_edge_new_2_reg_302[9]),
        .Q(right_edge_new_3_reg_436[9]),
        .R(ap_NS_fsm14_out));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[0] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[0]),
        .Q(right_edge[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[10] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[10]),
        .Q(right_edge[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[11] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[11]),
        .Q(right_edge[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[12] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[12]),
        .Q(right_edge[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[13] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[13]),
        .Q(right_edge[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[14] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[14]),
        .Q(right_edge[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[15] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[15]),
        .Q(right_edge[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[16] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[16]),
        .Q(right_edge[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[17] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[17]),
        .Q(right_edge[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[18] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[18]),
        .Q(right_edge[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[19] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[19]),
        .Q(right_edge[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[1] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[1]),
        .Q(right_edge[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[20] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[20]),
        .Q(right_edge[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[21] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[21]),
        .Q(right_edge[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[22] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[22]),
        .Q(right_edge[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[23] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[23]),
        .Q(right_edge[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[24] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[24]),
        .Q(right_edge[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[25] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[25]),
        .Q(right_edge[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[26] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[26]),
        .Q(right_edge[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[27] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[27]),
        .Q(right_edge[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[28] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[28]),
        .Q(right_edge[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[29] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[29]),
        .Q(right_edge[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[2] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[2]),
        .Q(right_edge[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[30] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[30]),
        .Q(right_edge[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[31] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[31]),
        .Q(right_edge[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[3] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[3]),
        .Q(right_edge[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[4] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[4]),
        .Q(right_edge[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[5] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[5]),
        .Q(right_edge[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[6] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[6]),
        .Q(right_edge[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[7] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[7]),
        .Q(right_edge[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[8] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[8]),
        .Q(right_edge[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \right_edge_reg[9] 
       (.C(aclk),
        .CE(right_edge0),
        .D(ap_phi_mux_right_edge_new_3_phi_fu_440_p4[9]),
        .Q(right_edge[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \state[0]_i_3 
       (.I0(sig_det_color_cord_cord_out_V_full_n),
        .I1(tmp_10_reg_1181),
        .I2(tmp_5_reg_1176),
        .I3(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I4(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .O(\FSM_sequential_state_reg[1] ));
  CARRY4 target_above_fu_675_p2_carry
       (.CI(1'b0),
        .CO({CO,target_above_fu_675_p2_carry_n_1,target_above_fu_675_p2_carry_n_2,target_above_fu_675_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_target_above_fu_675_p2_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    target_above_fu_675_p2_carry_i_17
       (.I0(target_above_fu_675_p2_carry_i_19_n_0),
        .I1(target_color[1]),
        .I2(target_color[0]),
        .O(\led_exist_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h08)) 
    target_above_fu_675_p2_carry_i_18
       (.I0(target_above_fu_675_p2_carry_i_19_n_0),
        .I1(target_color[0]),
        .I2(target_color[1]),
        .O(\led_exist_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    target_above_fu_675_p2_carry_i_19
       (.I0(target_color[2]),
        .I1(target_color[3]),
        .I2(target_color[5]),
        .I3(target_color[4]),
        .I4(target_color[6]),
        .I5(target_color[7]),
        .O(target_above_fu_675_p2_carry_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \tmp_10_reg_1181[0]_i_1 
       (.I0(p_0_in),
        .I1(tmp_5_fu_810_p2),
        .I2(ap_CS_fsm_state2),
        .I3(tmp_10_reg_1181),
        .O(\tmp_10_reg_1181[0]_i_1_n_0 ));
  FDRE \tmp_10_reg_1181_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tmp_10_reg_1181[0]_i_1_n_0 ),
        .Q(tmp_10_reg_1181),
        .R(1'b0));
  CARRY4 tmp_11_fu_819_p2_carry
       (.CI(1'b0),
        .CO({tmp_11_fu_819_p2_carry_n_0,tmp_11_fu_819_p2_carry_n_1,tmp_11_fu_819_p2_carry_n_2,tmp_11_fu_819_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_30_fu_801_p1[3:0]),
        .O(tmp_11_fu_819_p2[3:0]),
        .S({tmp_11_fu_819_p2_carry_i_5_n_0,tmp_11_fu_819_p2_carry_i_6_n_0,tmp_11_fu_819_p2_carry_i_7_n_0,tmp_11_fu_819_p2_carry_i_8_n_0}));
  CARRY4 tmp_11_fu_819_p2_carry__0
       (.CI(tmp_11_fu_819_p2_carry_n_0),
        .CO({tmp_11_fu_819_p2_carry__0_n_0,tmp_11_fu_819_p2_carry__0_n_1,tmp_11_fu_819_p2_carry__0_n_2,tmp_11_fu_819_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_30_fu_801_p1[7:4]),
        .O(tmp_11_fu_819_p2[7:4]),
        .S({tmp_11_fu_819_p2_carry__0_i_5_n_0,tmp_11_fu_819_p2_carry__0_i_6_n_0,tmp_11_fu_819_p2_carry__0_i_7_n_0,tmp_11_fu_819_p2_carry__0_i_8_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__0_i_1
       (.I0(p_current_x_cord_load_reg_1099[7]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[7]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[7]),
        .O(tmp_30_fu_801_p1[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__0_i_2
       (.I0(p_current_x_cord_load_reg_1099[6]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[6]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[6]),
        .O(tmp_30_fu_801_p1[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__0_i_3
       (.I0(p_current_x_cord_load_reg_1099[5]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[5]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[5]),
        .O(tmp_30_fu_801_p1[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__0_i_4
       (.I0(p_current_x_cord_load_reg_1099[4]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[4]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[4]),
        .O(tmp_30_fu_801_p1[4]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__0_i_5
       (.I0(tmp_30_fu_801_p1[7]),
        .I1(left_edge_loc_2_reg_223[7]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[7]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[7]),
        .O(tmp_11_fu_819_p2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__0_i_6
       (.I0(tmp_30_fu_801_p1[6]),
        .I1(left_edge_loc_2_reg_223[6]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[6]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[6]),
        .O(tmp_11_fu_819_p2_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__0_i_7
       (.I0(tmp_30_fu_801_p1[5]),
        .I1(left_edge_loc_2_reg_223[5]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[5]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[5]),
        .O(tmp_11_fu_819_p2_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__0_i_8
       (.I0(tmp_30_fu_801_p1[4]),
        .I1(left_edge_loc_2_reg_223[4]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[4]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[4]),
        .O(tmp_11_fu_819_p2_carry__0_i_8_n_0));
  CARRY4 tmp_11_fu_819_p2_carry__1
       (.CI(tmp_11_fu_819_p2_carry__0_n_0),
        .CO({tmp_11_fu_819_p2_carry__1_n_0,tmp_11_fu_819_p2_carry__1_n_1,tmp_11_fu_819_p2_carry__1_n_2,tmp_11_fu_819_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_30_fu_801_p1[11:8]),
        .O(tmp_11_fu_819_p2[11:8]),
        .S({tmp_11_fu_819_p2_carry__1_i_5_n_0,tmp_11_fu_819_p2_carry__1_i_6_n_0,tmp_11_fu_819_p2_carry__1_i_7_n_0,tmp_11_fu_819_p2_carry__1_i_8_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__1_i_1
       (.I0(p_current_x_cord_load_reg_1099[11]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[11]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[11]),
        .O(tmp_30_fu_801_p1[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__1_i_2
       (.I0(p_current_x_cord_load_reg_1099[10]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[10]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[10]),
        .O(tmp_30_fu_801_p1[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__1_i_3
       (.I0(p_current_x_cord_load_reg_1099[9]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[9]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[9]),
        .O(tmp_30_fu_801_p1[9]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__1_i_4
       (.I0(p_current_x_cord_load_reg_1099[8]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[8]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[8]),
        .O(tmp_30_fu_801_p1[8]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__1_i_5
       (.I0(tmp_30_fu_801_p1[11]),
        .I1(left_edge_loc_2_reg_223[11]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[11]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[11]),
        .O(tmp_11_fu_819_p2_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__1_i_6
       (.I0(tmp_30_fu_801_p1[10]),
        .I1(left_edge_loc_2_reg_223[10]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[10]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[10]),
        .O(tmp_11_fu_819_p2_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__1_i_7
       (.I0(tmp_30_fu_801_p1[9]),
        .I1(left_edge_loc_2_reg_223[9]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[9]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[9]),
        .O(tmp_11_fu_819_p2_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__1_i_8
       (.I0(tmp_30_fu_801_p1[8]),
        .I1(left_edge_loc_2_reg_223[8]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[8]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[8]),
        .O(tmp_11_fu_819_p2_carry__1_i_8_n_0));
  CARRY4 tmp_11_fu_819_p2_carry__2
       (.CI(tmp_11_fu_819_p2_carry__1_n_0),
        .CO({tmp_11_fu_819_p2_carry__2_n_0,tmp_11_fu_819_p2_carry__2_n_1,tmp_11_fu_819_p2_carry__2_n_2,tmp_11_fu_819_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_30_fu_801_p1[15:12]),
        .O(tmp_11_fu_819_p2[15:12]),
        .S({tmp_11_fu_819_p2_carry__2_i_5_n_0,tmp_11_fu_819_p2_carry__2_i_6_n_0,tmp_11_fu_819_p2_carry__2_i_7_n_0,tmp_11_fu_819_p2_carry__2_i_8_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__2_i_1
       (.I0(p_current_x_cord_load_reg_1099[15]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[15]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[15]),
        .O(tmp_30_fu_801_p1[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__2_i_2
       (.I0(p_current_x_cord_load_reg_1099[14]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[14]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[14]),
        .O(tmp_30_fu_801_p1[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__2_i_3
       (.I0(p_current_x_cord_load_reg_1099[13]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[13]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[13]),
        .O(tmp_30_fu_801_p1[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__2_i_4
       (.I0(p_current_x_cord_load_reg_1099[12]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[12]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[12]),
        .O(tmp_30_fu_801_p1[12]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__2_i_5
       (.I0(tmp_30_fu_801_p1[15]),
        .I1(left_edge_loc_2_reg_223[15]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[15]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[15]),
        .O(tmp_11_fu_819_p2_carry__2_i_5_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__2_i_6
       (.I0(tmp_30_fu_801_p1[14]),
        .I1(left_edge_loc_2_reg_223[14]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[14]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[14]),
        .O(tmp_11_fu_819_p2_carry__2_i_6_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__2_i_7
       (.I0(tmp_30_fu_801_p1[13]),
        .I1(left_edge_loc_2_reg_223[13]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[13]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[13]),
        .O(tmp_11_fu_819_p2_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__2_i_8
       (.I0(tmp_30_fu_801_p1[12]),
        .I1(left_edge_loc_2_reg_223[12]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[12]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[12]),
        .O(tmp_11_fu_819_p2_carry__2_i_8_n_0));
  CARRY4 tmp_11_fu_819_p2_carry__3
       (.CI(tmp_11_fu_819_p2_carry__2_n_0),
        .CO({tmp_11_fu_819_p2_carry__3_n_0,tmp_11_fu_819_p2_carry__3_n_1,tmp_11_fu_819_p2_carry__3_n_2,tmp_11_fu_819_p2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_30_fu_801_p1__0[19:16]),
        .O({NLW_tmp_11_fu_819_p2_carry__3_O_UNCONNECTED[3:1],tmp_11_fu_819_p2[16]}),
        .S({tmp_11_fu_819_p2_carry__3_i_5_n_0,tmp_11_fu_819_p2_carry__3_i_6_n_0,tmp_11_fu_819_p2_carry__3_i_7_n_0,tmp_11_fu_819_p2_carry__3_i_8_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__3_i_1
       (.I0(p_current_x_cord_load_reg_1099[19]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[19]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[19]),
        .O(tmp_30_fu_801_p1__0[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__3_i_2
       (.I0(p_current_x_cord_load_reg_1099[18]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[18]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[18]),
        .O(tmp_30_fu_801_p1__0[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__3_i_3
       (.I0(p_current_x_cord_load_reg_1099[17]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[17]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[17]),
        .O(tmp_30_fu_801_p1__0[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__3_i_4
       (.I0(p_current_x_cord_load_reg_1099[16]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[16]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[16]),
        .O(tmp_30_fu_801_p1__0[16]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__3_i_5
       (.I0(tmp_30_fu_801_p1__0[19]),
        .I1(left_edge_loc_2_reg_223[19]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[19]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[19]),
        .O(tmp_11_fu_819_p2_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__3_i_6
       (.I0(tmp_30_fu_801_p1__0[18]),
        .I1(left_edge_loc_2_reg_223[18]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[18]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[18]),
        .O(tmp_11_fu_819_p2_carry__3_i_6_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__3_i_7
       (.I0(tmp_30_fu_801_p1__0[17]),
        .I1(left_edge_loc_2_reg_223[17]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[17]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[17]),
        .O(tmp_11_fu_819_p2_carry__3_i_7_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__3_i_8
       (.I0(tmp_30_fu_801_p1__0[16]),
        .I1(left_edge_loc_2_reg_223[16]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[16]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[16]),
        .O(tmp_11_fu_819_p2_carry__3_i_8_n_0));
  CARRY4 tmp_11_fu_819_p2_carry__4
       (.CI(tmp_11_fu_819_p2_carry__3_n_0),
        .CO({tmp_11_fu_819_p2_carry__4_n_0,tmp_11_fu_819_p2_carry__4_n_1,tmp_11_fu_819_p2_carry__4_n_2,tmp_11_fu_819_p2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_30_fu_801_p1__0[23:20]),
        .O(NLW_tmp_11_fu_819_p2_carry__4_O_UNCONNECTED[3:0]),
        .S({tmp_11_fu_819_p2_carry__4_i_5_n_0,tmp_11_fu_819_p2_carry__4_i_6_n_0,tmp_11_fu_819_p2_carry__4_i_7_n_0,tmp_11_fu_819_p2_carry__4_i_8_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__4_i_1
       (.I0(p_current_x_cord_load_reg_1099[23]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[23]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[23]),
        .O(tmp_30_fu_801_p1__0[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__4_i_2
       (.I0(p_current_x_cord_load_reg_1099[22]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[22]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[22]),
        .O(tmp_30_fu_801_p1__0[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__4_i_3
       (.I0(p_current_x_cord_load_reg_1099[21]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[21]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[21]),
        .O(tmp_30_fu_801_p1__0[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__4_i_4
       (.I0(p_current_x_cord_load_reg_1099[20]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[20]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[20]),
        .O(tmp_30_fu_801_p1__0[20]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__4_i_5
       (.I0(tmp_30_fu_801_p1__0[23]),
        .I1(left_edge_loc_2_reg_223[23]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[23]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[23]),
        .O(tmp_11_fu_819_p2_carry__4_i_5_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__4_i_6
       (.I0(tmp_30_fu_801_p1__0[22]),
        .I1(left_edge_loc_2_reg_223[22]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[22]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[22]),
        .O(tmp_11_fu_819_p2_carry__4_i_6_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__4_i_7
       (.I0(tmp_30_fu_801_p1__0[21]),
        .I1(left_edge_loc_2_reg_223[21]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[21]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[21]),
        .O(tmp_11_fu_819_p2_carry__4_i_7_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__4_i_8
       (.I0(tmp_30_fu_801_p1__0[20]),
        .I1(left_edge_loc_2_reg_223[20]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[20]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[20]),
        .O(tmp_11_fu_819_p2_carry__4_i_8_n_0));
  CARRY4 tmp_11_fu_819_p2_carry__5
       (.CI(tmp_11_fu_819_p2_carry__4_n_0),
        .CO({tmp_11_fu_819_p2_carry__5_n_0,tmp_11_fu_819_p2_carry__5_n_1,tmp_11_fu_819_p2_carry__5_n_2,tmp_11_fu_819_p2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_30_fu_801_p1__0[27:24]),
        .O(NLW_tmp_11_fu_819_p2_carry__5_O_UNCONNECTED[3:0]),
        .S({tmp_11_fu_819_p2_carry__5_i_5_n_0,tmp_11_fu_819_p2_carry__5_i_6_n_0,tmp_11_fu_819_p2_carry__5_i_7_n_0,tmp_11_fu_819_p2_carry__5_i_8_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__5_i_1
       (.I0(p_current_x_cord_load_reg_1099[27]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[27]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[27]),
        .O(tmp_30_fu_801_p1__0[27]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__5_i_2
       (.I0(p_current_x_cord_load_reg_1099[26]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[26]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[26]),
        .O(tmp_30_fu_801_p1__0[26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__5_i_3
       (.I0(p_current_x_cord_load_reg_1099[25]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[25]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[25]),
        .O(tmp_30_fu_801_p1__0[25]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__5_i_4
       (.I0(p_current_x_cord_load_reg_1099[24]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[24]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[24]),
        .O(tmp_30_fu_801_p1__0[24]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__5_i_5
       (.I0(tmp_30_fu_801_p1__0[27]),
        .I1(left_edge_loc_2_reg_223[27]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[27]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[27]),
        .O(tmp_11_fu_819_p2_carry__5_i_5_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__5_i_6
       (.I0(tmp_30_fu_801_p1__0[26]),
        .I1(left_edge_loc_2_reg_223[26]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[26]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[26]),
        .O(tmp_11_fu_819_p2_carry__5_i_6_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__5_i_7
       (.I0(tmp_30_fu_801_p1__0[25]),
        .I1(left_edge_loc_2_reg_223[25]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[25]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[25]),
        .O(tmp_11_fu_819_p2_carry__5_i_7_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__5_i_8
       (.I0(tmp_30_fu_801_p1__0[24]),
        .I1(left_edge_loc_2_reg_223[24]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[24]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[24]),
        .O(tmp_11_fu_819_p2_carry__5_i_8_n_0));
  CARRY4 tmp_11_fu_819_p2_carry__6
       (.CI(tmp_11_fu_819_p2_carry__5_n_0),
        .CO({NLW_tmp_11_fu_819_p2_carry__6_CO_UNCONNECTED[3],tmp_11_fu_819_p2_carry__6_n_1,tmp_11_fu_819_p2_carry__6_n_2,tmp_11_fu_819_p2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_30_fu_801_p1__0[30:28]}),
        .O(tmp_11_fu_819_p2[31:28]),
        .S({tmp_11_fu_819_p2_carry__6_i_4_n_0,tmp_11_fu_819_p2_carry__6_i_5_n_0,tmp_11_fu_819_p2_carry__6_i_6_n_0,tmp_11_fu_819_p2_carry__6_i_7_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__6_i_1
       (.I0(p_current_x_cord_load_reg_1099[30]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[30]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[30]),
        .O(tmp_30_fu_801_p1__0[30]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__6_i_2
       (.I0(p_current_x_cord_load_reg_1099[29]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[29]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[29]),
        .O(tmp_30_fu_801_p1__0[29]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry__6_i_3
       (.I0(p_current_x_cord_load_reg_1099[28]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[28]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[28]),
        .O(tmp_30_fu_801_p1__0[28]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    tmp_11_fu_819_p2_carry__6_i_4
       (.I0(left_edge_loc_2_reg_223[31]),
        .I1(bottom_edge_flag_2_reg_2610),
        .I2(width_left_edge_load_reg_1140[31]),
        .I3(p_0_in1_in),
        .I4(p_current_x_cord_load_reg_1099[31]),
        .I5(\right_edge_loc_2_reg_314[31]_i_2_n_0 ),
        .O(tmp_11_fu_819_p2_carry__6_i_4_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__6_i_5
       (.I0(tmp_30_fu_801_p1__0[30]),
        .I1(left_edge_loc_2_reg_223[30]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[30]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[30]),
        .O(tmp_11_fu_819_p2_carry__6_i_5_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__6_i_6
       (.I0(tmp_30_fu_801_p1__0[29]),
        .I1(left_edge_loc_2_reg_223[29]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[29]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[29]),
        .O(tmp_11_fu_819_p2_carry__6_i_6_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry__6_i_7
       (.I0(tmp_30_fu_801_p1__0[28]),
        .I1(left_edge_loc_2_reg_223[28]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[28]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[28]),
        .O(tmp_11_fu_819_p2_carry__6_i_7_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry_i_1
       (.I0(p_current_x_cord_load_reg_1099[3]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[3]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[3]),
        .O(tmp_30_fu_801_p1[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry_i_2
       (.I0(p_current_x_cord_load_reg_1099[2]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[2]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[2]),
        .O(tmp_30_fu_801_p1[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry_i_3
       (.I0(p_current_x_cord_load_reg_1099[1]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[1]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[1]),
        .O(tmp_30_fu_801_p1[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_11_fu_819_p2_carry_i_4
       (.I0(p_current_x_cord_load_reg_1099[0]),
        .I1(p_0_in0_in),
        .I2(p_right_edge_load_reg_1161[0]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(right_edge_loc_2_reg_314[0]),
        .O(tmp_30_fu_801_p1[0]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry_i_5
       (.I0(tmp_30_fu_801_p1[3]),
        .I1(left_edge_loc_2_reg_223[3]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[3]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[3]),
        .O(tmp_11_fu_819_p2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry_i_6
       (.I0(tmp_30_fu_801_p1[2]),
        .I1(left_edge_loc_2_reg_223[2]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[2]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[2]),
        .O(tmp_11_fu_819_p2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry_i_7
       (.I0(tmp_30_fu_801_p1[1]),
        .I1(left_edge_loc_2_reg_223[1]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[1]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[1]),
        .O(tmp_11_fu_819_p2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_11_fu_819_p2_carry_i_8
       (.I0(tmp_30_fu_801_p1[0]),
        .I1(left_edge_loc_2_reg_223[0]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(width_left_edge_load_reg_1140[0]),
        .I4(p_0_in1_in),
        .I5(p_current_x_cord_load_reg_1099[0]),
        .O(tmp_11_fu_819_p2_carry_i_8_n_0));
  FDRE \tmp_11_reg_1190_reg[0] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[0]),
        .Q(tmp_11_reg_1190[0]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[10] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[10]),
        .Q(tmp_11_reg_1190[10]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[11] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[11]),
        .Q(tmp_11_reg_1190[11]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[12] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[12]),
        .Q(tmp_11_reg_1190[12]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[13] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[13]),
        .Q(tmp_11_reg_1190[13]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[14] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[14]),
        .Q(tmp_11_reg_1190[14]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[15] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[15]),
        .Q(tmp_11_reg_1190[15]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[16] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[16]),
        .Q(tmp_11_reg_1190[16]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[1] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[1]),
        .Q(tmp_11_reg_1190[1]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[2] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[2]),
        .Q(tmp_11_reg_1190[2]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[31] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[31]),
        .Q(tmp_11_reg_1190[31]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[3] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[3]),
        .Q(tmp_11_reg_1190[3]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[4] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[4]),
        .Q(tmp_11_reg_1190[4]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[5] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[5]),
        .Q(tmp_11_reg_1190[5]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[6] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[6]),
        .Q(tmp_11_reg_1190[6]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[7] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[7]),
        .Q(tmp_11_reg_1190[7]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[8] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[8]),
        .Q(tmp_11_reg_1190[8]),
        .R(1'b0));
  FDRE \tmp_11_reg_1190_reg[9] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_11_fu_819_p2[9]),
        .Q(tmp_11_reg_1190[9]),
        .R(1'b0));
  CARRY4 tmp_14_fu_825_p2_carry
       (.CI(1'b0),
        .CO({tmp_14_fu_825_p2_carry_n_0,tmp_14_fu_825_p2_carry_n_1,tmp_14_fu_825_p2_carry_n_2,tmp_14_fu_825_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_29_fu_797_p1[3:0]),
        .O(tmp_14_fu_825_p2[3:0]),
        .S({tmp_14_fu_825_p2_carry_i_1_n_0,tmp_14_fu_825_p2_carry_i_2_n_0,tmp_14_fu_825_p2_carry_i_3_n_0,tmp_14_fu_825_p2_carry_i_4_n_0}));
  CARRY4 tmp_14_fu_825_p2_carry__0
       (.CI(tmp_14_fu_825_p2_carry_n_0),
        .CO({tmp_14_fu_825_p2_carry__0_n_0,tmp_14_fu_825_p2_carry__0_n_1,tmp_14_fu_825_p2_carry__0_n_2,tmp_14_fu_825_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_29_fu_797_p1[7:4]),
        .O(tmp_14_fu_825_p2[7:4]),
        .S({tmp_14_fu_825_p2_carry__0_i_1_n_0,tmp_14_fu_825_p2_carry__0_i_2_n_0,tmp_14_fu_825_p2_carry__0_i_3_n_0,tmp_14_fu_825_p2_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__0_i_1
       (.I0(tmp_29_fu_797_p1[7]),
        .I1(upper_edge_loc_2_reg_252[7]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[7]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[7]),
        .O(tmp_14_fu_825_p2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__0_i_2
       (.I0(tmp_29_fu_797_p1[6]),
        .I1(upper_edge_loc_2_reg_252[6]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[6]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[6]),
        .O(tmp_14_fu_825_p2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__0_i_3
       (.I0(tmp_29_fu_797_p1[5]),
        .I1(upper_edge_loc_2_reg_252[5]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[5]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[5]),
        .O(tmp_14_fu_825_p2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__0_i_4
       (.I0(tmp_29_fu_797_p1[4]),
        .I1(upper_edge_loc_2_reg_252[4]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[4]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[4]),
        .O(tmp_14_fu_825_p2_carry__0_i_4_n_0));
  CARRY4 tmp_14_fu_825_p2_carry__1
       (.CI(tmp_14_fu_825_p2_carry__0_n_0),
        .CO({tmp_14_fu_825_p2_carry__1_n_0,tmp_14_fu_825_p2_carry__1_n_1,tmp_14_fu_825_p2_carry__1_n_2,tmp_14_fu_825_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_29_fu_797_p1[11:8]),
        .O(tmp_14_fu_825_p2[11:8]),
        .S({tmp_14_fu_825_p2_carry__1_i_1_n_0,tmp_14_fu_825_p2_carry__1_i_2_n_0,tmp_14_fu_825_p2_carry__1_i_3_n_0,tmp_14_fu_825_p2_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__1_i_1
       (.I0(tmp_29_fu_797_p1[11]),
        .I1(upper_edge_loc_2_reg_252[11]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[11]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[11]),
        .O(tmp_14_fu_825_p2_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__1_i_2
       (.I0(tmp_29_fu_797_p1[10]),
        .I1(upper_edge_loc_2_reg_252[10]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[10]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[10]),
        .O(tmp_14_fu_825_p2_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__1_i_3
       (.I0(tmp_29_fu_797_p1[9]),
        .I1(upper_edge_loc_2_reg_252[9]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[9]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[9]),
        .O(tmp_14_fu_825_p2_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__1_i_4
       (.I0(tmp_29_fu_797_p1[8]),
        .I1(upper_edge_loc_2_reg_252[8]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[8]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[8]),
        .O(tmp_14_fu_825_p2_carry__1_i_4_n_0));
  CARRY4 tmp_14_fu_825_p2_carry__2
       (.CI(tmp_14_fu_825_p2_carry__1_n_0),
        .CO({tmp_14_fu_825_p2_carry__2_n_0,tmp_14_fu_825_p2_carry__2_n_1,tmp_14_fu_825_p2_carry__2_n_2,tmp_14_fu_825_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_29_fu_797_p1[15:12]),
        .O(tmp_14_fu_825_p2[15:12]),
        .S({tmp_14_fu_825_p2_carry__2_i_1_n_0,tmp_14_fu_825_p2_carry__2_i_2_n_0,tmp_14_fu_825_p2_carry__2_i_3_n_0,tmp_14_fu_825_p2_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    tmp_14_fu_825_p2_carry__2_i_1
       (.I0(bottom_edge_loc_2_reg_283[15]),
        .I1(bottom_edge_flag_2_reg_2610),
        .I2(p_bottom_edge_load_reg_1154[15]),
        .I3(p_0_in3_in),
        .I4(p_current_y_cord_load_reg_1111[15]),
        .I5(tmp_34_fu_835_p1[15]),
        .O(tmp_14_fu_825_p2_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__2_i_2
       (.I0(tmp_29_fu_797_p1[14]),
        .I1(upper_edge_loc_2_reg_252[14]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[14]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[14]),
        .O(tmp_14_fu_825_p2_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__2_i_3
       (.I0(tmp_29_fu_797_p1[13]),
        .I1(upper_edge_loc_2_reg_252[13]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[13]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[13]),
        .O(tmp_14_fu_825_p2_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__2_i_4
       (.I0(tmp_29_fu_797_p1[12]),
        .I1(upper_edge_loc_2_reg_252[12]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[12]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[12]),
        .O(tmp_14_fu_825_p2_carry__2_i_4_n_0));
  CARRY4 tmp_14_fu_825_p2_carry__3
       (.CI(tmp_14_fu_825_p2_carry__2_n_0),
        .CO({tmp_14_fu_825_p2_carry__3_n_0,tmp_14_fu_825_p2_carry__3_n_1,tmp_14_fu_825_p2_carry__3_n_2,tmp_14_fu_825_p2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_29_fu_797_p1__0[19:16]),
        .O({NLW_tmp_14_fu_825_p2_carry__3_O_UNCONNECTED[3:1],tmp_14_fu_825_p2[16]}),
        .S({tmp_14_fu_825_p2_carry__3_i_5_n_0,tmp_14_fu_825_p2_carry__3_i_6_n_0,tmp_14_fu_825_p2_carry__3_i_7_n_0,tmp_14_fu_825_p2_carry__3_i_8_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__3_i_1
       (.I0(p_current_y_cord_load_reg_1111[19]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[19]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[19]),
        .O(tmp_29_fu_797_p1__0[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__3_i_2
       (.I0(p_current_y_cord_load_reg_1111[18]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[18]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[18]),
        .O(tmp_29_fu_797_p1__0[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__3_i_3
       (.I0(p_current_y_cord_load_reg_1111[17]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[17]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[17]),
        .O(tmp_29_fu_797_p1__0[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__3_i_4
       (.I0(p_current_y_cord_load_reg_1111[16]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[16]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[16]),
        .O(tmp_29_fu_797_p1__0[16]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__3_i_5
       (.I0(tmp_29_fu_797_p1__0[19]),
        .I1(upper_edge_loc_2_reg_252[19]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[19]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[19]),
        .O(tmp_14_fu_825_p2_carry__3_i_5_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__3_i_6
       (.I0(tmp_29_fu_797_p1__0[18]),
        .I1(upper_edge_loc_2_reg_252[18]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[18]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[18]),
        .O(tmp_14_fu_825_p2_carry__3_i_6_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__3_i_7
       (.I0(tmp_29_fu_797_p1__0[17]),
        .I1(upper_edge_loc_2_reg_252[17]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[17]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[17]),
        .O(tmp_14_fu_825_p2_carry__3_i_7_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__3_i_8
       (.I0(tmp_29_fu_797_p1__0[16]),
        .I1(upper_edge_loc_2_reg_252[16]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[16]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[16]),
        .O(tmp_14_fu_825_p2_carry__3_i_8_n_0));
  CARRY4 tmp_14_fu_825_p2_carry__4
       (.CI(tmp_14_fu_825_p2_carry__3_n_0),
        .CO({tmp_14_fu_825_p2_carry__4_n_0,tmp_14_fu_825_p2_carry__4_n_1,tmp_14_fu_825_p2_carry__4_n_2,tmp_14_fu_825_p2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_29_fu_797_p1__0[23:20]),
        .O(NLW_tmp_14_fu_825_p2_carry__4_O_UNCONNECTED[3:0]),
        .S({tmp_14_fu_825_p2_carry__4_i_5_n_0,tmp_14_fu_825_p2_carry__4_i_6_n_0,tmp_14_fu_825_p2_carry__4_i_7_n_0,tmp_14_fu_825_p2_carry__4_i_8_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__4_i_1
       (.I0(p_current_y_cord_load_reg_1111[23]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[23]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[23]),
        .O(tmp_29_fu_797_p1__0[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__4_i_2
       (.I0(p_current_y_cord_load_reg_1111[22]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[22]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[22]),
        .O(tmp_29_fu_797_p1__0[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__4_i_3
       (.I0(p_current_y_cord_load_reg_1111[21]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[21]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[21]),
        .O(tmp_29_fu_797_p1__0[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__4_i_4
       (.I0(p_current_y_cord_load_reg_1111[20]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[20]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[20]),
        .O(tmp_29_fu_797_p1__0[20]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__4_i_5
       (.I0(tmp_29_fu_797_p1__0[23]),
        .I1(upper_edge_loc_2_reg_252[23]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[23]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[23]),
        .O(tmp_14_fu_825_p2_carry__4_i_5_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__4_i_6
       (.I0(tmp_29_fu_797_p1__0[22]),
        .I1(upper_edge_loc_2_reg_252[22]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[22]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[22]),
        .O(tmp_14_fu_825_p2_carry__4_i_6_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__4_i_7
       (.I0(tmp_29_fu_797_p1__0[21]),
        .I1(upper_edge_loc_2_reg_252[21]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[21]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[21]),
        .O(tmp_14_fu_825_p2_carry__4_i_7_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__4_i_8
       (.I0(tmp_29_fu_797_p1__0[20]),
        .I1(upper_edge_loc_2_reg_252[20]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[20]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[20]),
        .O(tmp_14_fu_825_p2_carry__4_i_8_n_0));
  CARRY4 tmp_14_fu_825_p2_carry__5
       (.CI(tmp_14_fu_825_p2_carry__4_n_0),
        .CO({tmp_14_fu_825_p2_carry__5_n_0,tmp_14_fu_825_p2_carry__5_n_1,tmp_14_fu_825_p2_carry__5_n_2,tmp_14_fu_825_p2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(tmp_29_fu_797_p1__0[27:24]),
        .O(NLW_tmp_14_fu_825_p2_carry__5_O_UNCONNECTED[3:0]),
        .S({tmp_14_fu_825_p2_carry__5_i_5_n_0,tmp_14_fu_825_p2_carry__5_i_6_n_0,tmp_14_fu_825_p2_carry__5_i_7_n_0,tmp_14_fu_825_p2_carry__5_i_8_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__5_i_1
       (.I0(p_current_y_cord_load_reg_1111[27]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[27]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[27]),
        .O(tmp_29_fu_797_p1__0[27]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__5_i_2
       (.I0(p_current_y_cord_load_reg_1111[26]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[26]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[26]),
        .O(tmp_29_fu_797_p1__0[26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__5_i_3
       (.I0(p_current_y_cord_load_reg_1111[25]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[25]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[25]),
        .O(tmp_29_fu_797_p1__0[25]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__5_i_4
       (.I0(p_current_y_cord_load_reg_1111[24]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[24]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[24]),
        .O(tmp_29_fu_797_p1__0[24]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__5_i_5
       (.I0(tmp_29_fu_797_p1__0[27]),
        .I1(upper_edge_loc_2_reg_252[27]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[27]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[27]),
        .O(tmp_14_fu_825_p2_carry__5_i_5_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__5_i_6
       (.I0(tmp_29_fu_797_p1__0[26]),
        .I1(upper_edge_loc_2_reg_252[26]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[26]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[26]),
        .O(tmp_14_fu_825_p2_carry__5_i_6_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__5_i_7
       (.I0(tmp_29_fu_797_p1__0[25]),
        .I1(upper_edge_loc_2_reg_252[25]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[25]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[25]),
        .O(tmp_14_fu_825_p2_carry__5_i_7_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__5_i_8
       (.I0(tmp_29_fu_797_p1__0[24]),
        .I1(upper_edge_loc_2_reg_252[24]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[24]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[24]),
        .O(tmp_14_fu_825_p2_carry__5_i_8_n_0));
  CARRY4 tmp_14_fu_825_p2_carry__6
       (.CI(tmp_14_fu_825_p2_carry__5_n_0),
        .CO({NLW_tmp_14_fu_825_p2_carry__6_CO_UNCONNECTED[3],tmp_14_fu_825_p2_carry__6_n_1,tmp_14_fu_825_p2_carry__6_n_2,tmp_14_fu_825_p2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,tmp_29_fu_797_p1__0[30:28]}),
        .O(tmp_14_fu_825_p2[31:28]),
        .S({tmp_14_fu_825_p2_carry__6_i_4_n_0,tmp_14_fu_825_p2_carry__6_i_5_n_0,tmp_14_fu_825_p2_carry__6_i_6_n_0,tmp_14_fu_825_p2_carry__6_i_7_n_0}));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__6_i_1
       (.I0(p_current_y_cord_load_reg_1111[30]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[30]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[30]),
        .O(tmp_29_fu_797_p1__0[30]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__6_i_2
       (.I0(p_current_y_cord_load_reg_1111[29]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[29]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[29]),
        .O(tmp_29_fu_797_p1__0[29]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    tmp_14_fu_825_p2_carry__6_i_3
       (.I0(p_current_y_cord_load_reg_1111[28]),
        .I1(p_0_in3_in),
        .I2(p_bottom_edge_load_reg_1154[28]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(bottom_edge_loc_2_reg_283[28]),
        .O(tmp_29_fu_797_p1__0[28]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    tmp_14_fu_825_p2_carry__6_i_4
       (.I0(upper_edge_loc_2_reg_252[31]),
        .I1(bottom_edge_flag_2_reg_2610),
        .I2(height_upper_edge_lo_reg_1147[31]),
        .I3(tmp_8_fu_773_p2_carry__2_n_0),
        .I4(p_current_y_cord_load_reg_1111[31]),
        .I5(\bottom_edge_loc_2_reg_283[31]_i_2_n_0 ),
        .O(tmp_14_fu_825_p2_carry__6_i_4_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__6_i_5
       (.I0(tmp_29_fu_797_p1__0[30]),
        .I1(upper_edge_loc_2_reg_252[30]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[30]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[30]),
        .O(tmp_14_fu_825_p2_carry__6_i_5_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__6_i_6
       (.I0(tmp_29_fu_797_p1__0[29]),
        .I1(upper_edge_loc_2_reg_252[29]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[29]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[29]),
        .O(tmp_14_fu_825_p2_carry__6_i_6_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry__6_i_7
       (.I0(tmp_29_fu_797_p1__0[28]),
        .I1(upper_edge_loc_2_reg_252[28]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[28]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[28]),
        .O(tmp_14_fu_825_p2_carry__6_i_7_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry_i_1
       (.I0(tmp_29_fu_797_p1[3]),
        .I1(upper_edge_loc_2_reg_252[3]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[3]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[3]),
        .O(tmp_14_fu_825_p2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry_i_2
       (.I0(tmp_29_fu_797_p1[2]),
        .I1(upper_edge_loc_2_reg_252[2]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[2]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[2]),
        .O(tmp_14_fu_825_p2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry_i_3
       (.I0(tmp_29_fu_797_p1[1]),
        .I1(upper_edge_loc_2_reg_252[1]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[1]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[1]),
        .O(tmp_14_fu_825_p2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    tmp_14_fu_825_p2_carry_i_4
       (.I0(tmp_29_fu_797_p1[0]),
        .I1(upper_edge_loc_2_reg_252[0]),
        .I2(bottom_edge_flag_2_reg_2610),
        .I3(height_upper_edge_lo_reg_1147[0]),
        .I4(tmp_8_fu_773_p2_carry__2_n_0),
        .I5(p_current_y_cord_load_reg_1111[0]),
        .O(tmp_14_fu_825_p2_carry_i_4_n_0));
  FDRE \tmp_14_reg_1197_reg[0] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[0]),
        .Q(tmp_14_reg_1197[0]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[10] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[10]),
        .Q(tmp_14_reg_1197[10]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[11] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[11]),
        .Q(tmp_14_reg_1197[11]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[12] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[12]),
        .Q(tmp_14_reg_1197[12]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[13] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[13]),
        .Q(tmp_14_reg_1197[13]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[14] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[14]),
        .Q(tmp_14_reg_1197[14]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[15] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[15]),
        .Q(tmp_14_reg_1197[15]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[16] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[16]),
        .Q(tmp_14_reg_1197[16]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[1] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[1]),
        .Q(tmp_14_reg_1197[1]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[2] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[2]),
        .Q(tmp_14_reg_1197[2]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[31] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[31]),
        .Q(tmp_14_reg_1197[31]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[3] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[3]),
        .Q(tmp_14_reg_1197[3]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[4] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[4]),
        .Q(tmp_14_reg_1197[4]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[5] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[5]),
        .Q(tmp_14_reg_1197[5]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[6] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[6]),
        .Q(tmp_14_reg_1197[6]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[7] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[7]),
        .Q(tmp_14_reg_1197[7]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[8] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[8]),
        .Q(tmp_14_reg_1197[8]),
        .R(1'b0));
  FDRE \tmp_14_reg_1197_reg[9] 
       (.C(aclk),
        .CE(\p_4_reg_1204[63]_i_2_n_0 ),
        .D(tmp_14_fu_825_p2[9]),
        .Q(tmp_14_reg_1197[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \tmp_4_reg_1124[0]_i_1 
       (.I0(\tmp_4_reg_1124[0]_i_2_n_0 ),
        .I1(\tmp_4_reg_1124[0]_i_3_n_0 ),
        .I2(\tmp_4_reg_1124[0]_i_4_n_0 ),
        .I3(\tmp_4_reg_1124[0]_i_5_n_0 ),
        .I4(\tmp_4_reg_1124[0]_i_6_n_0 ),
        .I5(\tmp_4_reg_1124[0]_i_7_n_0 ),
        .O(tmp_4_fu_488_p2));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \tmp_4_reg_1124[0]_i_10 
       (.I0(current_y_cord[26]),
        .I1(current_x_cord[26]),
        .I2(current_y_cord[27]),
        .I3(reset),
        .I4(current_x_cord[27]),
        .O(\tmp_4_reg_1124[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \tmp_4_reg_1124[0]_i_11 
       (.I0(current_x_cord[30]),
        .I1(current_y_cord[30]),
        .I2(current_x_cord[31]),
        .I3(reset),
        .I4(current_y_cord[31]),
        .O(\tmp_4_reg_1124[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \tmp_4_reg_1124[0]_i_12 
       (.I0(current_x_cord[0]),
        .I1(current_y_cord[0]),
        .I2(current_y_cord[1]),
        .I3(reset),
        .I4(current_x_cord[1]),
        .O(\tmp_4_reg_1124[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \tmp_4_reg_1124[0]_i_13 
       (.I0(current_x_cord[2]),
        .I1(current_y_cord[2]),
        .I2(current_y_cord[3]),
        .I3(reset),
        .I4(current_x_cord[3]),
        .O(\tmp_4_reg_1124[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \tmp_4_reg_1124[0]_i_14 
       (.I0(current_x_cord[5]),
        .I1(current_y_cord[5]),
        .I2(current_x_cord[4]),
        .I3(reset),
        .I4(current_y_cord[4]),
        .O(\tmp_4_reg_1124[0]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \tmp_4_reg_1124[0]_i_15 
       (.I0(current_x_cord[7]),
        .I1(current_y_cord[7]),
        .I2(current_x_cord[6]),
        .I3(reset),
        .I4(current_y_cord[6]),
        .O(\tmp_4_reg_1124[0]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \tmp_4_reg_1124[0]_i_16 
       (.I0(current_x_cord[8]),
        .I1(current_y_cord[8]),
        .I2(current_y_cord[9]),
        .I3(reset),
        .I4(current_x_cord[9]),
        .O(\tmp_4_reg_1124[0]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \tmp_4_reg_1124[0]_i_17 
       (.I0(current_x_cord[10]),
        .I1(current_y_cord[10]),
        .I2(current_y_cord[11]),
        .I3(reset),
        .I4(current_x_cord[11]),
        .O(\tmp_4_reg_1124[0]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \tmp_4_reg_1124[0]_i_18 
       (.I0(current_x_cord[13]),
        .I1(current_y_cord[13]),
        .I2(current_x_cord[12]),
        .I3(reset),
        .I4(current_y_cord[12]),
        .O(\tmp_4_reg_1124[0]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \tmp_4_reg_1124[0]_i_19 
       (.I0(current_x_cord[15]),
        .I1(current_y_cord[15]),
        .I2(current_x_cord[14]),
        .I3(reset),
        .I4(current_y_cord[14]),
        .O(\tmp_4_reg_1124[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33333332)) 
    \tmp_4_reg_1124[0]_i_2 
       (.I0(current_x_cord[17]),
        .I1(reset),
        .I2(current_y_cord[17]),
        .I3(current_y_cord[16]),
        .I4(current_x_cord[16]),
        .I5(\tmp_4_reg_1124[0]_i_8_n_0 ),
        .O(\tmp_4_reg_1124[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33333332)) 
    \tmp_4_reg_1124[0]_i_3 
       (.I0(current_y_cord[20]),
        .I1(reset),
        .I2(current_x_cord[20]),
        .I3(current_x_cord[21]),
        .I4(current_y_cord[21]),
        .I5(\tmp_4_reg_1124[0]_i_9_n_0 ),
        .O(\tmp_4_reg_1124[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCCCCCCD)) 
    \tmp_4_reg_1124[0]_i_4 
       (.I0(current_x_cord[25]),
        .I1(reset),
        .I2(current_y_cord[25]),
        .I3(current_y_cord[24]),
        .I4(current_x_cord[24]),
        .I5(\tmp_4_reg_1124[0]_i_10_n_0 ),
        .O(\tmp_4_reg_1124[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF33333332)) 
    \tmp_4_reg_1124[0]_i_5 
       (.I0(current_y_cord[28]),
        .I1(reset),
        .I2(current_x_cord[28]),
        .I3(current_x_cord[29]),
        .I4(current_y_cord[29]),
        .I5(\tmp_4_reg_1124[0]_i_11_n_0 ),
        .O(\tmp_4_reg_1124[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tmp_4_reg_1124[0]_i_6 
       (.I0(\tmp_4_reg_1124[0]_i_12_n_0 ),
        .I1(\tmp_4_reg_1124[0]_i_13_n_0 ),
        .I2(\tmp_4_reg_1124[0]_i_14_n_0 ),
        .I3(\tmp_4_reg_1124[0]_i_15_n_0 ),
        .O(\tmp_4_reg_1124[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tmp_4_reg_1124[0]_i_7 
       (.I0(\tmp_4_reg_1124[0]_i_16_n_0 ),
        .I1(\tmp_4_reg_1124[0]_i_17_n_0 ),
        .I2(\tmp_4_reg_1124[0]_i_18_n_0 ),
        .I3(\tmp_4_reg_1124[0]_i_19_n_0 ),
        .O(\tmp_4_reg_1124[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \tmp_4_reg_1124[0]_i_8 
       (.I0(current_y_cord[18]),
        .I1(current_x_cord[18]),
        .I2(current_y_cord[19]),
        .I3(reset),
        .I4(current_x_cord[19]),
        .O(\tmp_4_reg_1124[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00FF00FE)) 
    \tmp_4_reg_1124[0]_i_9 
       (.I0(current_x_cord[23]),
        .I1(current_y_cord[23]),
        .I2(current_x_cord[22]),
        .I3(reset),
        .I4(current_y_cord[22]),
        .O(\tmp_4_reg_1124[0]_i_9_n_0 ));
  FDRE \tmp_4_reg_1124_reg[0] 
       (.C(aclk),
        .CE(Q),
        .D(tmp_4_fu_488_p2),
        .Q(tmp_4_reg_1124),
        .R(1'b0));
  CARRY4 tmp_5_fu_810_p2_carry
       (.CI(1'b0),
        .CO({tmp_5_fu_810_p2_carry_n_0,tmp_5_fu_810_p2_carry_n_1,tmp_5_fu_810_p2_carry_n_2,tmp_5_fu_810_p2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tmp_5_fu_810_p2_carry_O_UNCONNECTED[3:0]),
        .S({tmp_5_fu_810_p2_carry_i_1_n_0,tmp_5_fu_810_p2_carry_i_2_n_0,tmp_5_fu_810_p2_carry_i_3_n_0,tmp_5_fu_810_p2_carry_i_4_n_0}));
  CARRY4 tmp_5_fu_810_p2_carry__0
       (.CI(tmp_5_fu_810_p2_carry_n_0),
        .CO({tmp_5_fu_810_p2_carry__0_n_0,tmp_5_fu_810_p2_carry__0_n_1,tmp_5_fu_810_p2_carry__0_n_2,tmp_5_fu_810_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tmp_5_fu_810_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({tmp_5_fu_810_p2_carry__0_i_1_n_0,tmp_5_fu_810_p2_carry__0_i_2_n_0,tmp_5_fu_810_p2_carry__0_i_3_n_0,tmp_5_fu_810_p2_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tmp_5_fu_810_p2_carry__0_i_1
       (.I0(tmp_9_fu_805_p2[21]),
        .I1(p_current_y_cord_load_reg_1111[21]),
        .I2(tmp_9_fu_805_p2[22]),
        .I3(p_current_y_cord_load_reg_1111[22]),
        .I4(p_current_y_cord_load_reg_1111[23]),
        .I5(tmp_9_fu_805_p2[23]),
        .O(tmp_5_fu_810_p2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tmp_5_fu_810_p2_carry__0_i_2
       (.I0(tmp_9_fu_805_p2[18]),
        .I1(p_current_y_cord_load_reg_1111[18]),
        .I2(tmp_9_fu_805_p2[19]),
        .I3(p_current_y_cord_load_reg_1111[19]),
        .I4(p_current_y_cord_load_reg_1111[20]),
        .I5(tmp_9_fu_805_p2[20]),
        .O(tmp_5_fu_810_p2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tmp_5_fu_810_p2_carry__0_i_3
       (.I0(tmp_9_fu_805_p2[16]),
        .I1(p_current_y_cord_load_reg_1111[16]),
        .I2(tmp_9_fu_805_p2[17]),
        .I3(p_current_y_cord_load_reg_1111[17]),
        .I4(p_current_y_cord_load_reg_1111[15]),
        .I5(tmp_9_fu_805_p2[15]),
        .O(tmp_5_fu_810_p2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tmp_5_fu_810_p2_carry__0_i_4
       (.I0(tmp_9_fu_805_p2[13]),
        .I1(p_current_y_cord_load_reg_1111[13]),
        .I2(tmp_9_fu_805_p2[14]),
        .I3(p_current_y_cord_load_reg_1111[14]),
        .I4(p_current_y_cord_load_reg_1111[12]),
        .I5(tmp_9_fu_805_p2[12]),
        .O(tmp_5_fu_810_p2_carry__0_i_4_n_0));
  CARRY4 tmp_5_fu_810_p2_carry__1
       (.CI(tmp_5_fu_810_p2_carry__0_n_0),
        .CO({NLW_tmp_5_fu_810_p2_carry__1_CO_UNCONNECTED[3],tmp_5_fu_810_p2,tmp_5_fu_810_p2_carry__1_n_2,tmp_5_fu_810_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tmp_5_fu_810_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,tmp_5_fu_810_p2_carry__1_i_1_n_0,tmp_5_fu_810_p2_carry__1_i_2_n_0,tmp_5_fu_810_p2_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_5_fu_810_p2_carry__1_i_1
       (.I0(p_current_y_cord_load_reg_1111[31]),
        .I1(tmp_9_fu_805_p2[31]),
        .I2(p_current_y_cord_load_reg_1111[30]),
        .I3(tmp_9_fu_805_p2[30]),
        .O(tmp_5_fu_810_p2_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tmp_5_fu_810_p2_carry__1_i_2
       (.I0(tmp_9_fu_805_p2[27]),
        .I1(p_current_y_cord_load_reg_1111[27]),
        .I2(tmp_9_fu_805_p2[29]),
        .I3(p_current_y_cord_load_reg_1111[29]),
        .I4(p_current_y_cord_load_reg_1111[28]),
        .I5(tmp_9_fu_805_p2[28]),
        .O(tmp_5_fu_810_p2_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tmp_5_fu_810_p2_carry__1_i_3
       (.I0(tmp_9_fu_805_p2[25]),
        .I1(p_current_y_cord_load_reg_1111[25]),
        .I2(tmp_9_fu_805_p2[26]),
        .I3(p_current_y_cord_load_reg_1111[26]),
        .I4(p_current_y_cord_load_reg_1111[24]),
        .I5(tmp_9_fu_805_p2[24]),
        .O(tmp_5_fu_810_p2_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tmp_5_fu_810_p2_carry_i_1
       (.I0(tmp_9_fu_805_p2[10]),
        .I1(p_current_y_cord_load_reg_1111[10]),
        .I2(tmp_9_fu_805_p2[11]),
        .I3(p_current_y_cord_load_reg_1111[11]),
        .I4(p_current_y_cord_load_reg_1111[9]),
        .I5(tmp_9_fu_805_p2[9]),
        .O(tmp_5_fu_810_p2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tmp_5_fu_810_p2_carry_i_2
       (.I0(tmp_9_fu_805_p2[6]),
        .I1(p_current_y_cord_load_reg_1111[6]),
        .I2(tmp_9_fu_805_p2[7]),
        .I3(p_current_y_cord_load_reg_1111[7]),
        .I4(p_current_y_cord_load_reg_1111[8]),
        .I5(tmp_9_fu_805_p2[8]),
        .O(tmp_5_fu_810_p2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tmp_5_fu_810_p2_carry_i_3
       (.I0(tmp_9_fu_805_p2[4]),
        .I1(p_current_y_cord_load_reg_1111[4]),
        .I2(tmp_9_fu_805_p2[5]),
        .I3(p_current_y_cord_load_reg_1111[5]),
        .I4(p_current_y_cord_load_reg_1111[3]),
        .I5(tmp_9_fu_805_p2[3]),
        .O(tmp_5_fu_810_p2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    tmp_5_fu_810_p2_carry_i_4
       (.I0(p_current_y_cord_load_reg_1111[0]),
        .I1(height[0]),
        .I2(tmp_9_fu_805_p2[1]),
        .I3(p_current_y_cord_load_reg_1111[1]),
        .I4(tmp_9_fu_805_p2[2]),
        .I5(p_current_y_cord_load_reg_1111[2]),
        .O(tmp_5_fu_810_p2_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_5_reg_1176[0]_i_1 
       (.I0(tmp_5_fu_810_p2),
        .I1(ap_CS_fsm_state2),
        .I2(tmp_5_reg_1176),
        .O(\tmp_5_reg_1176[0]_i_1_n_0 ));
  FDRE \tmp_5_reg_1176_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\tmp_5_reg_1176[0]_i_1_n_0 ),
        .Q(tmp_5_reg_1176),
        .R(1'b0));
  CARRY4 tmp_6_fu_724_p2_carry
       (.CI(1'b0),
        .CO({tmp_6_fu_724_p2_carry_n_0,tmp_6_fu_724_p2_carry_n_1,tmp_6_fu_724_p2_carry_n_2,tmp_6_fu_724_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_6_fu_724_p2_carry_i_1_n_0,tmp_6_fu_724_p2_carry_i_2_n_0,tmp_6_fu_724_p2_carry_i_3_n_0,tmp_6_fu_724_p2_carry_i_4_n_0}),
        .O(NLW_tmp_6_fu_724_p2_carry_O_UNCONNECTED[3:0]),
        .S({tmp_6_fu_724_p2_carry_i_5_n_0,tmp_6_fu_724_p2_carry_i_6_n_0,tmp_6_fu_724_p2_carry_i_7_n_0,tmp_6_fu_724_p2_carry_i_8_n_0}));
  CARRY4 tmp_6_fu_724_p2_carry__0
       (.CI(tmp_6_fu_724_p2_carry_n_0),
        .CO({tmp_6_fu_724_p2_carry__0_n_0,tmp_6_fu_724_p2_carry__0_n_1,tmp_6_fu_724_p2_carry__0_n_2,tmp_6_fu_724_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_6_fu_724_p2_carry__0_i_1_n_0,tmp_6_fu_724_p2_carry__0_i_2_n_0,tmp_6_fu_724_p2_carry__0_i_3_n_0,tmp_6_fu_724_p2_carry__0_i_4_n_0}),
        .O(NLW_tmp_6_fu_724_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({tmp_6_fu_724_p2_carry__0_i_5_n_0,tmp_6_fu_724_p2_carry__0_i_6_n_0,tmp_6_fu_724_p2_carry__0_i_7_n_0,tmp_6_fu_724_p2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry__0_i_1
       (.I0(p_current_x_cord_load_reg_1099[15]),
        .I1(width_left_edge_load_reg_1140[15]),
        .I2(width_left_edge_load_reg_1140[14]),
        .I3(p_current_x_cord_load_reg_1099[14]),
        .O(tmp_6_fu_724_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry__0_i_2
       (.I0(p_current_x_cord_load_reg_1099[13]),
        .I1(width_left_edge_load_reg_1140[13]),
        .I2(width_left_edge_load_reg_1140[12]),
        .I3(p_current_x_cord_load_reg_1099[12]),
        .O(tmp_6_fu_724_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry__0_i_3
       (.I0(p_current_x_cord_load_reg_1099[11]),
        .I1(width_left_edge_load_reg_1140[11]),
        .I2(width_left_edge_load_reg_1140[10]),
        .I3(p_current_x_cord_load_reg_1099[10]),
        .O(tmp_6_fu_724_p2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry__0_i_4
       (.I0(p_current_x_cord_load_reg_1099[9]),
        .I1(width_left_edge_load_reg_1140[9]),
        .I2(width_left_edge_load_reg_1140[8]),
        .I3(p_current_x_cord_load_reg_1099[8]),
        .O(tmp_6_fu_724_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry__0_i_5
       (.I0(width_left_edge_load_reg_1140[15]),
        .I1(p_current_x_cord_load_reg_1099[15]),
        .I2(width_left_edge_load_reg_1140[14]),
        .I3(p_current_x_cord_load_reg_1099[14]),
        .O(tmp_6_fu_724_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry__0_i_6
       (.I0(width_left_edge_load_reg_1140[13]),
        .I1(p_current_x_cord_load_reg_1099[13]),
        .I2(width_left_edge_load_reg_1140[12]),
        .I3(p_current_x_cord_load_reg_1099[12]),
        .O(tmp_6_fu_724_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry__0_i_7
       (.I0(width_left_edge_load_reg_1140[11]),
        .I1(p_current_x_cord_load_reg_1099[11]),
        .I2(width_left_edge_load_reg_1140[10]),
        .I3(p_current_x_cord_load_reg_1099[10]),
        .O(tmp_6_fu_724_p2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry__0_i_8
       (.I0(width_left_edge_load_reg_1140[9]),
        .I1(p_current_x_cord_load_reg_1099[9]),
        .I2(width_left_edge_load_reg_1140[8]),
        .I3(p_current_x_cord_load_reg_1099[8]),
        .O(tmp_6_fu_724_p2_carry__0_i_8_n_0));
  CARRY4 tmp_6_fu_724_p2_carry__1
       (.CI(tmp_6_fu_724_p2_carry__0_n_0),
        .CO({tmp_6_fu_724_p2_carry__1_n_0,tmp_6_fu_724_p2_carry__1_n_1,tmp_6_fu_724_p2_carry__1_n_2,tmp_6_fu_724_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_6_fu_724_p2_carry__1_i_1_n_0,tmp_6_fu_724_p2_carry__1_i_2_n_0,tmp_6_fu_724_p2_carry__1_i_3_n_0,tmp_6_fu_724_p2_carry__1_i_4_n_0}),
        .O(NLW_tmp_6_fu_724_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({tmp_6_fu_724_p2_carry__1_i_5_n_0,tmp_6_fu_724_p2_carry__1_i_6_n_0,tmp_6_fu_724_p2_carry__1_i_7_n_0,tmp_6_fu_724_p2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry__1_i_1
       (.I0(p_current_x_cord_load_reg_1099[23]),
        .I1(width_left_edge_load_reg_1140[23]),
        .I2(width_left_edge_load_reg_1140[22]),
        .I3(p_current_x_cord_load_reg_1099[22]),
        .O(tmp_6_fu_724_p2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry__1_i_2
       (.I0(p_current_x_cord_load_reg_1099[21]),
        .I1(width_left_edge_load_reg_1140[21]),
        .I2(width_left_edge_load_reg_1140[20]),
        .I3(p_current_x_cord_load_reg_1099[20]),
        .O(tmp_6_fu_724_p2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry__1_i_3
       (.I0(p_current_x_cord_load_reg_1099[19]),
        .I1(width_left_edge_load_reg_1140[19]),
        .I2(width_left_edge_load_reg_1140[18]),
        .I3(p_current_x_cord_load_reg_1099[18]),
        .O(tmp_6_fu_724_p2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry__1_i_4
       (.I0(p_current_x_cord_load_reg_1099[17]),
        .I1(width_left_edge_load_reg_1140[17]),
        .I2(width_left_edge_load_reg_1140[16]),
        .I3(p_current_x_cord_load_reg_1099[16]),
        .O(tmp_6_fu_724_p2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry__1_i_5
       (.I0(width_left_edge_load_reg_1140[23]),
        .I1(p_current_x_cord_load_reg_1099[23]),
        .I2(width_left_edge_load_reg_1140[22]),
        .I3(p_current_x_cord_load_reg_1099[22]),
        .O(tmp_6_fu_724_p2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry__1_i_6
       (.I0(width_left_edge_load_reg_1140[21]),
        .I1(p_current_x_cord_load_reg_1099[21]),
        .I2(width_left_edge_load_reg_1140[20]),
        .I3(p_current_x_cord_load_reg_1099[20]),
        .O(tmp_6_fu_724_p2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry__1_i_7
       (.I0(width_left_edge_load_reg_1140[19]),
        .I1(p_current_x_cord_load_reg_1099[19]),
        .I2(width_left_edge_load_reg_1140[18]),
        .I3(p_current_x_cord_load_reg_1099[18]),
        .O(tmp_6_fu_724_p2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry__1_i_8
       (.I0(width_left_edge_load_reg_1140[17]),
        .I1(p_current_x_cord_load_reg_1099[17]),
        .I2(width_left_edge_load_reg_1140[16]),
        .I3(p_current_x_cord_load_reg_1099[16]),
        .O(tmp_6_fu_724_p2_carry__1_i_8_n_0));
  CARRY4 tmp_6_fu_724_p2_carry__2
       (.CI(tmp_6_fu_724_p2_carry__1_n_0),
        .CO({p_0_in1_in,tmp_6_fu_724_p2_carry__2_n_1,tmp_6_fu_724_p2_carry__2_n_2,tmp_6_fu_724_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_6_fu_724_p2_carry__2_i_1_n_0,tmp_6_fu_724_p2_carry__2_i_2_n_0,tmp_6_fu_724_p2_carry__2_i_3_n_0,tmp_6_fu_724_p2_carry__2_i_4_n_0}),
        .O(NLW_tmp_6_fu_724_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({tmp_6_fu_724_p2_carry__2_i_5_n_0,tmp_6_fu_724_p2_carry__2_i_6_n_0,tmp_6_fu_724_p2_carry__2_i_7_n_0,tmp_6_fu_724_p2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_6_fu_724_p2_carry__2_i_1
       (.I0(p_current_x_cord_load_reg_1099[31]),
        .I1(width_left_edge_load_reg_1140[31]),
        .I2(width_left_edge_load_reg_1140[30]),
        .I3(p_current_x_cord_load_reg_1099[30]),
        .O(tmp_6_fu_724_p2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry__2_i_2
       (.I0(p_current_x_cord_load_reg_1099[29]),
        .I1(width_left_edge_load_reg_1140[29]),
        .I2(width_left_edge_load_reg_1140[28]),
        .I3(p_current_x_cord_load_reg_1099[28]),
        .O(tmp_6_fu_724_p2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry__2_i_3
       (.I0(p_current_x_cord_load_reg_1099[27]),
        .I1(width_left_edge_load_reg_1140[27]),
        .I2(width_left_edge_load_reg_1140[26]),
        .I3(p_current_x_cord_load_reg_1099[26]),
        .O(tmp_6_fu_724_p2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry__2_i_4
       (.I0(p_current_x_cord_load_reg_1099[25]),
        .I1(width_left_edge_load_reg_1140[25]),
        .I2(width_left_edge_load_reg_1140[24]),
        .I3(p_current_x_cord_load_reg_1099[24]),
        .O(tmp_6_fu_724_p2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry__2_i_5
       (.I0(width_left_edge_load_reg_1140[31]),
        .I1(p_current_x_cord_load_reg_1099[31]),
        .I2(width_left_edge_load_reg_1140[30]),
        .I3(p_current_x_cord_load_reg_1099[30]),
        .O(tmp_6_fu_724_p2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry__2_i_6
       (.I0(width_left_edge_load_reg_1140[29]),
        .I1(p_current_x_cord_load_reg_1099[29]),
        .I2(width_left_edge_load_reg_1140[28]),
        .I3(p_current_x_cord_load_reg_1099[28]),
        .O(tmp_6_fu_724_p2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry__2_i_7
       (.I0(width_left_edge_load_reg_1140[27]),
        .I1(p_current_x_cord_load_reg_1099[27]),
        .I2(width_left_edge_load_reg_1140[26]),
        .I3(p_current_x_cord_load_reg_1099[26]),
        .O(tmp_6_fu_724_p2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry__2_i_8
       (.I0(width_left_edge_load_reg_1140[25]),
        .I1(p_current_x_cord_load_reg_1099[25]),
        .I2(width_left_edge_load_reg_1140[24]),
        .I3(p_current_x_cord_load_reg_1099[24]),
        .O(tmp_6_fu_724_p2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry_i_1
       (.I0(p_current_x_cord_load_reg_1099[7]),
        .I1(width_left_edge_load_reg_1140[7]),
        .I2(width_left_edge_load_reg_1140[6]),
        .I3(p_current_x_cord_load_reg_1099[6]),
        .O(tmp_6_fu_724_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry_i_2
       (.I0(p_current_x_cord_load_reg_1099[5]),
        .I1(width_left_edge_load_reg_1140[5]),
        .I2(width_left_edge_load_reg_1140[4]),
        .I3(p_current_x_cord_load_reg_1099[4]),
        .O(tmp_6_fu_724_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry_i_3
       (.I0(p_current_x_cord_load_reg_1099[3]),
        .I1(width_left_edge_load_reg_1140[3]),
        .I2(width_left_edge_load_reg_1140[2]),
        .I3(p_current_x_cord_load_reg_1099[2]),
        .O(tmp_6_fu_724_p2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_6_fu_724_p2_carry_i_4
       (.I0(p_current_x_cord_load_reg_1099[1]),
        .I1(width_left_edge_load_reg_1140[1]),
        .I2(width_left_edge_load_reg_1140[0]),
        .I3(p_current_x_cord_load_reg_1099[0]),
        .O(tmp_6_fu_724_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry_i_5
       (.I0(width_left_edge_load_reg_1140[7]),
        .I1(p_current_x_cord_load_reg_1099[7]),
        .I2(width_left_edge_load_reg_1140[6]),
        .I3(p_current_x_cord_load_reg_1099[6]),
        .O(tmp_6_fu_724_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry_i_6
       (.I0(width_left_edge_load_reg_1140[5]),
        .I1(p_current_x_cord_load_reg_1099[5]),
        .I2(width_left_edge_load_reg_1140[4]),
        .I3(p_current_x_cord_load_reg_1099[4]),
        .O(tmp_6_fu_724_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry_i_7
       (.I0(width_left_edge_load_reg_1140[3]),
        .I1(p_current_x_cord_load_reg_1099[3]),
        .I2(width_left_edge_load_reg_1140[2]),
        .I3(p_current_x_cord_load_reg_1099[2]),
        .O(tmp_6_fu_724_p2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_6_fu_724_p2_carry_i_8
       (.I0(width_left_edge_load_reg_1140[1]),
        .I1(p_current_x_cord_load_reg_1099[1]),
        .I2(width_left_edge_load_reg_1140[0]),
        .I3(p_current_x_cord_load_reg_1099[0]),
        .O(tmp_6_fu_724_p2_carry_i_8_n_0));
  CARRY4 tmp_7_fu_748_p2_carry
       (.CI(1'b0),
        .CO({tmp_7_fu_748_p2_carry_n_0,tmp_7_fu_748_p2_carry_n_1,tmp_7_fu_748_p2_carry_n_2,tmp_7_fu_748_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_7_fu_748_p2_carry_i_1_n_0,tmp_7_fu_748_p2_carry_i_2_n_0,tmp_7_fu_748_p2_carry_i_3_n_0,tmp_7_fu_748_p2_carry_i_4_n_0}),
        .O(NLW_tmp_7_fu_748_p2_carry_O_UNCONNECTED[3:0]),
        .S({tmp_7_fu_748_p2_carry_i_5_n_0,tmp_7_fu_748_p2_carry_i_6_n_0,tmp_7_fu_748_p2_carry_i_7_n_0,tmp_7_fu_748_p2_carry_i_8_n_0}));
  CARRY4 tmp_7_fu_748_p2_carry__0
       (.CI(tmp_7_fu_748_p2_carry_n_0),
        .CO({tmp_7_fu_748_p2_carry__0_n_0,tmp_7_fu_748_p2_carry__0_n_1,tmp_7_fu_748_p2_carry__0_n_2,tmp_7_fu_748_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_7_fu_748_p2_carry__0_i_1_n_0,tmp_7_fu_748_p2_carry__0_i_2_n_0,tmp_7_fu_748_p2_carry__0_i_3_n_0,tmp_7_fu_748_p2_carry__0_i_4_n_0}),
        .O(NLW_tmp_7_fu_748_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({tmp_7_fu_748_p2_carry__0_i_5_n_0,tmp_7_fu_748_p2_carry__0_i_6_n_0,tmp_7_fu_748_p2_carry__0_i_7_n_0,tmp_7_fu_748_p2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry__0_i_1
       (.I0(p_current_y_cord_load_reg_1111[15]),
        .I1(p_bottom_edge_load_reg_1154[15]),
        .I2(p_current_y_cord_load_reg_1111[14]),
        .I3(p_bottom_edge_load_reg_1154[14]),
        .O(tmp_7_fu_748_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry__0_i_2
       (.I0(p_current_y_cord_load_reg_1111[13]),
        .I1(p_bottom_edge_load_reg_1154[13]),
        .I2(p_current_y_cord_load_reg_1111[12]),
        .I3(p_bottom_edge_load_reg_1154[12]),
        .O(tmp_7_fu_748_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry__0_i_3
       (.I0(p_current_y_cord_load_reg_1111[11]),
        .I1(p_bottom_edge_load_reg_1154[11]),
        .I2(p_current_y_cord_load_reg_1111[10]),
        .I3(p_bottom_edge_load_reg_1154[10]),
        .O(tmp_7_fu_748_p2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry__0_i_4
       (.I0(p_current_y_cord_load_reg_1111[9]),
        .I1(p_bottom_edge_load_reg_1154[9]),
        .I2(p_current_y_cord_load_reg_1111[8]),
        .I3(p_bottom_edge_load_reg_1154[8]),
        .O(tmp_7_fu_748_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry__0_i_5
       (.I0(p_bottom_edge_load_reg_1154[15]),
        .I1(p_current_y_cord_load_reg_1111[15]),
        .I2(p_bottom_edge_load_reg_1154[14]),
        .I3(p_current_y_cord_load_reg_1111[14]),
        .O(tmp_7_fu_748_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry__0_i_6
       (.I0(p_bottom_edge_load_reg_1154[13]),
        .I1(p_current_y_cord_load_reg_1111[13]),
        .I2(p_bottom_edge_load_reg_1154[12]),
        .I3(p_current_y_cord_load_reg_1111[12]),
        .O(tmp_7_fu_748_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry__0_i_7
       (.I0(p_bottom_edge_load_reg_1154[11]),
        .I1(p_current_y_cord_load_reg_1111[11]),
        .I2(p_bottom_edge_load_reg_1154[10]),
        .I3(p_current_y_cord_load_reg_1111[10]),
        .O(tmp_7_fu_748_p2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry__0_i_8
       (.I0(p_bottom_edge_load_reg_1154[9]),
        .I1(p_current_y_cord_load_reg_1111[9]),
        .I2(p_bottom_edge_load_reg_1154[8]),
        .I3(p_current_y_cord_load_reg_1111[8]),
        .O(tmp_7_fu_748_p2_carry__0_i_8_n_0));
  CARRY4 tmp_7_fu_748_p2_carry__1
       (.CI(tmp_7_fu_748_p2_carry__0_n_0),
        .CO({tmp_7_fu_748_p2_carry__1_n_0,tmp_7_fu_748_p2_carry__1_n_1,tmp_7_fu_748_p2_carry__1_n_2,tmp_7_fu_748_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_7_fu_748_p2_carry__1_i_1_n_0,tmp_7_fu_748_p2_carry__1_i_2_n_0,tmp_7_fu_748_p2_carry__1_i_3_n_0,tmp_7_fu_748_p2_carry__1_i_4_n_0}),
        .O(NLW_tmp_7_fu_748_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({tmp_7_fu_748_p2_carry__1_i_5_n_0,tmp_7_fu_748_p2_carry__1_i_6_n_0,tmp_7_fu_748_p2_carry__1_i_7_n_0,tmp_7_fu_748_p2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry__1_i_1
       (.I0(p_current_y_cord_load_reg_1111[23]),
        .I1(p_bottom_edge_load_reg_1154[23]),
        .I2(p_current_y_cord_load_reg_1111[22]),
        .I3(p_bottom_edge_load_reg_1154[22]),
        .O(tmp_7_fu_748_p2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry__1_i_2
       (.I0(p_current_y_cord_load_reg_1111[21]),
        .I1(p_bottom_edge_load_reg_1154[21]),
        .I2(p_current_y_cord_load_reg_1111[20]),
        .I3(p_bottom_edge_load_reg_1154[20]),
        .O(tmp_7_fu_748_p2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry__1_i_3
       (.I0(p_current_y_cord_load_reg_1111[19]),
        .I1(p_bottom_edge_load_reg_1154[19]),
        .I2(p_current_y_cord_load_reg_1111[18]),
        .I3(p_bottom_edge_load_reg_1154[18]),
        .O(tmp_7_fu_748_p2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry__1_i_4
       (.I0(p_current_y_cord_load_reg_1111[17]),
        .I1(p_bottom_edge_load_reg_1154[17]),
        .I2(p_current_y_cord_load_reg_1111[16]),
        .I3(p_bottom_edge_load_reg_1154[16]),
        .O(tmp_7_fu_748_p2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry__1_i_5
       (.I0(p_bottom_edge_load_reg_1154[23]),
        .I1(p_current_y_cord_load_reg_1111[23]),
        .I2(p_bottom_edge_load_reg_1154[22]),
        .I3(p_current_y_cord_load_reg_1111[22]),
        .O(tmp_7_fu_748_p2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry__1_i_6
       (.I0(p_bottom_edge_load_reg_1154[21]),
        .I1(p_current_y_cord_load_reg_1111[21]),
        .I2(p_bottom_edge_load_reg_1154[20]),
        .I3(p_current_y_cord_load_reg_1111[20]),
        .O(tmp_7_fu_748_p2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry__1_i_7
       (.I0(p_bottom_edge_load_reg_1154[19]),
        .I1(p_current_y_cord_load_reg_1111[19]),
        .I2(p_bottom_edge_load_reg_1154[18]),
        .I3(p_current_y_cord_load_reg_1111[18]),
        .O(tmp_7_fu_748_p2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry__1_i_8
       (.I0(p_bottom_edge_load_reg_1154[17]),
        .I1(p_current_y_cord_load_reg_1111[17]),
        .I2(p_bottom_edge_load_reg_1154[16]),
        .I3(p_current_y_cord_load_reg_1111[16]),
        .O(tmp_7_fu_748_p2_carry__1_i_8_n_0));
  CARRY4 tmp_7_fu_748_p2_carry__2
       (.CI(tmp_7_fu_748_p2_carry__1_n_0),
        .CO({p_0_in3_in,tmp_7_fu_748_p2_carry__2_n_1,tmp_7_fu_748_p2_carry__2_n_2,tmp_7_fu_748_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_7_fu_748_p2_carry__2_i_1_n_0,tmp_7_fu_748_p2_carry__2_i_2_n_0,tmp_7_fu_748_p2_carry__2_i_3_n_0,tmp_7_fu_748_p2_carry__2_i_4_n_0}),
        .O(NLW_tmp_7_fu_748_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({tmp_7_fu_748_p2_carry__2_i_5_n_0,tmp_7_fu_748_p2_carry__2_i_6_n_0,tmp_7_fu_748_p2_carry__2_i_7_n_0,tmp_7_fu_748_p2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_7_fu_748_p2_carry__2_i_1
       (.I0(p_current_y_cord_load_reg_1111[31]),
        .I1(p_bottom_edge_load_reg_1154[31]),
        .I2(p_current_y_cord_load_reg_1111[30]),
        .I3(p_bottom_edge_load_reg_1154[30]),
        .O(tmp_7_fu_748_p2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry__2_i_2
       (.I0(p_current_y_cord_load_reg_1111[29]),
        .I1(p_bottom_edge_load_reg_1154[29]),
        .I2(p_current_y_cord_load_reg_1111[28]),
        .I3(p_bottom_edge_load_reg_1154[28]),
        .O(tmp_7_fu_748_p2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry__2_i_3
       (.I0(p_current_y_cord_load_reg_1111[27]),
        .I1(p_bottom_edge_load_reg_1154[27]),
        .I2(p_current_y_cord_load_reg_1111[26]),
        .I3(p_bottom_edge_load_reg_1154[26]),
        .O(tmp_7_fu_748_p2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry__2_i_4
       (.I0(p_current_y_cord_load_reg_1111[25]),
        .I1(p_bottom_edge_load_reg_1154[25]),
        .I2(p_current_y_cord_load_reg_1111[24]),
        .I3(p_bottom_edge_load_reg_1154[24]),
        .O(tmp_7_fu_748_p2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry__2_i_5
       (.I0(p_bottom_edge_load_reg_1154[31]),
        .I1(p_current_y_cord_load_reg_1111[31]),
        .I2(p_bottom_edge_load_reg_1154[30]),
        .I3(p_current_y_cord_load_reg_1111[30]),
        .O(tmp_7_fu_748_p2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry__2_i_6
       (.I0(p_bottom_edge_load_reg_1154[29]),
        .I1(p_current_y_cord_load_reg_1111[29]),
        .I2(p_bottom_edge_load_reg_1154[28]),
        .I3(p_current_y_cord_load_reg_1111[28]),
        .O(tmp_7_fu_748_p2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry__2_i_7
       (.I0(p_bottom_edge_load_reg_1154[27]),
        .I1(p_current_y_cord_load_reg_1111[27]),
        .I2(p_bottom_edge_load_reg_1154[26]),
        .I3(p_current_y_cord_load_reg_1111[26]),
        .O(tmp_7_fu_748_p2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry__2_i_8
       (.I0(p_bottom_edge_load_reg_1154[25]),
        .I1(p_current_y_cord_load_reg_1111[25]),
        .I2(p_bottom_edge_load_reg_1154[24]),
        .I3(p_current_y_cord_load_reg_1111[24]),
        .O(tmp_7_fu_748_p2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry_i_1
       (.I0(p_current_y_cord_load_reg_1111[7]),
        .I1(p_bottom_edge_load_reg_1154[7]),
        .I2(p_current_y_cord_load_reg_1111[6]),
        .I3(p_bottom_edge_load_reg_1154[6]),
        .O(tmp_7_fu_748_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry_i_2
       (.I0(p_current_y_cord_load_reg_1111[5]),
        .I1(p_bottom_edge_load_reg_1154[5]),
        .I2(p_current_y_cord_load_reg_1111[4]),
        .I3(p_bottom_edge_load_reg_1154[4]),
        .O(tmp_7_fu_748_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry_i_3
       (.I0(p_current_y_cord_load_reg_1111[3]),
        .I1(p_bottom_edge_load_reg_1154[3]),
        .I2(p_current_y_cord_load_reg_1111[2]),
        .I3(p_bottom_edge_load_reg_1154[2]),
        .O(tmp_7_fu_748_p2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_7_fu_748_p2_carry_i_4
       (.I0(p_current_y_cord_load_reg_1111[1]),
        .I1(p_bottom_edge_load_reg_1154[1]),
        .I2(p_current_y_cord_load_reg_1111[0]),
        .I3(p_bottom_edge_load_reg_1154[0]),
        .O(tmp_7_fu_748_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry_i_5
       (.I0(p_bottom_edge_load_reg_1154[7]),
        .I1(p_current_y_cord_load_reg_1111[7]),
        .I2(p_bottom_edge_load_reg_1154[6]),
        .I3(p_current_y_cord_load_reg_1111[6]),
        .O(tmp_7_fu_748_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry_i_6
       (.I0(p_bottom_edge_load_reg_1154[5]),
        .I1(p_current_y_cord_load_reg_1111[5]),
        .I2(p_bottom_edge_load_reg_1154[4]),
        .I3(p_current_y_cord_load_reg_1111[4]),
        .O(tmp_7_fu_748_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry_i_7
       (.I0(p_bottom_edge_load_reg_1154[3]),
        .I1(p_current_y_cord_load_reg_1111[3]),
        .I2(p_bottom_edge_load_reg_1154[2]),
        .I3(p_current_y_cord_load_reg_1111[2]),
        .O(tmp_7_fu_748_p2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_7_fu_748_p2_carry_i_8
       (.I0(p_bottom_edge_load_reg_1154[1]),
        .I1(p_current_y_cord_load_reg_1111[1]),
        .I2(p_bottom_edge_load_reg_1154[0]),
        .I3(p_current_y_cord_load_reg_1111[0]),
        .O(tmp_7_fu_748_p2_carry_i_8_n_0));
  CARRY4 tmp_8_fu_773_p2_carry
       (.CI(1'b0),
        .CO({tmp_8_fu_773_p2_carry_n_0,tmp_8_fu_773_p2_carry_n_1,tmp_8_fu_773_p2_carry_n_2,tmp_8_fu_773_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_8_fu_773_p2_carry_i_1_n_0,tmp_8_fu_773_p2_carry_i_2_n_0,tmp_8_fu_773_p2_carry_i_3_n_0,tmp_8_fu_773_p2_carry_i_4_n_0}),
        .O(NLW_tmp_8_fu_773_p2_carry_O_UNCONNECTED[3:0]),
        .S({tmp_8_fu_773_p2_carry_i_5_n_0,tmp_8_fu_773_p2_carry_i_6_n_0,tmp_8_fu_773_p2_carry_i_7_n_0,tmp_8_fu_773_p2_carry_i_8_n_0}));
  CARRY4 tmp_8_fu_773_p2_carry__0
       (.CI(tmp_8_fu_773_p2_carry_n_0),
        .CO({tmp_8_fu_773_p2_carry__0_n_0,tmp_8_fu_773_p2_carry__0_n_1,tmp_8_fu_773_p2_carry__0_n_2,tmp_8_fu_773_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_8_fu_773_p2_carry__0_i_1_n_0,tmp_8_fu_773_p2_carry__0_i_2_n_0,tmp_8_fu_773_p2_carry__0_i_3_n_0,tmp_8_fu_773_p2_carry__0_i_4_n_0}),
        .O(NLW_tmp_8_fu_773_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({tmp_8_fu_773_p2_carry__0_i_5_n_0,tmp_8_fu_773_p2_carry__0_i_6_n_0,tmp_8_fu_773_p2_carry__0_i_7_n_0,tmp_8_fu_773_p2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry__0_i_1
       (.I0(p_current_y_cord_load_reg_1111[15]),
        .I1(height_upper_edge_lo_reg_1147[15]),
        .I2(height_upper_edge_lo_reg_1147[14]),
        .I3(p_current_y_cord_load_reg_1111[14]),
        .O(tmp_8_fu_773_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry__0_i_2
       (.I0(p_current_y_cord_load_reg_1111[13]),
        .I1(height_upper_edge_lo_reg_1147[13]),
        .I2(height_upper_edge_lo_reg_1147[12]),
        .I3(p_current_y_cord_load_reg_1111[12]),
        .O(tmp_8_fu_773_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry__0_i_3
       (.I0(p_current_y_cord_load_reg_1111[11]),
        .I1(height_upper_edge_lo_reg_1147[11]),
        .I2(height_upper_edge_lo_reg_1147[10]),
        .I3(p_current_y_cord_load_reg_1111[10]),
        .O(tmp_8_fu_773_p2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry__0_i_4
       (.I0(p_current_y_cord_load_reg_1111[9]),
        .I1(height_upper_edge_lo_reg_1147[9]),
        .I2(height_upper_edge_lo_reg_1147[8]),
        .I3(p_current_y_cord_load_reg_1111[8]),
        .O(tmp_8_fu_773_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry__0_i_5
       (.I0(height_upper_edge_lo_reg_1147[15]),
        .I1(p_current_y_cord_load_reg_1111[15]),
        .I2(height_upper_edge_lo_reg_1147[14]),
        .I3(p_current_y_cord_load_reg_1111[14]),
        .O(tmp_8_fu_773_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry__0_i_6
       (.I0(height_upper_edge_lo_reg_1147[13]),
        .I1(p_current_y_cord_load_reg_1111[13]),
        .I2(height_upper_edge_lo_reg_1147[12]),
        .I3(p_current_y_cord_load_reg_1111[12]),
        .O(tmp_8_fu_773_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry__0_i_7
       (.I0(height_upper_edge_lo_reg_1147[11]),
        .I1(p_current_y_cord_load_reg_1111[11]),
        .I2(height_upper_edge_lo_reg_1147[10]),
        .I3(p_current_y_cord_load_reg_1111[10]),
        .O(tmp_8_fu_773_p2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry__0_i_8
       (.I0(height_upper_edge_lo_reg_1147[9]),
        .I1(p_current_y_cord_load_reg_1111[9]),
        .I2(height_upper_edge_lo_reg_1147[8]),
        .I3(p_current_y_cord_load_reg_1111[8]),
        .O(tmp_8_fu_773_p2_carry__0_i_8_n_0));
  CARRY4 tmp_8_fu_773_p2_carry__1
       (.CI(tmp_8_fu_773_p2_carry__0_n_0),
        .CO({tmp_8_fu_773_p2_carry__1_n_0,tmp_8_fu_773_p2_carry__1_n_1,tmp_8_fu_773_p2_carry__1_n_2,tmp_8_fu_773_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_8_fu_773_p2_carry__1_i_1_n_0,tmp_8_fu_773_p2_carry__1_i_2_n_0,tmp_8_fu_773_p2_carry__1_i_3_n_0,tmp_8_fu_773_p2_carry__1_i_4_n_0}),
        .O(NLW_tmp_8_fu_773_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({tmp_8_fu_773_p2_carry__1_i_5_n_0,tmp_8_fu_773_p2_carry__1_i_6_n_0,tmp_8_fu_773_p2_carry__1_i_7_n_0,tmp_8_fu_773_p2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry__1_i_1
       (.I0(p_current_y_cord_load_reg_1111[23]),
        .I1(height_upper_edge_lo_reg_1147[23]),
        .I2(height_upper_edge_lo_reg_1147[22]),
        .I3(p_current_y_cord_load_reg_1111[22]),
        .O(tmp_8_fu_773_p2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry__1_i_2
       (.I0(p_current_y_cord_load_reg_1111[21]),
        .I1(height_upper_edge_lo_reg_1147[21]),
        .I2(height_upper_edge_lo_reg_1147[20]),
        .I3(p_current_y_cord_load_reg_1111[20]),
        .O(tmp_8_fu_773_p2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry__1_i_3
       (.I0(p_current_y_cord_load_reg_1111[19]),
        .I1(height_upper_edge_lo_reg_1147[19]),
        .I2(height_upper_edge_lo_reg_1147[18]),
        .I3(p_current_y_cord_load_reg_1111[18]),
        .O(tmp_8_fu_773_p2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry__1_i_4
       (.I0(p_current_y_cord_load_reg_1111[17]),
        .I1(height_upper_edge_lo_reg_1147[17]),
        .I2(height_upper_edge_lo_reg_1147[16]),
        .I3(p_current_y_cord_load_reg_1111[16]),
        .O(tmp_8_fu_773_p2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry__1_i_5
       (.I0(height_upper_edge_lo_reg_1147[23]),
        .I1(p_current_y_cord_load_reg_1111[23]),
        .I2(height_upper_edge_lo_reg_1147[22]),
        .I3(p_current_y_cord_load_reg_1111[22]),
        .O(tmp_8_fu_773_p2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry__1_i_6
       (.I0(height_upper_edge_lo_reg_1147[21]),
        .I1(p_current_y_cord_load_reg_1111[21]),
        .I2(height_upper_edge_lo_reg_1147[20]),
        .I3(p_current_y_cord_load_reg_1111[20]),
        .O(tmp_8_fu_773_p2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry__1_i_7
       (.I0(height_upper_edge_lo_reg_1147[19]),
        .I1(p_current_y_cord_load_reg_1111[19]),
        .I2(height_upper_edge_lo_reg_1147[18]),
        .I3(p_current_y_cord_load_reg_1111[18]),
        .O(tmp_8_fu_773_p2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry__1_i_8
       (.I0(height_upper_edge_lo_reg_1147[17]),
        .I1(p_current_y_cord_load_reg_1111[17]),
        .I2(height_upper_edge_lo_reg_1147[16]),
        .I3(p_current_y_cord_load_reg_1111[16]),
        .O(tmp_8_fu_773_p2_carry__1_i_8_n_0));
  CARRY4 tmp_8_fu_773_p2_carry__2
       (.CI(tmp_8_fu_773_p2_carry__1_n_0),
        .CO({tmp_8_fu_773_p2_carry__2_n_0,tmp_8_fu_773_p2_carry__2_n_1,tmp_8_fu_773_p2_carry__2_n_2,tmp_8_fu_773_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_8_fu_773_p2_carry__2_i_1_n_0,tmp_8_fu_773_p2_carry__2_i_2_n_0,tmp_8_fu_773_p2_carry__2_i_3_n_0,tmp_8_fu_773_p2_carry__2_i_4_n_0}),
        .O(NLW_tmp_8_fu_773_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({tmp_8_fu_773_p2_carry__2_i_5_n_0,tmp_8_fu_773_p2_carry__2_i_6_n_0,tmp_8_fu_773_p2_carry__2_i_7_n_0,tmp_8_fu_773_p2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_8_fu_773_p2_carry__2_i_1
       (.I0(p_current_y_cord_load_reg_1111[31]),
        .I1(height_upper_edge_lo_reg_1147[31]),
        .I2(height_upper_edge_lo_reg_1147[30]),
        .I3(p_current_y_cord_load_reg_1111[30]),
        .O(tmp_8_fu_773_p2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry__2_i_2
       (.I0(p_current_y_cord_load_reg_1111[29]),
        .I1(height_upper_edge_lo_reg_1147[29]),
        .I2(height_upper_edge_lo_reg_1147[28]),
        .I3(p_current_y_cord_load_reg_1111[28]),
        .O(tmp_8_fu_773_p2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry__2_i_3
       (.I0(p_current_y_cord_load_reg_1111[27]),
        .I1(height_upper_edge_lo_reg_1147[27]),
        .I2(height_upper_edge_lo_reg_1147[26]),
        .I3(p_current_y_cord_load_reg_1111[26]),
        .O(tmp_8_fu_773_p2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry__2_i_4
       (.I0(p_current_y_cord_load_reg_1111[25]),
        .I1(height_upper_edge_lo_reg_1147[25]),
        .I2(height_upper_edge_lo_reg_1147[24]),
        .I3(p_current_y_cord_load_reg_1111[24]),
        .O(tmp_8_fu_773_p2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry__2_i_5
       (.I0(height_upper_edge_lo_reg_1147[31]),
        .I1(p_current_y_cord_load_reg_1111[31]),
        .I2(height_upper_edge_lo_reg_1147[30]),
        .I3(p_current_y_cord_load_reg_1111[30]),
        .O(tmp_8_fu_773_p2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry__2_i_6
       (.I0(height_upper_edge_lo_reg_1147[29]),
        .I1(p_current_y_cord_load_reg_1111[29]),
        .I2(height_upper_edge_lo_reg_1147[28]),
        .I3(p_current_y_cord_load_reg_1111[28]),
        .O(tmp_8_fu_773_p2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry__2_i_7
       (.I0(height_upper_edge_lo_reg_1147[27]),
        .I1(p_current_y_cord_load_reg_1111[27]),
        .I2(height_upper_edge_lo_reg_1147[26]),
        .I3(p_current_y_cord_load_reg_1111[26]),
        .O(tmp_8_fu_773_p2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry__2_i_8
       (.I0(height_upper_edge_lo_reg_1147[25]),
        .I1(p_current_y_cord_load_reg_1111[25]),
        .I2(height_upper_edge_lo_reg_1147[24]),
        .I3(p_current_y_cord_load_reg_1111[24]),
        .O(tmp_8_fu_773_p2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry_i_1
       (.I0(p_current_y_cord_load_reg_1111[7]),
        .I1(height_upper_edge_lo_reg_1147[7]),
        .I2(height_upper_edge_lo_reg_1147[6]),
        .I3(p_current_y_cord_load_reg_1111[6]),
        .O(tmp_8_fu_773_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry_i_2
       (.I0(p_current_y_cord_load_reg_1111[5]),
        .I1(height_upper_edge_lo_reg_1147[5]),
        .I2(height_upper_edge_lo_reg_1147[4]),
        .I3(p_current_y_cord_load_reg_1111[4]),
        .O(tmp_8_fu_773_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry_i_3
       (.I0(p_current_y_cord_load_reg_1111[3]),
        .I1(height_upper_edge_lo_reg_1147[3]),
        .I2(height_upper_edge_lo_reg_1147[2]),
        .I3(p_current_y_cord_load_reg_1111[2]),
        .O(tmp_8_fu_773_p2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_8_fu_773_p2_carry_i_4
       (.I0(p_current_y_cord_load_reg_1111[1]),
        .I1(height_upper_edge_lo_reg_1147[1]),
        .I2(height_upper_edge_lo_reg_1147[0]),
        .I3(p_current_y_cord_load_reg_1111[0]),
        .O(tmp_8_fu_773_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry_i_5
       (.I0(height_upper_edge_lo_reg_1147[7]),
        .I1(p_current_y_cord_load_reg_1111[7]),
        .I2(height_upper_edge_lo_reg_1147[6]),
        .I3(p_current_y_cord_load_reg_1111[6]),
        .O(tmp_8_fu_773_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry_i_6
       (.I0(height_upper_edge_lo_reg_1147[5]),
        .I1(p_current_y_cord_load_reg_1111[5]),
        .I2(height_upper_edge_lo_reg_1147[4]),
        .I3(p_current_y_cord_load_reg_1111[4]),
        .O(tmp_8_fu_773_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry_i_7
       (.I0(height_upper_edge_lo_reg_1147[3]),
        .I1(p_current_y_cord_load_reg_1111[3]),
        .I2(height_upper_edge_lo_reg_1147[2]),
        .I3(p_current_y_cord_load_reg_1111[2]),
        .O(tmp_8_fu_773_p2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_8_fu_773_p2_carry_i_8
       (.I0(height_upper_edge_lo_reg_1147[1]),
        .I1(p_current_y_cord_load_reg_1111[1]),
        .I2(height_upper_edge_lo_reg_1147[0]),
        .I3(p_current_y_cord_load_reg_1111[0]),
        .O(tmp_8_fu_773_p2_carry_i_8_n_0));
  CARRY4 tmp_9_fu_805_p2_carry
       (.CI(1'b0),
        .CO({tmp_9_fu_805_p2_carry_n_0,tmp_9_fu_805_p2_carry_n_1,tmp_9_fu_805_p2_carry_n_2,tmp_9_fu_805_p2_carry_n_3}),
        .CYINIT(height[0]),
        .DI(height[4:1]),
        .O(tmp_9_fu_805_p2[4:1]),
        .S({tmp_9_fu_805_p2_carry_i_1_n_0,tmp_9_fu_805_p2_carry_i_2_n_0,tmp_9_fu_805_p2_carry_i_3_n_0,tmp_9_fu_805_p2_carry_i_4_n_0}));
  CARRY4 tmp_9_fu_805_p2_carry__0
       (.CI(tmp_9_fu_805_p2_carry_n_0),
        .CO({tmp_9_fu_805_p2_carry__0_n_0,tmp_9_fu_805_p2_carry__0_n_1,tmp_9_fu_805_p2_carry__0_n_2,tmp_9_fu_805_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(height[8:5]),
        .O(tmp_9_fu_805_p2[8:5]),
        .S({tmp_9_fu_805_p2_carry__0_i_1_n_0,tmp_9_fu_805_p2_carry__0_i_2_n_0,tmp_9_fu_805_p2_carry__0_i_3_n_0,tmp_9_fu_805_p2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__0_i_1
       (.I0(height[8]),
        .O(tmp_9_fu_805_p2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__0_i_2
       (.I0(height[7]),
        .O(tmp_9_fu_805_p2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__0_i_3
       (.I0(height[6]),
        .O(tmp_9_fu_805_p2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__0_i_4
       (.I0(height[5]),
        .O(tmp_9_fu_805_p2_carry__0_i_4_n_0));
  CARRY4 tmp_9_fu_805_p2_carry__1
       (.CI(tmp_9_fu_805_p2_carry__0_n_0),
        .CO({tmp_9_fu_805_p2_carry__1_n_0,tmp_9_fu_805_p2_carry__1_n_1,tmp_9_fu_805_p2_carry__1_n_2,tmp_9_fu_805_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(height[12:9]),
        .O(tmp_9_fu_805_p2[12:9]),
        .S({tmp_9_fu_805_p2_carry__1_i_1_n_0,tmp_9_fu_805_p2_carry__1_i_2_n_0,tmp_9_fu_805_p2_carry__1_i_3_n_0,tmp_9_fu_805_p2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__1_i_1
       (.I0(height[12]),
        .O(tmp_9_fu_805_p2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__1_i_2
       (.I0(height[11]),
        .O(tmp_9_fu_805_p2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__1_i_3
       (.I0(height[10]),
        .O(tmp_9_fu_805_p2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__1_i_4
       (.I0(height[9]),
        .O(tmp_9_fu_805_p2_carry__1_i_4_n_0));
  CARRY4 tmp_9_fu_805_p2_carry__2
       (.CI(tmp_9_fu_805_p2_carry__1_n_0),
        .CO({tmp_9_fu_805_p2_carry__2_n_0,tmp_9_fu_805_p2_carry__2_n_1,tmp_9_fu_805_p2_carry__2_n_2,tmp_9_fu_805_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(height[16:13]),
        .O(tmp_9_fu_805_p2[16:13]),
        .S({tmp_9_fu_805_p2_carry__2_i_1_n_0,tmp_9_fu_805_p2_carry__2_i_2_n_0,tmp_9_fu_805_p2_carry__2_i_3_n_0,tmp_9_fu_805_p2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__2_i_1
       (.I0(height[16]),
        .O(tmp_9_fu_805_p2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__2_i_2
       (.I0(height[15]),
        .O(tmp_9_fu_805_p2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__2_i_3
       (.I0(height[14]),
        .O(tmp_9_fu_805_p2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__2_i_4
       (.I0(height[13]),
        .O(tmp_9_fu_805_p2_carry__2_i_4_n_0));
  CARRY4 tmp_9_fu_805_p2_carry__3
       (.CI(tmp_9_fu_805_p2_carry__2_n_0),
        .CO({tmp_9_fu_805_p2_carry__3_n_0,tmp_9_fu_805_p2_carry__3_n_1,tmp_9_fu_805_p2_carry__3_n_2,tmp_9_fu_805_p2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(height[20:17]),
        .O(tmp_9_fu_805_p2[20:17]),
        .S({tmp_9_fu_805_p2_carry__3_i_1_n_0,tmp_9_fu_805_p2_carry__3_i_2_n_0,tmp_9_fu_805_p2_carry__3_i_3_n_0,tmp_9_fu_805_p2_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__3_i_1
       (.I0(height[20]),
        .O(tmp_9_fu_805_p2_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__3_i_2
       (.I0(height[19]),
        .O(tmp_9_fu_805_p2_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__3_i_3
       (.I0(height[18]),
        .O(tmp_9_fu_805_p2_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__3_i_4
       (.I0(height[17]),
        .O(tmp_9_fu_805_p2_carry__3_i_4_n_0));
  CARRY4 tmp_9_fu_805_p2_carry__4
       (.CI(tmp_9_fu_805_p2_carry__3_n_0),
        .CO({tmp_9_fu_805_p2_carry__4_n_0,tmp_9_fu_805_p2_carry__4_n_1,tmp_9_fu_805_p2_carry__4_n_2,tmp_9_fu_805_p2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(height[24:21]),
        .O(tmp_9_fu_805_p2[24:21]),
        .S({tmp_9_fu_805_p2_carry__4_i_1_n_0,tmp_9_fu_805_p2_carry__4_i_2_n_0,tmp_9_fu_805_p2_carry__4_i_3_n_0,tmp_9_fu_805_p2_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__4_i_1
       (.I0(height[24]),
        .O(tmp_9_fu_805_p2_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__4_i_2
       (.I0(height[23]),
        .O(tmp_9_fu_805_p2_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__4_i_3
       (.I0(height[22]),
        .O(tmp_9_fu_805_p2_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__4_i_4
       (.I0(height[21]),
        .O(tmp_9_fu_805_p2_carry__4_i_4_n_0));
  CARRY4 tmp_9_fu_805_p2_carry__5
       (.CI(tmp_9_fu_805_p2_carry__4_n_0),
        .CO({tmp_9_fu_805_p2_carry__5_n_0,tmp_9_fu_805_p2_carry__5_n_1,tmp_9_fu_805_p2_carry__5_n_2,tmp_9_fu_805_p2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(height[28:25]),
        .O(tmp_9_fu_805_p2[28:25]),
        .S({tmp_9_fu_805_p2_carry__5_i_1_n_0,tmp_9_fu_805_p2_carry__5_i_2_n_0,tmp_9_fu_805_p2_carry__5_i_3_n_0,tmp_9_fu_805_p2_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__5_i_1
       (.I0(height[28]),
        .O(tmp_9_fu_805_p2_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__5_i_2
       (.I0(height[27]),
        .O(tmp_9_fu_805_p2_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__5_i_3
       (.I0(height[26]),
        .O(tmp_9_fu_805_p2_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__5_i_4
       (.I0(height[25]),
        .O(tmp_9_fu_805_p2_carry__5_i_4_n_0));
  CARRY4 tmp_9_fu_805_p2_carry__6
       (.CI(tmp_9_fu_805_p2_carry__5_n_0),
        .CO({NLW_tmp_9_fu_805_p2_carry__6_CO_UNCONNECTED[3:2],tmp_9_fu_805_p2_carry__6_n_2,tmp_9_fu_805_p2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,height[30:29]}),
        .O({NLW_tmp_9_fu_805_p2_carry__6_O_UNCONNECTED[3],tmp_9_fu_805_p2[31:29]}),
        .S({1'b0,tmp_9_fu_805_p2_carry__6_i_1_n_0,tmp_9_fu_805_p2_carry__6_i_2_n_0,tmp_9_fu_805_p2_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__6_i_1
       (.I0(height[31]),
        .O(tmp_9_fu_805_p2_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__6_i_2
       (.I0(height[30]),
        .O(tmp_9_fu_805_p2_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry__6_i_3
       (.I0(height[29]),
        .O(tmp_9_fu_805_p2_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry_i_1
       (.I0(height[4]),
        .O(tmp_9_fu_805_p2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry_i_2
       (.I0(height[3]),
        .O(tmp_9_fu_805_p2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry_i_3
       (.I0(height[2]),
        .O(tmp_9_fu_805_p2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    tmp_9_fu_805_p2_carry_i_4
       (.I0(height[1]),
        .O(tmp_9_fu_805_p2_carry_i_4_n_0));
  (* ORIG_CELL_NAME = "tmp_reg_1168_reg[0]" *) 
  FDRE \tmp_reg_1168_reg[0] 
       (.C(aclk),
        .CE(Q),
        .D(\state_reg[0] ),
        .Q(tmp_reg_1168),
        .R(1'b0));
  (* ORIG_CELL_NAME = "tmp_reg_1168_reg[0]" *) 
  FDRE \tmp_reg_1168_reg[0]_rep 
       (.C(aclk),
        .CE(Q),
        .D(\state_reg[0] ),
        .Q(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .R(1'b0));
  CARRY4 tmp_s_fu_699_p2_carry
       (.CI(1'b0),
        .CO({tmp_s_fu_699_p2_carry_n_0,tmp_s_fu_699_p2_carry_n_1,tmp_s_fu_699_p2_carry_n_2,tmp_s_fu_699_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_s_fu_699_p2_carry_i_1_n_0,tmp_s_fu_699_p2_carry_i_2_n_0,tmp_s_fu_699_p2_carry_i_3_n_0,tmp_s_fu_699_p2_carry_i_4_n_0}),
        .O(NLW_tmp_s_fu_699_p2_carry_O_UNCONNECTED[3:0]),
        .S({tmp_s_fu_699_p2_carry_i_5_n_0,tmp_s_fu_699_p2_carry_i_6_n_0,tmp_s_fu_699_p2_carry_i_7_n_0,tmp_s_fu_699_p2_carry_i_8_n_0}));
  CARRY4 tmp_s_fu_699_p2_carry__0
       (.CI(tmp_s_fu_699_p2_carry_n_0),
        .CO({tmp_s_fu_699_p2_carry__0_n_0,tmp_s_fu_699_p2_carry__0_n_1,tmp_s_fu_699_p2_carry__0_n_2,tmp_s_fu_699_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_s_fu_699_p2_carry__0_i_1_n_0,tmp_s_fu_699_p2_carry__0_i_2_n_0,tmp_s_fu_699_p2_carry__0_i_3_n_0,tmp_s_fu_699_p2_carry__0_i_4_n_0}),
        .O(NLW_tmp_s_fu_699_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({tmp_s_fu_699_p2_carry__0_i_5_n_0,tmp_s_fu_699_p2_carry__0_i_6_n_0,tmp_s_fu_699_p2_carry__0_i_7_n_0,tmp_s_fu_699_p2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry__0_i_1
       (.I0(p_current_x_cord_load_reg_1099[15]),
        .I1(p_right_edge_load_reg_1161[15]),
        .I2(p_current_x_cord_load_reg_1099[14]),
        .I3(p_right_edge_load_reg_1161[14]),
        .O(tmp_s_fu_699_p2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry__0_i_2
       (.I0(p_current_x_cord_load_reg_1099[13]),
        .I1(p_right_edge_load_reg_1161[13]),
        .I2(p_current_x_cord_load_reg_1099[12]),
        .I3(p_right_edge_load_reg_1161[12]),
        .O(tmp_s_fu_699_p2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry__0_i_3
       (.I0(p_current_x_cord_load_reg_1099[11]),
        .I1(p_right_edge_load_reg_1161[11]),
        .I2(p_current_x_cord_load_reg_1099[10]),
        .I3(p_right_edge_load_reg_1161[10]),
        .O(tmp_s_fu_699_p2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry__0_i_4
       (.I0(p_current_x_cord_load_reg_1099[9]),
        .I1(p_right_edge_load_reg_1161[9]),
        .I2(p_current_x_cord_load_reg_1099[8]),
        .I3(p_right_edge_load_reg_1161[8]),
        .O(tmp_s_fu_699_p2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry__0_i_5
       (.I0(p_right_edge_load_reg_1161[15]),
        .I1(p_current_x_cord_load_reg_1099[15]),
        .I2(p_right_edge_load_reg_1161[14]),
        .I3(p_current_x_cord_load_reg_1099[14]),
        .O(tmp_s_fu_699_p2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry__0_i_6
       (.I0(p_right_edge_load_reg_1161[13]),
        .I1(p_current_x_cord_load_reg_1099[13]),
        .I2(p_right_edge_load_reg_1161[12]),
        .I3(p_current_x_cord_load_reg_1099[12]),
        .O(tmp_s_fu_699_p2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry__0_i_7
       (.I0(p_right_edge_load_reg_1161[11]),
        .I1(p_current_x_cord_load_reg_1099[11]),
        .I2(p_right_edge_load_reg_1161[10]),
        .I3(p_current_x_cord_load_reg_1099[10]),
        .O(tmp_s_fu_699_p2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry__0_i_8
       (.I0(p_right_edge_load_reg_1161[9]),
        .I1(p_current_x_cord_load_reg_1099[9]),
        .I2(p_right_edge_load_reg_1161[8]),
        .I3(p_current_x_cord_load_reg_1099[8]),
        .O(tmp_s_fu_699_p2_carry__0_i_8_n_0));
  CARRY4 tmp_s_fu_699_p2_carry__1
       (.CI(tmp_s_fu_699_p2_carry__0_n_0),
        .CO({tmp_s_fu_699_p2_carry__1_n_0,tmp_s_fu_699_p2_carry__1_n_1,tmp_s_fu_699_p2_carry__1_n_2,tmp_s_fu_699_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_s_fu_699_p2_carry__1_i_1_n_0,tmp_s_fu_699_p2_carry__1_i_2_n_0,tmp_s_fu_699_p2_carry__1_i_3_n_0,tmp_s_fu_699_p2_carry__1_i_4_n_0}),
        .O(NLW_tmp_s_fu_699_p2_carry__1_O_UNCONNECTED[3:0]),
        .S({tmp_s_fu_699_p2_carry__1_i_5_n_0,tmp_s_fu_699_p2_carry__1_i_6_n_0,tmp_s_fu_699_p2_carry__1_i_7_n_0,tmp_s_fu_699_p2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry__1_i_1
       (.I0(p_current_x_cord_load_reg_1099[23]),
        .I1(p_right_edge_load_reg_1161[23]),
        .I2(p_current_x_cord_load_reg_1099[22]),
        .I3(p_right_edge_load_reg_1161[22]),
        .O(tmp_s_fu_699_p2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry__1_i_2
       (.I0(p_current_x_cord_load_reg_1099[21]),
        .I1(p_right_edge_load_reg_1161[21]),
        .I2(p_current_x_cord_load_reg_1099[20]),
        .I3(p_right_edge_load_reg_1161[20]),
        .O(tmp_s_fu_699_p2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry__1_i_3
       (.I0(p_current_x_cord_load_reg_1099[19]),
        .I1(p_right_edge_load_reg_1161[19]),
        .I2(p_current_x_cord_load_reg_1099[18]),
        .I3(p_right_edge_load_reg_1161[18]),
        .O(tmp_s_fu_699_p2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry__1_i_4
       (.I0(p_current_x_cord_load_reg_1099[17]),
        .I1(p_right_edge_load_reg_1161[17]),
        .I2(p_current_x_cord_load_reg_1099[16]),
        .I3(p_right_edge_load_reg_1161[16]),
        .O(tmp_s_fu_699_p2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry__1_i_5
       (.I0(p_right_edge_load_reg_1161[23]),
        .I1(p_current_x_cord_load_reg_1099[23]),
        .I2(p_right_edge_load_reg_1161[22]),
        .I3(p_current_x_cord_load_reg_1099[22]),
        .O(tmp_s_fu_699_p2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry__1_i_6
       (.I0(p_right_edge_load_reg_1161[21]),
        .I1(p_current_x_cord_load_reg_1099[21]),
        .I2(p_right_edge_load_reg_1161[20]),
        .I3(p_current_x_cord_load_reg_1099[20]),
        .O(tmp_s_fu_699_p2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry__1_i_7
       (.I0(p_right_edge_load_reg_1161[19]),
        .I1(p_current_x_cord_load_reg_1099[19]),
        .I2(p_right_edge_load_reg_1161[18]),
        .I3(p_current_x_cord_load_reg_1099[18]),
        .O(tmp_s_fu_699_p2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry__1_i_8
       (.I0(p_right_edge_load_reg_1161[17]),
        .I1(p_current_x_cord_load_reg_1099[17]),
        .I2(p_right_edge_load_reg_1161[16]),
        .I3(p_current_x_cord_load_reg_1099[16]),
        .O(tmp_s_fu_699_p2_carry__1_i_8_n_0));
  CARRY4 tmp_s_fu_699_p2_carry__2
       (.CI(tmp_s_fu_699_p2_carry__1_n_0),
        .CO({p_0_in0_in,tmp_s_fu_699_p2_carry__2_n_1,tmp_s_fu_699_p2_carry__2_n_2,tmp_s_fu_699_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({tmp_s_fu_699_p2_carry__2_i_1_n_0,tmp_s_fu_699_p2_carry__2_i_2_n_0,tmp_s_fu_699_p2_carry__2_i_3_n_0,tmp_s_fu_699_p2_carry__2_i_4_n_0}),
        .O(NLW_tmp_s_fu_699_p2_carry__2_O_UNCONNECTED[3:0]),
        .S({tmp_s_fu_699_p2_carry__2_i_5_n_0,tmp_s_fu_699_p2_carry__2_i_6_n_0,tmp_s_fu_699_p2_carry__2_i_7_n_0,tmp_s_fu_699_p2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    tmp_s_fu_699_p2_carry__2_i_1
       (.I0(p_current_x_cord_load_reg_1099[31]),
        .I1(p_right_edge_load_reg_1161[31]),
        .I2(p_current_x_cord_load_reg_1099[30]),
        .I3(p_right_edge_load_reg_1161[30]),
        .O(tmp_s_fu_699_p2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry__2_i_2
       (.I0(p_current_x_cord_load_reg_1099[29]),
        .I1(p_right_edge_load_reg_1161[29]),
        .I2(p_current_x_cord_load_reg_1099[28]),
        .I3(p_right_edge_load_reg_1161[28]),
        .O(tmp_s_fu_699_p2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry__2_i_3
       (.I0(p_current_x_cord_load_reg_1099[27]),
        .I1(p_right_edge_load_reg_1161[27]),
        .I2(p_current_x_cord_load_reg_1099[26]),
        .I3(p_right_edge_load_reg_1161[26]),
        .O(tmp_s_fu_699_p2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry__2_i_4
       (.I0(p_current_x_cord_load_reg_1099[25]),
        .I1(p_right_edge_load_reg_1161[25]),
        .I2(p_current_x_cord_load_reg_1099[24]),
        .I3(p_right_edge_load_reg_1161[24]),
        .O(tmp_s_fu_699_p2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry__2_i_5
       (.I0(p_right_edge_load_reg_1161[31]),
        .I1(p_current_x_cord_load_reg_1099[31]),
        .I2(p_right_edge_load_reg_1161[30]),
        .I3(p_current_x_cord_load_reg_1099[30]),
        .O(tmp_s_fu_699_p2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry__2_i_6
       (.I0(p_right_edge_load_reg_1161[29]),
        .I1(p_current_x_cord_load_reg_1099[29]),
        .I2(p_right_edge_load_reg_1161[28]),
        .I3(p_current_x_cord_load_reg_1099[28]),
        .O(tmp_s_fu_699_p2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry__2_i_7
       (.I0(p_right_edge_load_reg_1161[27]),
        .I1(p_current_x_cord_load_reg_1099[27]),
        .I2(p_right_edge_load_reg_1161[26]),
        .I3(p_current_x_cord_load_reg_1099[26]),
        .O(tmp_s_fu_699_p2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry__2_i_8
       (.I0(p_right_edge_load_reg_1161[25]),
        .I1(p_current_x_cord_load_reg_1099[25]),
        .I2(p_right_edge_load_reg_1161[24]),
        .I3(p_current_x_cord_load_reg_1099[24]),
        .O(tmp_s_fu_699_p2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry_i_1
       (.I0(p_current_x_cord_load_reg_1099[7]),
        .I1(p_right_edge_load_reg_1161[7]),
        .I2(p_current_x_cord_load_reg_1099[6]),
        .I3(p_right_edge_load_reg_1161[6]),
        .O(tmp_s_fu_699_p2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry_i_2
       (.I0(p_current_x_cord_load_reg_1099[5]),
        .I1(p_right_edge_load_reg_1161[5]),
        .I2(p_current_x_cord_load_reg_1099[4]),
        .I3(p_right_edge_load_reg_1161[4]),
        .O(tmp_s_fu_699_p2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry_i_3
       (.I0(p_current_x_cord_load_reg_1099[3]),
        .I1(p_right_edge_load_reg_1161[3]),
        .I2(p_current_x_cord_load_reg_1099[2]),
        .I3(p_right_edge_load_reg_1161[2]),
        .O(tmp_s_fu_699_p2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tmp_s_fu_699_p2_carry_i_4
       (.I0(p_current_x_cord_load_reg_1099[1]),
        .I1(p_right_edge_load_reg_1161[1]),
        .I2(p_current_x_cord_load_reg_1099[0]),
        .I3(p_right_edge_load_reg_1161[0]),
        .O(tmp_s_fu_699_p2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry_i_5
       (.I0(p_right_edge_load_reg_1161[7]),
        .I1(p_current_x_cord_load_reg_1099[7]),
        .I2(p_right_edge_load_reg_1161[6]),
        .I3(p_current_x_cord_load_reg_1099[6]),
        .O(tmp_s_fu_699_p2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry_i_6
       (.I0(p_right_edge_load_reg_1161[5]),
        .I1(p_current_x_cord_load_reg_1099[5]),
        .I2(p_right_edge_load_reg_1161[4]),
        .I3(p_current_x_cord_load_reg_1099[4]),
        .O(tmp_s_fu_699_p2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry_i_7
       (.I0(p_right_edge_load_reg_1161[3]),
        .I1(p_current_x_cord_load_reg_1099[3]),
        .I2(p_right_edge_load_reg_1161[2]),
        .I3(p_current_x_cord_load_reg_1099[2]),
        .O(tmp_s_fu_699_p2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tmp_s_fu_699_p2_carry_i_8
       (.I0(p_right_edge_load_reg_1161[1]),
        .I1(p_current_x_cord_load_reg_1099[1]),
        .I2(p_right_edge_load_reg_1161[0]),
        .I3(p_current_x_cord_load_reg_1099[0]),
        .O(tmp_s_fu_699_p2_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[0]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[0] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[0] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[0]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[10]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[10] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[10] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[10]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[11]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[11] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[11] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[11]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[12]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[12] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[12] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[12]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[13]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[13] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[13] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[13]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[14]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[14] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[14] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[14]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[15]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[15] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[15] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[15]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[16]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[16] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[16] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[16]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[17]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[17] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[17] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[17]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[18]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[18] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[18] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[18]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[19]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[19] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[19] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[19]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[1]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[1] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[1] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[1]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[20]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[20] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[20] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[20]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[21]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[21] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[21] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[21]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[22]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[22] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[22] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[22]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[23]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[23] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[23] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[23]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[24]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[24] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[24] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[24]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[25]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[25] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[25] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[25]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[26]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[26] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[26] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[26]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[27]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[27] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[27] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[27]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[28]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[28] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[28] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[28]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[29]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[29] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[29] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[29]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[2]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[2] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[2] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[2]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[30]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[30] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[30] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[30]));
  LUT5 #(
    .INIT(32'hF0807000)) 
    \upper_edge[31]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\ap_CS_fsm[0]_i_1_n_0 ),
        .I3(\upper_edge_flag_3_reg_384_reg_n_0_[0] ),
        .I4(\upper_edge_flag_2_reg_232_reg_n_0_[0] ),
        .O(upper_edge0));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[31]_i_2 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[31] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[31] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[31]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[3]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[3] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[3] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[3]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[4]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[4] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[4] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[4]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[5]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[5] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[5] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[5]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[6]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[6] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[6] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[6]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[7]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[7] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[7] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[7]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[8]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[8] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[8] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[8]));
  LUT4 #(
    .INIT(16'hF780)) 
    \upper_edge[9]_i_1 
       (.I0(tmp_reg_1168),
        .I1(ap_CS_fsm_state3),
        .I2(\upper_edge_new_2_reg_242_reg_n_0_[9] ),
        .I3(\upper_edge_new_3_reg_394_reg_n_0_[9] ),
        .O(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[9]));
  LUT2 #(
    .INIT(4'hE)) 
    \upper_edge_flag_2_reg_232[0]_i_1 
       (.I0(bottom_edge_flag_2_reg_2610),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .O(upper_edge_flag_2_reg_232));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hBBB8)) 
    \upper_edge_flag_2_reg_232[0]_i_2 
       (.I0(tmp_4_fu_488_p2),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(tmp_4_reg_1124),
        .O(\upper_edge_flag_2_reg_232[0]_i_2_n_0 ));
  FDRE \upper_edge_flag_2_reg_232_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_flag_2_reg_232[0]_i_2_n_0 ),
        .Q(\upper_edge_flag_2_reg_232_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_flag_3_reg_384[0]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(tmp_4_fu_488_p2),
        .I3(\upper_edge_flag_2_reg_232_reg_n_0_[0] ),
        .O(\upper_edge_flag_3_reg_384[0]_i_1_n_0 ));
  FDRE \upper_edge_flag_3_reg_384_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_flag_3_reg_384[0]_i_1_n_0 ),
        .Q(\upper_edge_flag_3_reg_384_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[0]_i_1 
       (.I0(height[0]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[0]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[0]),
        .O(\upper_edge_loc_2_reg_252[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[10]_i_1 
       (.I0(height[10]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[10]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[10]),
        .O(\upper_edge_loc_2_reg_252[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[11]_i_1 
       (.I0(height[11]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[11]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[11]),
        .O(\upper_edge_loc_2_reg_252[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[12]_i_1 
       (.I0(height[12]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[12]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[12]),
        .O(\upper_edge_loc_2_reg_252[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[13]_i_1 
       (.I0(height[13]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[13]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[13]),
        .O(\upper_edge_loc_2_reg_252[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[14]_i_1 
       (.I0(height[14]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[14]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[14]),
        .O(\upper_edge_loc_2_reg_252[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[15]_i_1 
       (.I0(height[15]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[15]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[15]),
        .O(\upper_edge_loc_2_reg_252[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[16]_i_1 
       (.I0(height[16]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[16]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[16]),
        .O(\upper_edge_loc_2_reg_252[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[16]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[16]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[16]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[16]),
        .O(tmp_34_fu_835_p1__0[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[17]_i_1 
       (.I0(height[17]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[17]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[17]),
        .O(\upper_edge_loc_2_reg_252[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[17]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[17]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[17]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[17]),
        .O(tmp_34_fu_835_p1__0[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[18]_i_1 
       (.I0(height[18]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[18]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[18]),
        .O(\upper_edge_loc_2_reg_252[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[18]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[18]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[18]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[18]),
        .O(tmp_34_fu_835_p1__0[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[19]_i_1 
       (.I0(height[19]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[19]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[19]),
        .O(\upper_edge_loc_2_reg_252[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[19]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[19]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[19]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[19]),
        .O(tmp_34_fu_835_p1__0[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[1]_i_1 
       (.I0(height[1]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[1]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[1]),
        .O(\upper_edge_loc_2_reg_252[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[20]_i_1 
       (.I0(height[20]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[20]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[20]),
        .O(\upper_edge_loc_2_reg_252[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[20]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[20]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[20]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[20]),
        .O(tmp_34_fu_835_p1__0[20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[21]_i_1 
       (.I0(height[21]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[21]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[21]),
        .O(\upper_edge_loc_2_reg_252[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[21]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[21]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[21]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[21]),
        .O(tmp_34_fu_835_p1__0[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[22]_i_1 
       (.I0(height[22]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[22]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[22]),
        .O(\upper_edge_loc_2_reg_252[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[22]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[22]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[22]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[22]),
        .O(tmp_34_fu_835_p1__0[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[23]_i_1 
       (.I0(height[23]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[23]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[23]),
        .O(\upper_edge_loc_2_reg_252[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[23]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[23]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[23]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[23]),
        .O(tmp_34_fu_835_p1__0[23]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[24]_i_1 
       (.I0(height[24]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[24]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[24]),
        .O(\upper_edge_loc_2_reg_252[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[24]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[24]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[24]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[24]),
        .O(tmp_34_fu_835_p1__0[24]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[25]_i_1 
       (.I0(height[25]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[25]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[25]),
        .O(\upper_edge_loc_2_reg_252[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[25]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[25]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[25]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[25]),
        .O(tmp_34_fu_835_p1__0[25]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[26]_i_1 
       (.I0(height[26]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[26]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[26]),
        .O(\upper_edge_loc_2_reg_252[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[26]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[26]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[26]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[26]),
        .O(tmp_34_fu_835_p1__0[26]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[27]_i_1 
       (.I0(height[27]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[27]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[27]),
        .O(\upper_edge_loc_2_reg_252[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[27]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[27]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[27]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[27]),
        .O(tmp_34_fu_835_p1__0[27]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[28]_i_1 
       (.I0(height[28]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[28]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[28]),
        .O(\upper_edge_loc_2_reg_252[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[28]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[28]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[28]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[28]),
        .O(tmp_34_fu_835_p1__0[28]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[29]_i_1 
       (.I0(height[29]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[29]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[29]),
        .O(\upper_edge_loc_2_reg_252[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[29]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[29]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[29]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[29]),
        .O(tmp_34_fu_835_p1__0[29]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[2]_i_1 
       (.I0(height[2]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[2]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[2]),
        .O(\upper_edge_loc_2_reg_252[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[30]_i_1 
       (.I0(height[30]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[30]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1__0[30]),
        .O(\upper_edge_loc_2_reg_252[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[30]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[30]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[30]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[30]),
        .O(tmp_34_fu_835_p1__0[30]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[31]_i_1 
       (.I0(height[31]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[31]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(\upper_edge_loc_2_reg_252[31]_i_2_n_0 ),
        .O(\upper_edge_loc_2_reg_252[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[31]_i_2 
       (.I0(p_current_y_cord_load_reg_1111[31]),
        .I1(tmp_8_fu_773_p2_carry__2_n_0),
        .I2(height_upper_edge_lo_reg_1147[31]),
        .I3(bottom_edge_flag_2_reg_2610),
        .I4(upper_edge_loc_2_reg_252[31]),
        .O(\upper_edge_loc_2_reg_252[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[3]_i_1 
       (.I0(height[3]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[3]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[3]),
        .O(\upper_edge_loc_2_reg_252[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[4]_i_1 
       (.I0(height[4]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[4]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[4]),
        .O(\upper_edge_loc_2_reg_252[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[5]_i_1 
       (.I0(height[5]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[5]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[5]),
        .O(\upper_edge_loc_2_reg_252[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[6]_i_1 
       (.I0(height[6]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[6]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[6]),
        .O(\upper_edge_loc_2_reg_252[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[7]_i_1 
       (.I0(height[7]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[7]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[7]),
        .O(\upper_edge_loc_2_reg_252[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[8]_i_1 
       (.I0(height[8]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[8]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[8]),
        .O(\upper_edge_loc_2_reg_252[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \upper_edge_loc_2_reg_252[9]_i_1 
       (.I0(height[9]),
        .I1(tmp_4_fu_488_p2),
        .I2(upper_edge[9]),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(tmp_34_fu_835_p1[9]),
        .O(\upper_edge_loc_2_reg_252[9]_i_1_n_0 ));
  FDRE \upper_edge_loc_2_reg_252_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[0]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[0]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[10]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[10]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[11]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[11]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[12]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[12]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[13]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[13]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[14]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[14]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[15]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[15]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[16]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[16]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[17]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[17]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[18]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[18]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[19]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[19]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[1]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[1]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[20]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[20]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[21]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[21]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[22]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[22]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[23]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[23]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[24]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[24]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[25]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[25]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[26]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[26]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[27]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[27]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[28]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[28]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[29]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[29]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[2]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[2]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[30]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[30]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[31]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[31]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[3]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[3]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[4]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[4]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[5]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[5]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[6]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[6]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[7]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[7]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[8]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[8]),
        .R(1'b0));
  FDRE \upper_edge_loc_2_reg_252_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\upper_edge_loc_2_reg_252[9]_i_1_n_0 ),
        .Q(upper_edge_loc_2_reg_252[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[0]_i_1 
       (.I0(height[0]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[0]),
        .O(\upper_edge_new_2_reg_242[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[10]_i_1 
       (.I0(height[10]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[10]),
        .O(\upper_edge_new_2_reg_242[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[11]_i_1 
       (.I0(height[11]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[11]),
        .O(\upper_edge_new_2_reg_242[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[12]_i_1 
       (.I0(height[12]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[12]),
        .O(\upper_edge_new_2_reg_242[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[13]_i_1 
       (.I0(height[13]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[13]),
        .O(\upper_edge_new_2_reg_242[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[14]_i_1 
       (.I0(height[14]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[14]),
        .O(\upper_edge_new_2_reg_242[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[15]_i_1 
       (.I0(height[15]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[15]),
        .O(\upper_edge_new_2_reg_242[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[16]_i_1 
       (.I0(height[16]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[16]),
        .O(\upper_edge_new_2_reg_242[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[17]_i_1 
       (.I0(height[17]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[17]),
        .O(\upper_edge_new_2_reg_242[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[18]_i_1 
       (.I0(height[18]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[18]),
        .O(\upper_edge_new_2_reg_242[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[19]_i_1 
       (.I0(height[19]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[19]),
        .O(\upper_edge_new_2_reg_242[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[1]_i_1 
       (.I0(height[1]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[1]),
        .O(\upper_edge_new_2_reg_242[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[20]_i_1 
       (.I0(height[20]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[20]),
        .O(\upper_edge_new_2_reg_242[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[21]_i_1 
       (.I0(height[21]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[21]),
        .O(\upper_edge_new_2_reg_242[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[22]_i_1 
       (.I0(height[22]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[22]),
        .O(\upper_edge_new_2_reg_242[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[23]_i_1 
       (.I0(height[23]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[23]),
        .O(\upper_edge_new_2_reg_242[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[24]_i_1 
       (.I0(height[24]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[24]),
        .O(\upper_edge_new_2_reg_242[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[25]_i_1 
       (.I0(height[25]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[25]),
        .O(\upper_edge_new_2_reg_242[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[26]_i_1 
       (.I0(height[26]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[26]),
        .O(\upper_edge_new_2_reg_242[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[27]_i_1 
       (.I0(height[27]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[27]),
        .O(\upper_edge_new_2_reg_242[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[28]_i_1 
       (.I0(height[28]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[28]),
        .O(\upper_edge_new_2_reg_242[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[29]_i_1 
       (.I0(height[29]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[29]),
        .O(\upper_edge_new_2_reg_242[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[2]_i_1 
       (.I0(height[2]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[2]),
        .O(\upper_edge_new_2_reg_242[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[30]_i_1 
       (.I0(height[30]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[30]),
        .O(\upper_edge_new_2_reg_242[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[31]_i_1 
       (.I0(height[31]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[31]),
        .O(\upper_edge_new_2_reg_242[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[3]_i_1 
       (.I0(height[3]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[3]),
        .O(\upper_edge_new_2_reg_242[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[4]_i_1 
       (.I0(height[4]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[4]),
        .O(\upper_edge_new_2_reg_242[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[5]_i_1 
       (.I0(height[5]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[5]),
        .O(\upper_edge_new_2_reg_242[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[6]_i_1 
       (.I0(height[6]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[6]),
        .O(\upper_edge_new_2_reg_242[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[7]_i_1 
       (.I0(height[7]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[7]),
        .O(\upper_edge_new_2_reg_242[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[8]_i_1 
       (.I0(height[8]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[8]),
        .O(\upper_edge_new_2_reg_242[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \upper_edge_new_2_reg_242[9]_i_1 
       (.I0(height[9]),
        .I1(\ap_CS_fsm_reg[0]_1 ),
        .I2(tmp_8_fu_773_p2_carry__2_n_0),
        .I3(p_current_y_cord_load_reg_1111[9]),
        .O(\upper_edge_new_2_reg_242[9]_i_1_n_0 ));
  FDRE \upper_edge_new_2_reg_242_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[0]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[10] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[10]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[11] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[11]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[12] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[12]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[13] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[13]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[14] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[14]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[15] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[15]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[16] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[16]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[17] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[17]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[18] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[18]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[19] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[19]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[1] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[1]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[20] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[20]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[21] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[21]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[22] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[22]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[23] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[23]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[24] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[24]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[25] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[25]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[26] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[26]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[27] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[27]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[28] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[28]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[29] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[29]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[2] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[2]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[30] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[30]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[31] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[31]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[3] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[3]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[4] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[4]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[5] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[5]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[6] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[6]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[7] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[7]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[8] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[8]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \upper_edge_new_2_reg_242_reg[9] 
       (.C(aclk),
        .CE(upper_edge_flag_2_reg_232),
        .D(\upper_edge_new_2_reg_242[9]_i_1_n_0 ),
        .Q(\upper_edge_new_2_reg_242_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[0]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[0]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[0] ),
        .O(\upper_edge_new_3_reg_394[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[10]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[10]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[10] ),
        .O(\upper_edge_new_3_reg_394[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[11]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[11]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[11] ),
        .O(\upper_edge_new_3_reg_394[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[12]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[12]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[12] ),
        .O(\upper_edge_new_3_reg_394[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[13]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[13]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[13] ),
        .O(\upper_edge_new_3_reg_394[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[14]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[14]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[14] ),
        .O(\upper_edge_new_3_reg_394[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[15]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[15]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[15] ),
        .O(\upper_edge_new_3_reg_394[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[16]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[16]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[16] ),
        .O(\upper_edge_new_3_reg_394[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[17]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[17]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[17] ),
        .O(\upper_edge_new_3_reg_394[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[18]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[18]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[18] ),
        .O(\upper_edge_new_3_reg_394[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[19]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[19]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[19] ),
        .O(\upper_edge_new_3_reg_394[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[1]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[1]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[1] ),
        .O(\upper_edge_new_3_reg_394[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[20]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[20]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[20] ),
        .O(\upper_edge_new_3_reg_394[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[21]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[21]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[21] ),
        .O(\upper_edge_new_3_reg_394[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[22]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[22]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[22] ),
        .O(\upper_edge_new_3_reg_394[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[23]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[23]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[23] ),
        .O(\upper_edge_new_3_reg_394[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[24]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[24]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[24] ),
        .O(\upper_edge_new_3_reg_394[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[25]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[25]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[25] ),
        .O(\upper_edge_new_3_reg_394[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[26]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[26]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[26] ),
        .O(\upper_edge_new_3_reg_394[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[27]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[27]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[27] ),
        .O(\upper_edge_new_3_reg_394[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[28]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[28]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[28] ),
        .O(\upper_edge_new_3_reg_394[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[29]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[29]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[29] ),
        .O(\upper_edge_new_3_reg_394[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[2]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[2]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[2] ),
        .O(\upper_edge_new_3_reg_394[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[30]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[30]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[30] ),
        .O(\upper_edge_new_3_reg_394[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[31]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[31]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[31] ),
        .O(\upper_edge_new_3_reg_394[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[3]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[3]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[3] ),
        .O(\upper_edge_new_3_reg_394[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[4]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[4]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[4] ),
        .O(\upper_edge_new_3_reg_394[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[5]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[5]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[5] ),
        .O(\upper_edge_new_3_reg_394[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[6]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[6]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[6] ),
        .O(\upper_edge_new_3_reg_394[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[7]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[7]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[7] ),
        .O(\upper_edge_new_3_reg_394[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[8]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[8]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[8] ),
        .O(\upper_edge_new_3_reg_394[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD20)) 
    \upper_edge_new_3_reg_394[9]_i_1 
       (.I0(Q),
        .I1(\state_reg[0] ),
        .I2(height[9]),
        .I3(\upper_edge_new_2_reg_242_reg_n_0_[9] ),
        .O(\upper_edge_new_3_reg_394[9]_i_1_n_0 ));
  FDRE \upper_edge_new_3_reg_394_reg[0] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[0]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[10] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[10]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[11] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[11]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[12] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[12]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[13] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[13]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[14] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[14]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[15] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[15]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[16] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[16]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[17] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[17]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[18] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[18]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[19] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[19]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[1] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[1]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[20] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[20]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[21] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[21]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[22] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[22]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[23] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[23]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[24] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[24]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[25] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[25]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[26] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[26]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[27] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[27]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[28] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[28]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[29] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[29]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[2] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[2]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[30] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[30]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[31] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[31]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[3] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[3]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[4] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[4]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[5] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[5]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[6] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[6]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[7] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[7]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[8] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[8]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \upper_edge_new_3_reg_394_reg[9] 
       (.C(aclk),
        .CE(upper_edge_flag_3_reg_384),
        .D(\upper_edge_new_3_reg_394[9]_i_1_n_0 ),
        .Q(\upper_edge_new_3_reg_394_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[0] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[0]),
        .Q(upper_edge[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[10] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[10]),
        .Q(upper_edge[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[11] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[11]),
        .Q(upper_edge[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[12] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[12]),
        .Q(upper_edge[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[13] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[13]),
        .Q(upper_edge[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[14] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[14]),
        .Q(upper_edge[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[15] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[15]),
        .Q(upper_edge[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[16] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[16]),
        .Q(upper_edge[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[17] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[17]),
        .Q(upper_edge[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[18] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[18]),
        .Q(upper_edge[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[19] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[19]),
        .Q(upper_edge[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[1] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[1]),
        .Q(upper_edge[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[20] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[20]),
        .Q(upper_edge[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[21] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[21]),
        .Q(upper_edge[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[22] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[22]),
        .Q(upper_edge[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[23] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[23]),
        .Q(upper_edge[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[24] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[24]),
        .Q(upper_edge[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[25] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[25]),
        .Q(upper_edge[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[26] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[26]),
        .Q(upper_edge[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[27] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[27]),
        .Q(upper_edge[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[28] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[28]),
        .Q(upper_edge[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[29] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[29]),
        .Q(upper_edge[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[2] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[2]),
        .Q(upper_edge[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[30] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[30]),
        .Q(upper_edge[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[31] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[31]),
        .Q(upper_edge[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[3] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[3]),
        .Q(upper_edge[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[4] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[4]),
        .Q(upper_edge[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[5] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[5]),
        .Q(upper_edge[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[6] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[6]),
        .Q(upper_edge[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[7] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[7]),
        .Q(upper_edge[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[8] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[8]),
        .Q(upper_edge[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \upper_edge_reg[9] 
       (.C(aclk),
        .CE(upper_edge0),
        .D(ap_phi_mux_upper_edge_new_3_phi_fu_397_p4[9]),
        .Q(upper_edge[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[0]_i_1 
       (.I0(width[0]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[0]),
        .O(width_left_edge_load_fu_510_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[10]_i_1 
       (.I0(width[10]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[10]),
        .O(width_left_edge_load_fu_510_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[11]_i_1 
       (.I0(width[11]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[11]),
        .O(width_left_edge_load_fu_510_p3[11]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[12]_i_1 
       (.I0(width[12]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[12]),
        .O(width_left_edge_load_fu_510_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[13]_i_1 
       (.I0(width[13]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[13]),
        .O(width_left_edge_load_fu_510_p3[13]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[14]_i_1 
       (.I0(width[14]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[14]),
        .O(width_left_edge_load_fu_510_p3[14]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[15]_i_1 
       (.I0(width[15]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[15]),
        .O(width_left_edge_load_fu_510_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[16]_i_1 
       (.I0(width[16]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[16]),
        .O(width_left_edge_load_fu_510_p3[16]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[17]_i_1 
       (.I0(width[17]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[17]),
        .O(width_left_edge_load_fu_510_p3[17]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[18]_i_1 
       (.I0(width[18]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[18]),
        .O(width_left_edge_load_fu_510_p3[18]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[19]_i_1 
       (.I0(width[19]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[19]),
        .O(width_left_edge_load_fu_510_p3[19]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[1]_i_1 
       (.I0(width[1]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[1]),
        .O(width_left_edge_load_fu_510_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[20]_i_1 
       (.I0(width[20]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[20]),
        .O(width_left_edge_load_fu_510_p3[20]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[21]_i_1 
       (.I0(width[21]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[21]),
        .O(width_left_edge_load_fu_510_p3[21]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[22]_i_1 
       (.I0(width[22]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[22]),
        .O(width_left_edge_load_fu_510_p3[22]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[23]_i_1 
       (.I0(width[23]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[23]),
        .O(width_left_edge_load_fu_510_p3[23]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[24]_i_1 
       (.I0(width[24]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[24]),
        .O(width_left_edge_load_fu_510_p3[24]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[25]_i_1 
       (.I0(width[25]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[25]),
        .O(width_left_edge_load_fu_510_p3[25]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[26]_i_1 
       (.I0(width[26]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[26]),
        .O(width_left_edge_load_fu_510_p3[26]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[27]_i_1 
       (.I0(width[27]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[27]),
        .O(width_left_edge_load_fu_510_p3[27]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[28]_i_1 
       (.I0(width[28]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[28]),
        .O(width_left_edge_load_fu_510_p3[28]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[29]_i_1 
       (.I0(width[29]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[29]),
        .O(width_left_edge_load_fu_510_p3[29]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[2]_i_1 
       (.I0(width[2]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[2]),
        .O(width_left_edge_load_fu_510_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[30]_i_1 
       (.I0(width[30]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[30]),
        .O(width_left_edge_load_fu_510_p3[30]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[31]_i_1 
       (.I0(width[31]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[31]),
        .O(width_left_edge_load_fu_510_p3[31]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[3]_i_1 
       (.I0(width[3]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[3]),
        .O(width_left_edge_load_fu_510_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[4]_i_1 
       (.I0(width[4]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[4]),
        .O(width_left_edge_load_fu_510_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[5]_i_1 
       (.I0(width[5]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[5]),
        .O(width_left_edge_load_fu_510_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[6]_i_1 
       (.I0(width[6]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[6]),
        .O(width_left_edge_load_fu_510_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[7]_i_1 
       (.I0(width[7]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[7]),
        .O(width_left_edge_load_fu_510_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[8]_i_1 
       (.I0(width[8]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[8]),
        .O(width_left_edge_load_fu_510_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \width_left_edge_load_reg_1140[9]_i_1 
       (.I0(width[9]),
        .I1(tmp_4_fu_488_p2),
        .I2(left_edge[9]),
        .O(width_left_edge_load_fu_510_p3[9]));
  FDRE \width_left_edge_load_reg_1140_reg[0] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[0]),
        .Q(width_left_edge_load_reg_1140[0]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[10] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[10]),
        .Q(width_left_edge_load_reg_1140[10]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[11] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[11]),
        .Q(width_left_edge_load_reg_1140[11]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[12] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[12]),
        .Q(width_left_edge_load_reg_1140[12]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[13] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[13]),
        .Q(width_left_edge_load_reg_1140[13]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[14] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[14]),
        .Q(width_left_edge_load_reg_1140[14]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[15] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[15]),
        .Q(width_left_edge_load_reg_1140[15]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[16] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[16]),
        .Q(width_left_edge_load_reg_1140[16]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[17] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[17]),
        .Q(width_left_edge_load_reg_1140[17]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[18] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[18]),
        .Q(width_left_edge_load_reg_1140[18]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[19] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[19]),
        .Q(width_left_edge_load_reg_1140[19]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[1] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[1]),
        .Q(width_left_edge_load_reg_1140[1]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[20] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[20]),
        .Q(width_left_edge_load_reg_1140[20]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[21] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[21]),
        .Q(width_left_edge_load_reg_1140[21]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[22] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[22]),
        .Q(width_left_edge_load_reg_1140[22]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[23] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[23]),
        .Q(width_left_edge_load_reg_1140[23]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[24] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[24]),
        .Q(width_left_edge_load_reg_1140[24]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[25] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[25]),
        .Q(width_left_edge_load_reg_1140[25]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[26] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[26]),
        .Q(width_left_edge_load_reg_1140[26]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[27] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[27]),
        .Q(width_left_edge_load_reg_1140[27]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[28] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[28]),
        .Q(width_left_edge_load_reg_1140[28]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[29] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[29]),
        .Q(width_left_edge_load_reg_1140[29]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[2] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[2]),
        .Q(width_left_edge_load_reg_1140[2]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[30] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[30]),
        .Q(width_left_edge_load_reg_1140[30]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[31] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[31]),
        .Q(width_left_edge_load_reg_1140[31]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[3] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[3]),
        .Q(width_left_edge_load_reg_1140[3]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[4] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[4]),
        .Q(width_left_edge_load_reg_1140[4]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[5] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[5]),
        .Q(width_left_edge_load_reg_1140[5]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[6] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[6]),
        .Q(width_left_edge_load_reg_1140[6]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[7] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[7]),
        .Q(width_left_edge_load_reg_1140[7]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[8] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[8]),
        .Q(width_left_edge_load_reg_1140[8]),
        .R(1'b0));
  FDRE \width_left_edge_load_reg_1140_reg[9] 
       (.C(aclk),
        .CE(Q),
        .D(width_left_edge_load_fu_510_p3[9]),
        .Q(width_left_edge_load_reg_1140[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \x_cord_out[0]_INST_0 
       (.I0(p_0_in),
        .I1(p_current_x_cord_load_reg_1099[0]),
        .O(x_cord_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[10]_INST_0 
       (.I0(tmp_27_fu_1002_p2[10]),
        .I1(p_0_in),
        .O(x_cord_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[11]_INST_0 
       (.I0(tmp_27_fu_1002_p2[11]),
        .I1(p_0_in),
        .O(x_cord_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[12]_INST_0 
       (.I0(tmp_27_fu_1002_p2[12]),
        .I1(p_0_in),
        .O(x_cord_out[12]));
  CARRY4 \x_cord_out[12]_INST_0_i_1 
       (.CI(\x_cord_out[8]_INST_0_i_1_n_0 ),
        .CO({\x_cord_out[12]_INST_0_i_1_n_0 ,\x_cord_out[12]_INST_0_i_1_n_1 ,\x_cord_out[12]_INST_0_i_1_n_2 ,\x_cord_out[12]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_27_fu_1002_p2[12:9]),
        .S(p_current_x_cord_load_reg_1099[12:9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[13]_INST_0 
       (.I0(tmp_27_fu_1002_p2[13]),
        .I1(p_0_in),
        .O(x_cord_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[14]_INST_0 
       (.I0(tmp_27_fu_1002_p2[14]),
        .I1(p_0_in),
        .O(x_cord_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[15]_INST_0 
       (.I0(tmp_27_fu_1002_p2[15]),
        .I1(p_0_in),
        .O(x_cord_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[16]_INST_0 
       (.I0(tmp_27_fu_1002_p2[16]),
        .I1(p_0_in),
        .O(x_cord_out[16]));
  CARRY4 \x_cord_out[16]_INST_0_i_1 
       (.CI(\x_cord_out[12]_INST_0_i_1_n_0 ),
        .CO({\x_cord_out[16]_INST_0_i_1_n_0 ,\x_cord_out[16]_INST_0_i_1_n_1 ,\x_cord_out[16]_INST_0_i_1_n_2 ,\x_cord_out[16]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_27_fu_1002_p2[16:13]),
        .S(p_current_x_cord_load_reg_1099[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[17]_INST_0 
       (.I0(tmp_27_fu_1002_p2[17]),
        .I1(p_0_in),
        .O(x_cord_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[18]_INST_0 
       (.I0(tmp_27_fu_1002_p2[18]),
        .I1(p_0_in),
        .O(x_cord_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[19]_INST_0 
       (.I0(tmp_27_fu_1002_p2[19]),
        .I1(p_0_in),
        .O(x_cord_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[1]_INST_0 
       (.I0(tmp_27_fu_1002_p2[1]),
        .I1(p_0_in),
        .O(x_cord_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[20]_INST_0 
       (.I0(tmp_27_fu_1002_p2[20]),
        .I1(p_0_in),
        .O(x_cord_out[20]));
  CARRY4 \x_cord_out[20]_INST_0_i_1 
       (.CI(\x_cord_out[16]_INST_0_i_1_n_0 ),
        .CO({\x_cord_out[20]_INST_0_i_1_n_0 ,\x_cord_out[20]_INST_0_i_1_n_1 ,\x_cord_out[20]_INST_0_i_1_n_2 ,\x_cord_out[20]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_27_fu_1002_p2[20:17]),
        .S(p_current_x_cord_load_reg_1099[20:17]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[21]_INST_0 
       (.I0(tmp_27_fu_1002_p2[21]),
        .I1(p_0_in),
        .O(x_cord_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[22]_INST_0 
       (.I0(tmp_27_fu_1002_p2[22]),
        .I1(p_0_in),
        .O(x_cord_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[23]_INST_0 
       (.I0(tmp_27_fu_1002_p2[23]),
        .I1(p_0_in),
        .O(x_cord_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[24]_INST_0 
       (.I0(tmp_27_fu_1002_p2[24]),
        .I1(p_0_in),
        .O(x_cord_out[24]));
  CARRY4 \x_cord_out[24]_INST_0_i_1 
       (.CI(\x_cord_out[20]_INST_0_i_1_n_0 ),
        .CO({\x_cord_out[24]_INST_0_i_1_n_0 ,\x_cord_out[24]_INST_0_i_1_n_1 ,\x_cord_out[24]_INST_0_i_1_n_2 ,\x_cord_out[24]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_27_fu_1002_p2[24:21]),
        .S(p_current_x_cord_load_reg_1099[24:21]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[25]_INST_0 
       (.I0(tmp_27_fu_1002_p2[25]),
        .I1(p_0_in),
        .O(x_cord_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[26]_INST_0 
       (.I0(tmp_27_fu_1002_p2[26]),
        .I1(p_0_in),
        .O(x_cord_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[27]_INST_0 
       (.I0(tmp_27_fu_1002_p2[27]),
        .I1(p_0_in),
        .O(x_cord_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[28]_INST_0 
       (.I0(tmp_27_fu_1002_p2[28]),
        .I1(p_0_in),
        .O(x_cord_out[28]));
  CARRY4 \x_cord_out[28]_INST_0_i_1 
       (.CI(\x_cord_out[24]_INST_0_i_1_n_0 ),
        .CO({\x_cord_out[28]_INST_0_i_1_n_0 ,\x_cord_out[28]_INST_0_i_1_n_1 ,\x_cord_out[28]_INST_0_i_1_n_2 ,\x_cord_out[28]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_27_fu_1002_p2[28:25]),
        .S(p_current_x_cord_load_reg_1099[28:25]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[29]_INST_0 
       (.I0(tmp_27_fu_1002_p2[29]),
        .I1(p_0_in),
        .O(x_cord_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[2]_INST_0 
       (.I0(tmp_27_fu_1002_p2[2]),
        .I1(p_0_in),
        .O(x_cord_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[30]_INST_0 
       (.I0(tmp_27_fu_1002_p2[30]),
        .I1(p_0_in),
        .O(x_cord_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[31]_INST_0 
       (.I0(tmp_27_fu_1002_p2[31]),
        .I1(p_0_in),
        .O(x_cord_out[31]));
  CARRY4 \x_cord_out[31]_INST_0_i_1 
       (.CI(\x_cord_out[28]_INST_0_i_1_n_0 ),
        .CO({\NLW_x_cord_out[31]_INST_0_i_1_CO_UNCONNECTED [3:2],\x_cord_out[31]_INST_0_i_1_n_2 ,\x_cord_out[31]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_x_cord_out[31]_INST_0_i_1_O_UNCONNECTED [3],tmp_27_fu_1002_p2[31:29]}),
        .S({1'b0,p_current_x_cord_load_reg_1099[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[3]_INST_0 
       (.I0(tmp_27_fu_1002_p2[3]),
        .I1(p_0_in),
        .O(x_cord_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[4]_INST_0 
       (.I0(tmp_27_fu_1002_p2[4]),
        .I1(p_0_in),
        .O(x_cord_out[4]));
  CARRY4 \x_cord_out[4]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\x_cord_out[4]_INST_0_i_1_n_0 ,\x_cord_out[4]_INST_0_i_1_n_1 ,\x_cord_out[4]_INST_0_i_1_n_2 ,\x_cord_out[4]_INST_0_i_1_n_3 }),
        .CYINIT(p_current_x_cord_load_reg_1099[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_27_fu_1002_p2[4:1]),
        .S(p_current_x_cord_load_reg_1099[4:1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[5]_INST_0 
       (.I0(tmp_27_fu_1002_p2[5]),
        .I1(p_0_in),
        .O(x_cord_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[6]_INST_0 
       (.I0(tmp_27_fu_1002_p2[6]),
        .I1(p_0_in),
        .O(x_cord_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[7]_INST_0 
       (.I0(tmp_27_fu_1002_p2[7]),
        .I1(p_0_in),
        .O(x_cord_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[8]_INST_0 
       (.I0(tmp_27_fu_1002_p2[8]),
        .I1(p_0_in),
        .O(x_cord_out[8]));
  CARRY4 \x_cord_out[8]_INST_0_i_1 
       (.CI(\x_cord_out[4]_INST_0_i_1_n_0 ),
        .CO({\x_cord_out[8]_INST_0_i_1_n_0 ,\x_cord_out[8]_INST_0_i_1_n_1 ,\x_cord_out[8]_INST_0_i_1_n_2 ,\x_cord_out[8]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_27_fu_1002_p2[8:5]),
        .S(p_current_x_cord_load_reg_1099[8:5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_cord_out[9]_INST_0 
       (.I0(tmp_27_fu_1002_p2[9]),
        .I1(p_0_in),
        .O(x_cord_out[9]));
  LUT5 #(
    .INIT(32'h88880888)) 
    x_cord_out_ap_vld_INST_0
       (.I0(\tmp_reg_1168_reg[0]_rep_n_0 ),
        .I1(\ap_CS_fsm_reg[2]_rep_n_0 ),
        .I2(tmp_5_reg_1176),
        .I3(tmp_10_reg_1181),
        .I4(sig_det_color_cord_cord_out_V_full_n),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \y_cord_out[0]_INST_0 
       (.I0(p_current_y_cord_load_reg_1111[0]),
        .I1(p_0_in),
        .I2(tmp_5_reg_1176),
        .O(y_cord_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[10]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[10]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[10]),
        .O(y_cord_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[11]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[11]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[11]),
        .O(y_cord_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[12]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[12]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[12]),
        .O(y_cord_out[12]));
  CARRY4 \y_cord_out[12]_INST_0_i_1 
       (.CI(\y_cord_out[8]_INST_0_i_1_n_0 ),
        .CO({\y_cord_out[12]_INST_0_i_1_n_0 ,\y_cord_out[12]_INST_0_i_1_n_1 ,\y_cord_out[12]_INST_0_i_1_n_2 ,\y_cord_out[12]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_26_fu_990_p2[12:9]),
        .S(p_current_y_cord_load_reg_1111[12:9]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[13]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[13]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[13]),
        .O(y_cord_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[14]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[14]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[14]),
        .O(y_cord_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[15]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[15]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[15]),
        .O(y_cord_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[16]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[16]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[16]),
        .O(y_cord_out[16]));
  CARRY4 \y_cord_out[16]_INST_0_i_1 
       (.CI(\y_cord_out[12]_INST_0_i_1_n_0 ),
        .CO({\y_cord_out[16]_INST_0_i_1_n_0 ,\y_cord_out[16]_INST_0_i_1_n_1 ,\y_cord_out[16]_INST_0_i_1_n_2 ,\y_cord_out[16]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_26_fu_990_p2[16:13]),
        .S(p_current_y_cord_load_reg_1111[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[17]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[17]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[17]),
        .O(y_cord_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[18]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[18]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[18]),
        .O(y_cord_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[19]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[19]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[19]),
        .O(y_cord_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[1]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[1]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[1]),
        .O(y_cord_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[20]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[20]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[20]),
        .O(y_cord_out[20]));
  CARRY4 \y_cord_out[20]_INST_0_i_1 
       (.CI(\y_cord_out[16]_INST_0_i_1_n_0 ),
        .CO({\y_cord_out[20]_INST_0_i_1_n_0 ,\y_cord_out[20]_INST_0_i_1_n_1 ,\y_cord_out[20]_INST_0_i_1_n_2 ,\y_cord_out[20]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_26_fu_990_p2[20:17]),
        .S(p_current_y_cord_load_reg_1111[20:17]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[21]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[21]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[21]),
        .O(y_cord_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[22]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[22]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[22]),
        .O(y_cord_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[23]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[23]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[23]),
        .O(y_cord_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[24]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[24]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[24]),
        .O(y_cord_out[24]));
  CARRY4 \y_cord_out[24]_INST_0_i_1 
       (.CI(\y_cord_out[20]_INST_0_i_1_n_0 ),
        .CO({\y_cord_out[24]_INST_0_i_1_n_0 ,\y_cord_out[24]_INST_0_i_1_n_1 ,\y_cord_out[24]_INST_0_i_1_n_2 ,\y_cord_out[24]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_26_fu_990_p2[24:21]),
        .S(p_current_y_cord_load_reg_1111[24:21]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[25]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[25]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[25]),
        .O(y_cord_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[26]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[26]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[26]),
        .O(y_cord_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[27]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[27]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[27]),
        .O(y_cord_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[28]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[28]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[28]),
        .O(y_cord_out[28]));
  CARRY4 \y_cord_out[28]_INST_0_i_1 
       (.CI(\y_cord_out[24]_INST_0_i_1_n_0 ),
        .CO({\y_cord_out[28]_INST_0_i_1_n_0 ,\y_cord_out[28]_INST_0_i_1_n_1 ,\y_cord_out[28]_INST_0_i_1_n_2 ,\y_cord_out[28]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_26_fu_990_p2[28:25]),
        .S(p_current_y_cord_load_reg_1111[28:25]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[29]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[29]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[29]),
        .O(y_cord_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[2]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[2]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[2]),
        .O(y_cord_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[30]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[30]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[30]),
        .O(y_cord_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[31]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[31]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[31]),
        .O(y_cord_out[31]));
  CARRY4 \y_cord_out[31]_INST_0_i_1 
       (.CI(\y_cord_out[28]_INST_0_i_1_n_0 ),
        .CO({\NLW_y_cord_out[31]_INST_0_i_1_CO_UNCONNECTED [3:2],\y_cord_out[31]_INST_0_i_1_n_2 ,\y_cord_out[31]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_y_cord_out[31]_INST_0_i_1_O_UNCONNECTED [3],tmp_26_fu_990_p2[31:29]}),
        .S({1'b0,p_current_y_cord_load_reg_1111[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[3]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[3]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[3]),
        .O(y_cord_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[4]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[4]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[4]),
        .O(y_cord_out[4]));
  CARRY4 \y_cord_out[4]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\y_cord_out[4]_INST_0_i_1_n_0 ,\y_cord_out[4]_INST_0_i_1_n_1 ,\y_cord_out[4]_INST_0_i_1_n_2 ,\y_cord_out[4]_INST_0_i_1_n_3 }),
        .CYINIT(p_current_y_cord_load_reg_1111[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_26_fu_990_p2[4:1]),
        .S(p_current_y_cord_load_reg_1111[4:1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[5]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[5]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[5]),
        .O(y_cord_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[6]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[6]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[6]),
        .O(y_cord_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[7]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[7]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[7]),
        .O(y_cord_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[8]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[8]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[8]),
        .O(y_cord_out[8]));
  CARRY4 \y_cord_out[8]_INST_0_i_1 
       (.CI(\y_cord_out[4]_INST_0_i_1_n_0 ),
        .CO({\y_cord_out[8]_INST_0_i_1_n_0 ,\y_cord_out[8]_INST_0_i_1_n_1 ,\y_cord_out[8]_INST_0_i_1_n_2 ,\y_cord_out[8]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(tmp_26_fu_990_p2[8:5]),
        .S(p_current_y_cord_load_reg_1111[8:5]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    \y_cord_out[9]_INST_0 
       (.I0(tmp_5_reg_1176),
        .I1(tmp_26_fu_990_p2[9]),
        .I2(p_0_in),
        .I3(p_current_y_cord_load_reg_1111[9]),
        .O(y_cord_out[9]));
endmodule

(* ORIG_REF_NAME = "det_color_cord_cord_out_V_if" *) 
module hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_if
   (sig_det_color_cord_cord_out_V_full_n,
    cord_out_V_TVALID,
    Q,
    \data_p1_reg[31] ,
    cord_out_V_TDATA,
    SR,
    aclk,
    s_ready_t_reg,
    cord_out_V_TREADY,
    D,
    \p_4_reg_1204_reg[63] ,
    edgeout_val_ap_vld);
  output sig_det_color_cord_cord_out_V_full_n;
  output cord_out_V_TVALID;
  output [31:0]Q;
  output \data_p1_reg[31] ;
  output [95:0]cord_out_V_TDATA;
  input [0:0]SR;
  input aclk;
  input s_ready_t_reg;
  input cord_out_V_TREADY;
  input [31:0]D;
  input [95:0]\p_4_reg_1204_reg[63] ;
  input edgeout_val_ap_vld;

  wire [31:0]D;
  wire [31:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire [95:0]cord_out_V_TDATA;
  wire cord_out_V_TREADY;
  wire cord_out_V_TVALID;
  wire \data_p1_reg[31] ;
  wire edgeout_val_ap_vld;
  wire [95:0]\p_4_reg_1204_reg[63] ;
  wire s_ready_t_reg;
  wire sig_det_color_cord_cord_out_V_full_n;

  hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_reg_slice rs
       (.D(D),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .cord_out_V_TDATA(cord_out_V_TDATA),
        .cord_out_V_TREADY(cord_out_V_TREADY),
        .cord_out_V_TVALID(cord_out_V_TVALID),
        .\data_p1_reg[31]_0 (\data_p1_reg[31] ),
        .edgeout_val_ap_vld(edgeout_val_ap_vld),
        .\p_4_reg_1204_reg[63] (\p_4_reg_1204_reg[63] ),
        .s_ready_t_reg_0(s_ready_t_reg),
        .sig_det_color_cord_cord_out_V_full_n(sig_det_color_cord_cord_out_V_full_n));
endmodule

(* ORIG_REF_NAME = "det_color_cord_cord_out_V_reg_slice" *) 
module hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_reg_slice
   (sig_det_color_cord_cord_out_V_full_n,
    cord_out_V_TVALID,
    \data_p1_reg[31]_0 ,
    Q,
    cord_out_V_TDATA,
    SR,
    aclk,
    s_ready_t_reg_0,
    cord_out_V_TREADY,
    \p_4_reg_1204_reg[63] ,
    edgeout_val_ap_vld,
    D);
  output sig_det_color_cord_cord_out_V_full_n;
  output cord_out_V_TVALID;
  output \data_p1_reg[31]_0 ;
  output [31:0]Q;
  output [95:0]cord_out_V_TDATA;
  input [0:0]SR;
  input aclk;
  input s_ready_t_reg_0;
  input cord_out_V_TREADY;
  input [95:0]\p_4_reg_1204_reg[63] ;
  input edgeout_val_ap_vld;
  input [31:0]D;

  wire [31:0]D;
  wire [31:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire [95:0]cord_out_V_TDATA;
  wire cord_out_V_TREADY;
  wire cord_out_V_TVALID;
  wire \data_p1_reg[31]_0 ;
  wire [95:32]data_p2;
  wire edgeout_val_ap_vld;
  wire load_p1;
  wire [1:0]next__0;
  wire [95:32]p_0_in;
  wire [95:0]\p_4_reg_1204_reg[63] ;
  wire s_ready_t_i_1_n_0;
  wire s_ready_t_reg_0;
  wire sig_det_color_cord_cord_out_V_full_n;
  wire [1:1]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire [1:0]state__0;

  LUT4 #(
    .INIT(16'h1102)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[1]),
        .I1(cord_out_V_TREADY),
        .I2(s_ready_t_reg_0),
        .I3(state__0[0]),
        .O(next__0[0]));
  LUT4 #(
    .INIT(16'h442D)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(cord_out_V_TREADY),
        .I2(s_ready_t_reg_0),
        .I3(state__0[0]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \data_p1[31]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\data_p1_reg[31]_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[32]_i_1 
       (.I0(data_p2[32]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [32]),
        .O(p_0_in[32]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[33]_i_1 
       (.I0(data_p2[33]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [33]),
        .O(p_0_in[33]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[34]_i_1 
       (.I0(data_p2[34]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [34]),
        .O(p_0_in[34]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[35]_i_1 
       (.I0(data_p2[35]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [35]),
        .O(p_0_in[35]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[36]_i_1 
       (.I0(data_p2[36]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [36]),
        .O(p_0_in[36]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[37]_i_1 
       (.I0(data_p2[37]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [37]),
        .O(p_0_in[37]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[38]_i_1 
       (.I0(data_p2[38]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [38]),
        .O(p_0_in[38]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[39]_i_1 
       (.I0(data_p2[39]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [39]),
        .O(p_0_in[39]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[40]_i_1 
       (.I0(data_p2[40]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [40]),
        .O(p_0_in[40]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[41]_i_1 
       (.I0(data_p2[41]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [41]),
        .O(p_0_in[41]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[42]_i_1 
       (.I0(data_p2[42]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [42]),
        .O(p_0_in[42]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[43]_i_1 
       (.I0(data_p2[43]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [43]),
        .O(p_0_in[43]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[44]_i_1 
       (.I0(data_p2[44]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [44]),
        .O(p_0_in[44]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[45]_i_1 
       (.I0(data_p2[45]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [45]),
        .O(p_0_in[45]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[46]_i_1 
       (.I0(data_p2[46]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [46]),
        .O(p_0_in[46]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[47]_i_1 
       (.I0(data_p2[47]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [47]),
        .O(p_0_in[47]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[48]_i_1 
       (.I0(data_p2[48]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [48]),
        .O(p_0_in[48]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[49]_i_1 
       (.I0(data_p2[49]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [49]),
        .O(p_0_in[49]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[50]_i_1 
       (.I0(data_p2[50]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [50]),
        .O(p_0_in[50]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[51]_i_1 
       (.I0(data_p2[51]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [51]),
        .O(p_0_in[51]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[52]_i_1 
       (.I0(data_p2[52]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [52]),
        .O(p_0_in[52]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[53]_i_1 
       (.I0(data_p2[53]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [53]),
        .O(p_0_in[53]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[54]_i_1 
       (.I0(data_p2[54]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [54]),
        .O(p_0_in[54]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[55]_i_1 
       (.I0(data_p2[55]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [55]),
        .O(p_0_in[55]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[56]_i_1 
       (.I0(data_p2[56]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [56]),
        .O(p_0_in[56]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[57]_i_1 
       (.I0(data_p2[57]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [57]),
        .O(p_0_in[57]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[58]_i_1 
       (.I0(data_p2[58]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [58]),
        .O(p_0_in[58]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[59]_i_1 
       (.I0(data_p2[59]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [59]),
        .O(p_0_in[59]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[60]_i_1 
       (.I0(data_p2[60]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [60]),
        .O(p_0_in[60]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[61]_i_1 
       (.I0(data_p2[61]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [61]),
        .O(p_0_in[61]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[62]_i_1 
       (.I0(data_p2[62]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [62]),
        .O(p_0_in[62]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[63]_i_1 
       (.I0(data_p2[63]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [63]),
        .O(p_0_in[63]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[64]_i_1 
       (.I0(data_p2[64]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [64]),
        .O(p_0_in[64]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[65]_i_1 
       (.I0(data_p2[65]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [65]),
        .O(p_0_in[65]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[66]_i_1 
       (.I0(data_p2[66]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [66]),
        .O(p_0_in[66]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[67]_i_1 
       (.I0(data_p2[67]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [67]),
        .O(p_0_in[67]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[68]_i_1 
       (.I0(data_p2[68]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [68]),
        .O(p_0_in[68]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[69]_i_1 
       (.I0(data_p2[69]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [69]),
        .O(p_0_in[69]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[70]_i_1 
       (.I0(data_p2[70]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [70]),
        .O(p_0_in[70]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[71]_i_1 
       (.I0(data_p2[71]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [71]),
        .O(p_0_in[71]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[72]_i_1 
       (.I0(data_p2[72]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [72]),
        .O(p_0_in[72]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[73]_i_1 
       (.I0(data_p2[73]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [73]),
        .O(p_0_in[73]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[74]_i_1 
       (.I0(data_p2[74]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [74]),
        .O(p_0_in[74]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[75]_i_1 
       (.I0(data_p2[75]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [75]),
        .O(p_0_in[75]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[76]_i_1 
       (.I0(data_p2[76]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [76]),
        .O(p_0_in[76]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[77]_i_1 
       (.I0(data_p2[77]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [77]),
        .O(p_0_in[77]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[78]_i_1 
       (.I0(data_p2[78]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [78]),
        .O(p_0_in[78]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[79]_i_1 
       (.I0(data_p2[79]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [79]),
        .O(p_0_in[79]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[80]_i_1 
       (.I0(data_p2[80]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [80]),
        .O(p_0_in[80]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[81]_i_1 
       (.I0(data_p2[81]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [81]),
        .O(p_0_in[81]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[82]_i_1 
       (.I0(data_p2[82]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [82]),
        .O(p_0_in[82]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[83]_i_1 
       (.I0(data_p2[83]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [83]),
        .O(p_0_in[83]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[84]_i_1 
       (.I0(data_p2[84]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [84]),
        .O(p_0_in[84]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[85]_i_1 
       (.I0(data_p2[85]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [85]),
        .O(p_0_in[85]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[86]_i_1 
       (.I0(data_p2[86]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [86]),
        .O(p_0_in[86]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[87]_i_1 
       (.I0(data_p2[87]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [87]),
        .O(p_0_in[87]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[88]_i_1 
       (.I0(data_p2[88]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [88]),
        .O(p_0_in[88]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[89]_i_1 
       (.I0(data_p2[89]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [89]),
        .O(p_0_in[89]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[90]_i_1 
       (.I0(data_p2[90]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [90]),
        .O(p_0_in[90]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[91]_i_1 
       (.I0(data_p2[91]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [91]),
        .O(p_0_in[91]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[92]_i_1 
       (.I0(data_p2[92]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [92]),
        .O(p_0_in[92]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[93]_i_1 
       (.I0(data_p2[93]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [93]),
        .O(p_0_in[93]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[94]_i_1 
       (.I0(data_p2[94]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [94]),
        .O(p_0_in[94]));
  LUT4 #(
    .INIT(16'h10D1)) 
    \data_p1[95]_i_1 
       (.I0(s_ready_t_reg_0),
        .I1(state__0[0]),
        .I2(cord_out_V_TREADY),
        .I3(state__0[1]),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[95]_i_2 
       (.I0(data_p2[95]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\p_4_reg_1204_reg[63] [95]),
        .O(p_0_in[95]));
  FDRE \data_p1_reg[0] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[0]),
        .Q(cord_out_V_TDATA[0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[10]),
        .Q(cord_out_V_TDATA[10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[11]),
        .Q(cord_out_V_TDATA[11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[12]),
        .Q(cord_out_V_TDATA[12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[13]),
        .Q(cord_out_V_TDATA[13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[14]),
        .Q(cord_out_V_TDATA[14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[15]),
        .Q(cord_out_V_TDATA[15]),
        .R(1'b0));
  FDRE \data_p1_reg[16] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[16]),
        .Q(cord_out_V_TDATA[16]),
        .R(1'b0));
  FDRE \data_p1_reg[17] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[17]),
        .Q(cord_out_V_TDATA[17]),
        .R(1'b0));
  FDRE \data_p1_reg[18] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[18]),
        .Q(cord_out_V_TDATA[18]),
        .R(1'b0));
  FDRE \data_p1_reg[19] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[19]),
        .Q(cord_out_V_TDATA[19]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[1]),
        .Q(cord_out_V_TDATA[1]),
        .R(1'b0));
  FDRE \data_p1_reg[20] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[20]),
        .Q(cord_out_V_TDATA[20]),
        .R(1'b0));
  FDRE \data_p1_reg[21] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[21]),
        .Q(cord_out_V_TDATA[21]),
        .R(1'b0));
  FDRE \data_p1_reg[22] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[22]),
        .Q(cord_out_V_TDATA[22]),
        .R(1'b0));
  FDRE \data_p1_reg[23] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[23]),
        .Q(cord_out_V_TDATA[23]),
        .R(1'b0));
  FDRE \data_p1_reg[24] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[24]),
        .Q(cord_out_V_TDATA[24]),
        .R(1'b0));
  FDRE \data_p1_reg[25] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[25]),
        .Q(cord_out_V_TDATA[25]),
        .R(1'b0));
  FDRE \data_p1_reg[26] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[26]),
        .Q(cord_out_V_TDATA[26]),
        .R(1'b0));
  FDRE \data_p1_reg[27] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[27]),
        .Q(cord_out_V_TDATA[27]),
        .R(1'b0));
  FDRE \data_p1_reg[28] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[28]),
        .Q(cord_out_V_TDATA[28]),
        .R(1'b0));
  FDRE \data_p1_reg[29] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[29]),
        .Q(cord_out_V_TDATA[29]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[2]),
        .Q(cord_out_V_TDATA[2]),
        .R(1'b0));
  FDRE \data_p1_reg[30] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[30]),
        .Q(cord_out_V_TDATA[30]),
        .R(1'b0));
  FDRE \data_p1_reg[31] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[31]),
        .Q(cord_out_V_TDATA[31]),
        .R(1'b0));
  FDRE \data_p1_reg[32] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[32]),
        .Q(cord_out_V_TDATA[32]),
        .R(1'b0));
  FDRE \data_p1_reg[33] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[33]),
        .Q(cord_out_V_TDATA[33]),
        .R(1'b0));
  FDRE \data_p1_reg[34] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[34]),
        .Q(cord_out_V_TDATA[34]),
        .R(1'b0));
  FDRE \data_p1_reg[35] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[35]),
        .Q(cord_out_V_TDATA[35]),
        .R(1'b0));
  FDRE \data_p1_reg[36] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[36]),
        .Q(cord_out_V_TDATA[36]),
        .R(1'b0));
  FDRE \data_p1_reg[37] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[37]),
        .Q(cord_out_V_TDATA[37]),
        .R(1'b0));
  FDRE \data_p1_reg[38] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[38]),
        .Q(cord_out_V_TDATA[38]),
        .R(1'b0));
  FDRE \data_p1_reg[39] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[39]),
        .Q(cord_out_V_TDATA[39]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[3]),
        .Q(cord_out_V_TDATA[3]),
        .R(1'b0));
  FDRE \data_p1_reg[40] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[40]),
        .Q(cord_out_V_TDATA[40]),
        .R(1'b0));
  FDRE \data_p1_reg[41] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[41]),
        .Q(cord_out_V_TDATA[41]),
        .R(1'b0));
  FDRE \data_p1_reg[42] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[42]),
        .Q(cord_out_V_TDATA[42]),
        .R(1'b0));
  FDRE \data_p1_reg[43] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[43]),
        .Q(cord_out_V_TDATA[43]),
        .R(1'b0));
  FDRE \data_p1_reg[44] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[44]),
        .Q(cord_out_V_TDATA[44]),
        .R(1'b0));
  FDRE \data_p1_reg[45] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[45]),
        .Q(cord_out_V_TDATA[45]),
        .R(1'b0));
  FDRE \data_p1_reg[46] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[46]),
        .Q(cord_out_V_TDATA[46]),
        .R(1'b0));
  FDRE \data_p1_reg[47] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[47]),
        .Q(cord_out_V_TDATA[47]),
        .R(1'b0));
  FDRE \data_p1_reg[48] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[48]),
        .Q(cord_out_V_TDATA[48]),
        .R(1'b0));
  FDRE \data_p1_reg[49] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[49]),
        .Q(cord_out_V_TDATA[49]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[4]),
        .Q(cord_out_V_TDATA[4]),
        .R(1'b0));
  FDRE \data_p1_reg[50] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[50]),
        .Q(cord_out_V_TDATA[50]),
        .R(1'b0));
  FDRE \data_p1_reg[51] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[51]),
        .Q(cord_out_V_TDATA[51]),
        .R(1'b0));
  FDRE \data_p1_reg[52] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[52]),
        .Q(cord_out_V_TDATA[52]),
        .R(1'b0));
  FDRE \data_p1_reg[53] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[53]),
        .Q(cord_out_V_TDATA[53]),
        .R(1'b0));
  FDRE \data_p1_reg[54] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[54]),
        .Q(cord_out_V_TDATA[54]),
        .R(1'b0));
  FDRE \data_p1_reg[55] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[55]),
        .Q(cord_out_V_TDATA[55]),
        .R(1'b0));
  FDRE \data_p1_reg[56] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[56]),
        .Q(cord_out_V_TDATA[56]),
        .R(1'b0));
  FDRE \data_p1_reg[57] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[57]),
        .Q(cord_out_V_TDATA[57]),
        .R(1'b0));
  FDRE \data_p1_reg[58] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[58]),
        .Q(cord_out_V_TDATA[58]),
        .R(1'b0));
  FDRE \data_p1_reg[59] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[59]),
        .Q(cord_out_V_TDATA[59]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[5]),
        .Q(cord_out_V_TDATA[5]),
        .R(1'b0));
  FDRE \data_p1_reg[60] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[60]),
        .Q(cord_out_V_TDATA[60]),
        .R(1'b0));
  FDRE \data_p1_reg[61] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[61]),
        .Q(cord_out_V_TDATA[61]),
        .R(1'b0));
  FDRE \data_p1_reg[62] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[62]),
        .Q(cord_out_V_TDATA[62]),
        .R(1'b0));
  FDRE \data_p1_reg[63] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[63]),
        .Q(cord_out_V_TDATA[63]),
        .R(1'b0));
  FDRE \data_p1_reg[64] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[64]),
        .Q(cord_out_V_TDATA[64]),
        .R(1'b0));
  FDRE \data_p1_reg[65] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[65]),
        .Q(cord_out_V_TDATA[65]),
        .R(1'b0));
  FDRE \data_p1_reg[66] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[66]),
        .Q(cord_out_V_TDATA[66]),
        .R(1'b0));
  FDRE \data_p1_reg[67] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[67]),
        .Q(cord_out_V_TDATA[67]),
        .R(1'b0));
  FDRE \data_p1_reg[68] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[68]),
        .Q(cord_out_V_TDATA[68]),
        .R(1'b0));
  FDRE \data_p1_reg[69] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[69]),
        .Q(cord_out_V_TDATA[69]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[6]),
        .Q(cord_out_V_TDATA[6]),
        .R(1'b0));
  FDRE \data_p1_reg[70] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[70]),
        .Q(cord_out_V_TDATA[70]),
        .R(1'b0));
  FDRE \data_p1_reg[71] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[71]),
        .Q(cord_out_V_TDATA[71]),
        .R(1'b0));
  FDRE \data_p1_reg[72] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[72]),
        .Q(cord_out_V_TDATA[72]),
        .R(1'b0));
  FDRE \data_p1_reg[73] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[73]),
        .Q(cord_out_V_TDATA[73]),
        .R(1'b0));
  FDRE \data_p1_reg[74] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[74]),
        .Q(cord_out_V_TDATA[74]),
        .R(1'b0));
  FDRE \data_p1_reg[75] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[75]),
        .Q(cord_out_V_TDATA[75]),
        .R(1'b0));
  FDRE \data_p1_reg[76] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[76]),
        .Q(cord_out_V_TDATA[76]),
        .R(1'b0));
  FDRE \data_p1_reg[77] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[77]),
        .Q(cord_out_V_TDATA[77]),
        .R(1'b0));
  FDRE \data_p1_reg[78] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[78]),
        .Q(cord_out_V_TDATA[78]),
        .R(1'b0));
  FDRE \data_p1_reg[79] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[79]),
        .Q(cord_out_V_TDATA[79]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[7]),
        .Q(cord_out_V_TDATA[7]),
        .R(1'b0));
  FDRE \data_p1_reg[80] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[80]),
        .Q(cord_out_V_TDATA[80]),
        .R(1'b0));
  FDRE \data_p1_reg[81] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[81]),
        .Q(cord_out_V_TDATA[81]),
        .R(1'b0));
  FDRE \data_p1_reg[82] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[82]),
        .Q(cord_out_V_TDATA[82]),
        .R(1'b0));
  FDRE \data_p1_reg[83] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[83]),
        .Q(cord_out_V_TDATA[83]),
        .R(1'b0));
  FDRE \data_p1_reg[84] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[84]),
        .Q(cord_out_V_TDATA[84]),
        .R(1'b0));
  FDRE \data_p1_reg[85] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[85]),
        .Q(cord_out_V_TDATA[85]),
        .R(1'b0));
  FDRE \data_p1_reg[86] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[86]),
        .Q(cord_out_V_TDATA[86]),
        .R(1'b0));
  FDRE \data_p1_reg[87] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[87]),
        .Q(cord_out_V_TDATA[87]),
        .R(1'b0));
  FDRE \data_p1_reg[88] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[88]),
        .Q(cord_out_V_TDATA[88]),
        .R(1'b0));
  FDRE \data_p1_reg[89] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[89]),
        .Q(cord_out_V_TDATA[89]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[8]),
        .Q(cord_out_V_TDATA[8]),
        .R(1'b0));
  FDRE \data_p1_reg[90] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[90]),
        .Q(cord_out_V_TDATA[90]),
        .R(1'b0));
  FDRE \data_p1_reg[91] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[91]),
        .Q(cord_out_V_TDATA[91]),
        .R(1'b0));
  FDRE \data_p1_reg[92] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[92]),
        .Q(cord_out_V_TDATA[92]),
        .R(1'b0));
  FDRE \data_p1_reg[93] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[93]),
        .Q(cord_out_V_TDATA[93]),
        .R(1'b0));
  FDRE \data_p1_reg[94] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[94]),
        .Q(cord_out_V_TDATA[94]),
        .R(1'b0));
  FDRE \data_p1_reg[95] 
       (.C(aclk),
        .CE(load_p1),
        .D(p_0_in[95]),
        .Q(cord_out_V_TDATA[95]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(aclk),
        .CE(load_p1),
        .D(D[9]),
        .Q(cord_out_V_TDATA[9]),
        .R(1'b0));
  FDRE \data_p2_reg[0] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \data_p2_reg[16] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \data_p2_reg[17] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \data_p2_reg[18] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \data_p2_reg[19] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \data_p2_reg[20] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \data_p2_reg[21] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \data_p2_reg[22] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \data_p2_reg[23] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \data_p2_reg[24] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \data_p2_reg[25] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \data_p2_reg[26] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \data_p2_reg[27] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \data_p2_reg[28] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \data_p2_reg[29] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \data_p2_reg[30] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \data_p2_reg[31] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \data_p2_reg[32] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [32]),
        .Q(data_p2[32]),
        .R(1'b0));
  FDRE \data_p2_reg[33] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [33]),
        .Q(data_p2[33]),
        .R(1'b0));
  FDRE \data_p2_reg[34] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [34]),
        .Q(data_p2[34]),
        .R(1'b0));
  FDRE \data_p2_reg[35] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [35]),
        .Q(data_p2[35]),
        .R(1'b0));
  FDRE \data_p2_reg[36] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [36]),
        .Q(data_p2[36]),
        .R(1'b0));
  FDRE \data_p2_reg[37] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [37]),
        .Q(data_p2[37]),
        .R(1'b0));
  FDRE \data_p2_reg[38] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [38]),
        .Q(data_p2[38]),
        .R(1'b0));
  FDRE \data_p2_reg[39] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [39]),
        .Q(data_p2[39]),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \data_p2_reg[40] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [40]),
        .Q(data_p2[40]),
        .R(1'b0));
  FDRE \data_p2_reg[41] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [41]),
        .Q(data_p2[41]),
        .R(1'b0));
  FDRE \data_p2_reg[42] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [42]),
        .Q(data_p2[42]),
        .R(1'b0));
  FDRE \data_p2_reg[43] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [43]),
        .Q(data_p2[43]),
        .R(1'b0));
  FDRE \data_p2_reg[44] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [44]),
        .Q(data_p2[44]),
        .R(1'b0));
  FDRE \data_p2_reg[45] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [45]),
        .Q(data_p2[45]),
        .R(1'b0));
  FDRE \data_p2_reg[46] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [46]),
        .Q(data_p2[46]),
        .R(1'b0));
  FDRE \data_p2_reg[47] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [47]),
        .Q(data_p2[47]),
        .R(1'b0));
  FDRE \data_p2_reg[48] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [48]),
        .Q(data_p2[48]),
        .R(1'b0));
  FDRE \data_p2_reg[49] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [49]),
        .Q(data_p2[49]),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \data_p2_reg[50] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [50]),
        .Q(data_p2[50]),
        .R(1'b0));
  FDRE \data_p2_reg[51] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [51]),
        .Q(data_p2[51]),
        .R(1'b0));
  FDRE \data_p2_reg[52] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [52]),
        .Q(data_p2[52]),
        .R(1'b0));
  FDRE \data_p2_reg[53] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [53]),
        .Q(data_p2[53]),
        .R(1'b0));
  FDRE \data_p2_reg[54] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [54]),
        .Q(data_p2[54]),
        .R(1'b0));
  FDRE \data_p2_reg[55] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [55]),
        .Q(data_p2[55]),
        .R(1'b0));
  FDRE \data_p2_reg[56] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [56]),
        .Q(data_p2[56]),
        .R(1'b0));
  FDRE \data_p2_reg[57] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [57]),
        .Q(data_p2[57]),
        .R(1'b0));
  FDRE \data_p2_reg[58] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [58]),
        .Q(data_p2[58]),
        .R(1'b0));
  FDRE \data_p2_reg[59] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [59]),
        .Q(data_p2[59]),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \data_p2_reg[60] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [60]),
        .Q(data_p2[60]),
        .R(1'b0));
  FDRE \data_p2_reg[61] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [61]),
        .Q(data_p2[61]),
        .R(1'b0));
  FDRE \data_p2_reg[62] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [62]),
        .Q(data_p2[62]),
        .R(1'b0));
  FDRE \data_p2_reg[63] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [63]),
        .Q(data_p2[63]),
        .R(1'b0));
  FDRE \data_p2_reg[64] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [64]),
        .Q(data_p2[64]),
        .R(1'b0));
  FDRE \data_p2_reg[65] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [65]),
        .Q(data_p2[65]),
        .R(1'b0));
  FDRE \data_p2_reg[66] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [66]),
        .Q(data_p2[66]),
        .R(1'b0));
  FDRE \data_p2_reg[67] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [67]),
        .Q(data_p2[67]),
        .R(1'b0));
  FDRE \data_p2_reg[68] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [68]),
        .Q(data_p2[68]),
        .R(1'b0));
  FDRE \data_p2_reg[69] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [69]),
        .Q(data_p2[69]),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \data_p2_reg[70] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [70]),
        .Q(data_p2[70]),
        .R(1'b0));
  FDRE \data_p2_reg[71] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [71]),
        .Q(data_p2[71]),
        .R(1'b0));
  FDRE \data_p2_reg[72] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [72]),
        .Q(data_p2[72]),
        .R(1'b0));
  FDRE \data_p2_reg[73] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [73]),
        .Q(data_p2[73]),
        .R(1'b0));
  FDRE \data_p2_reg[74] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [74]),
        .Q(data_p2[74]),
        .R(1'b0));
  FDRE \data_p2_reg[75] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [75]),
        .Q(data_p2[75]),
        .R(1'b0));
  FDRE \data_p2_reg[76] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [76]),
        .Q(data_p2[76]),
        .R(1'b0));
  FDRE \data_p2_reg[77] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [77]),
        .Q(data_p2[77]),
        .R(1'b0));
  FDRE \data_p2_reg[78] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [78]),
        .Q(data_p2[78]),
        .R(1'b0));
  FDRE \data_p2_reg[79] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [79]),
        .Q(data_p2[79]),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \data_p2_reg[80] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [80]),
        .Q(data_p2[80]),
        .R(1'b0));
  FDRE \data_p2_reg[81] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [81]),
        .Q(data_p2[81]),
        .R(1'b0));
  FDRE \data_p2_reg[82] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [82]),
        .Q(data_p2[82]),
        .R(1'b0));
  FDRE \data_p2_reg[83] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [83]),
        .Q(data_p2[83]),
        .R(1'b0));
  FDRE \data_p2_reg[84] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [84]),
        .Q(data_p2[84]),
        .R(1'b0));
  FDRE \data_p2_reg[85] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [85]),
        .Q(data_p2[85]),
        .R(1'b0));
  FDRE \data_p2_reg[86] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [86]),
        .Q(data_p2[86]),
        .R(1'b0));
  FDRE \data_p2_reg[87] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [87]),
        .Q(data_p2[87]),
        .R(1'b0));
  FDRE \data_p2_reg[88] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [88]),
        .Q(data_p2[88]),
        .R(1'b0));
  FDRE \data_p2_reg[89] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [89]),
        .Q(data_p2[89]),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \data_p2_reg[90] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [90]),
        .Q(data_p2[90]),
        .R(1'b0));
  FDRE \data_p2_reg[91] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [91]),
        .Q(data_p2[91]),
        .R(1'b0));
  FDRE \data_p2_reg[92] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [92]),
        .Q(data_p2[92]),
        .R(1'b0));
  FDRE \data_p2_reg[93] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [93]),
        .Q(data_p2[93]),
        .R(1'b0));
  FDRE \data_p2_reg[94] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [94]),
        .Q(data_p2[94]),
        .R(1'b0));
  FDRE \data_p2_reg[95] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [95]),
        .Q(data_p2[95]),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(aclk),
        .CE(edgeout_val_ap_vld),
        .D(\p_4_reg_1204_reg[63] [9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFEFF00F3)) 
    s_ready_t_i_1
       (.I0(s_ready_t_reg_0),
        .I1(state__0[0]),
        .I2(cord_out_V_TREADY),
        .I3(state__0[1]),
        .I4(sig_det_color_cord_cord_out_V_full_n),
        .O(s_ready_t_i_1_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1_n_0),
        .Q(sig_det_color_cord_cord_out_V_full_n),
        .R(SR));
  LUT4 #(
    .INIT(16'h7F50)) 
    \state[0]_i_2 
       (.I0(s_ready_t_reg_0),
        .I1(cord_out_V_TREADY),
        .I2(state),
        .I3(cord_out_V_TVALID),
        .O(\state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF8F)) 
    \state[1]_i_1 
       (.I0(s_ready_t_reg_0),
        .I1(state),
        .I2(cord_out_V_TVALID),
        .I3(cord_out_V_TREADY),
        .O(\state[1]_i_1_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_2_n_0 ),
        .Q(cord_out_V_TVALID),
        .R(SR));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "det_color_cord_frame_in_V_if" *) 
module hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_if
   (frame_in_V_TREADY,
    SR,
    \bottom_edge_loc_2_reg_283_reg[31] ,
    \tmp_reg_1168_reg[0] ,
    \led_exist_reg[0] ,
    pixel_in_data_out_ap_vld,
    \led_exist_reg[0]_0 ,
    \led_exist_reg[0]_1 ,
    \pixel_in_data_out[23] ,
    DI,
    S,
    \led_exist_reg[0]_2 ,
    \led_exist_reg[0]_3 ,
    \left_edge_new_2_reg_213_reg[0] ,
    \or_cond_7_reg_1172_reg[0] ,
    aclk,
    Q,
    \data_p1_reg[15] ,
    CO,
    \data_p1_reg[6] ,
    led_exist,
    frame_in_V_TVALID,
    other_threshold,
    \target_color[5] ,
    \target_color[7] ,
    \target_color[7]_0 ,
    target_threshold,
    frame_in_V_TDATA,
    or_cond_7_reg_1172,
    aresetn);
  output frame_in_V_TREADY;
  output [0:0]SR;
  output \bottom_edge_loc_2_reg_283_reg[31] ;
  output [0:0]\tmp_reg_1168_reg[0] ;
  output \led_exist_reg[0] ;
  output pixel_in_data_out_ap_vld;
  output [3:0]\led_exist_reg[0]_0 ;
  output [3:0]\led_exist_reg[0]_1 ;
  output [23:0]\pixel_in_data_out[23] ;
  output [3:0]DI;
  output [3:0]S;
  output [3:0]\led_exist_reg[0]_2 ;
  output [3:0]\led_exist_reg[0]_3 ;
  output \left_edge_new_2_reg_213_reg[0] ;
  output \or_cond_7_reg_1172_reg[0] ;
  input aclk;
  input [0:0]Q;
  input [0:0]\data_p1_reg[15] ;
  input [0:0]CO;
  input [0:0]\data_p1_reg[6] ;
  input led_exist;
  input frame_in_V_TVALID;
  input [7:0]other_threshold;
  input \target_color[5] ;
  input \target_color[7] ;
  input \target_color[7]_0 ;
  input [7:0]target_threshold;
  input [23:0]frame_in_V_TDATA;
  input or_cond_7_reg_1172;
  input aresetn;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire \bottom_edge_loc_2_reg_283_reg[31] ;
  wire [0:0]\data_p1_reg[15] ;
  wire [0:0]\data_p1_reg[6] ;
  wire [23:0]frame_in_V_TDATA;
  wire frame_in_V_TREADY;
  wire frame_in_V_TVALID;
  wire led_exist;
  wire \led_exist_reg[0] ;
  wire [3:0]\led_exist_reg[0]_0 ;
  wire [3:0]\led_exist_reg[0]_1 ;
  wire [3:0]\led_exist_reg[0]_2 ;
  wire [3:0]\led_exist_reg[0]_3 ;
  wire \left_edge_new_2_reg_213_reg[0] ;
  wire or_cond_7_reg_1172;
  wire \or_cond_7_reg_1172_reg[0] ;
  wire [7:0]other_threshold;
  wire [23:0]\pixel_in_data_out[23] ;
  wire pixel_in_data_out_ap_vld;
  wire \target_color[5] ;
  wire \target_color[7] ;
  wire \target_color[7]_0 ;
  wire [7:0]target_threshold;
  wire [0:0]\tmp_reg_1168_reg[0] ;

  hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_reg_slice rs
       (.CO(CO),
        .DI(DI),
        .Q(Q),
        .S(S),
        .SR(SR),
        .aclk(aclk),
        .aresetn(aresetn),
        .\bottom_edge_loc_2_reg_283_reg[31] (\bottom_edge_loc_2_reg_283_reg[31] ),
        .\data_p1_reg[15]_0 (\data_p1_reg[15] ),
        .\data_p1_reg[6]_0 (\data_p1_reg[6] ),
        .frame_in_V_TDATA(frame_in_V_TDATA),
        .frame_in_V_TREADY(frame_in_V_TREADY),
        .frame_in_V_TVALID(frame_in_V_TVALID),
        .led_exist(led_exist),
        .\led_exist_reg[0] (\led_exist_reg[0] ),
        .\led_exist_reg[0]_0 (\led_exist_reg[0]_0 ),
        .\led_exist_reg[0]_1 (\led_exist_reg[0]_1 ),
        .\led_exist_reg[0]_2 (\led_exist_reg[0]_2 ),
        .\led_exist_reg[0]_3 (\led_exist_reg[0]_3 ),
        .\left_edge_new_2_reg_213_reg[0] (\left_edge_new_2_reg_213_reg[0] ),
        .or_cond_7_reg_1172(or_cond_7_reg_1172),
        .\or_cond_7_reg_1172_reg[0] (\or_cond_7_reg_1172_reg[0] ),
        .other_threshold(other_threshold),
        .\pixel_in_data_out[23] (\pixel_in_data_out[23] ),
        .pixel_in_data_out_ap_vld(pixel_in_data_out_ap_vld),
        .\target_color[5] (\target_color[5] ),
        .\target_color[7] (\target_color[7] ),
        .\target_color[7]_0 (\target_color[7]_0 ),
        .target_threshold(target_threshold),
        .\tmp_reg_1168_reg[0] (\tmp_reg_1168_reg[0] ));
endmodule

(* ORIG_REF_NAME = "det_color_cord_frame_in_V_reg_slice" *) 
module hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_reg_slice
   (frame_in_V_TREADY,
    SR,
    \bottom_edge_loc_2_reg_283_reg[31] ,
    \tmp_reg_1168_reg[0] ,
    \led_exist_reg[0] ,
    pixel_in_data_out_ap_vld,
    \led_exist_reg[0]_0 ,
    \led_exist_reg[0]_1 ,
    \pixel_in_data_out[23] ,
    DI,
    S,
    \led_exist_reg[0]_2 ,
    \led_exist_reg[0]_3 ,
    \left_edge_new_2_reg_213_reg[0] ,
    \or_cond_7_reg_1172_reg[0] ,
    aclk,
    Q,
    \data_p1_reg[15]_0 ,
    CO,
    \data_p1_reg[6]_0 ,
    led_exist,
    frame_in_V_TVALID,
    other_threshold,
    \target_color[5] ,
    \target_color[7] ,
    \target_color[7]_0 ,
    target_threshold,
    frame_in_V_TDATA,
    or_cond_7_reg_1172,
    aresetn);
  output frame_in_V_TREADY;
  output [0:0]SR;
  output \bottom_edge_loc_2_reg_283_reg[31] ;
  output [0:0]\tmp_reg_1168_reg[0] ;
  output \led_exist_reg[0] ;
  output pixel_in_data_out_ap_vld;
  output [3:0]\led_exist_reg[0]_0 ;
  output [3:0]\led_exist_reg[0]_1 ;
  output [23:0]\pixel_in_data_out[23] ;
  output [3:0]DI;
  output [3:0]S;
  output [3:0]\led_exist_reg[0]_2 ;
  output [3:0]\led_exist_reg[0]_3 ;
  output \left_edge_new_2_reg_213_reg[0] ;
  output \or_cond_7_reg_1172_reg[0] ;
  input aclk;
  input [0:0]Q;
  input [0:0]\data_p1_reg[15]_0 ;
  input [0:0]CO;
  input [0:0]\data_p1_reg[6]_0 ;
  input led_exist;
  input frame_in_V_TVALID;
  input [7:0]other_threshold;
  input \target_color[5] ;
  input \target_color[7] ;
  input \target_color[7]_0 ;
  input [7:0]target_threshold;
  input [23:0]frame_in_V_TDATA;
  input or_cond_7_reg_1172;
  input aresetn;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire \bottom_edge_loc_2_reg_283_reg[31] ;
  wire \data_p1[0]_i_1__0_n_0 ;
  wire \data_p1[10]_i_1__0_n_0 ;
  wire \data_p1[11]_i_1__0_n_0 ;
  wire \data_p1[12]_i_1__0_n_0 ;
  wire \data_p1[13]_i_1__0_n_0 ;
  wire \data_p1[14]_i_1__0_n_0 ;
  wire \data_p1[15]_i_1__0_n_0 ;
  wire \data_p1[16]_i_1__0_n_0 ;
  wire \data_p1[17]_i_1__0_n_0 ;
  wire \data_p1[18]_i_1__0_n_0 ;
  wire \data_p1[19]_i_1__0_n_0 ;
  wire \data_p1[1]_i_1__0_n_0 ;
  wire \data_p1[20]_i_1__0_n_0 ;
  wire \data_p1[21]_i_1__0_n_0 ;
  wire \data_p1[22]_i_1__0_n_0 ;
  wire \data_p1[23]_i_2_n_0 ;
  wire \data_p1[2]_i_1__0_n_0 ;
  wire \data_p1[3]_i_1__0_n_0 ;
  wire \data_p1[4]_i_1__0_n_0 ;
  wire \data_p1[5]_i_1__0_n_0 ;
  wire \data_p1[6]_i_1__0_n_0 ;
  wire \data_p1[7]_i_1__0_n_0 ;
  wire \data_p1[8]_i_1__0_n_0 ;
  wire \data_p1[9]_i_1__0_n_0 ;
  wire [0:0]\data_p1_reg[15]_0 ;
  wire [0:0]\data_p1_reg[6]_0 ;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[16] ;
  wire \data_p2_reg_n_0_[17] ;
  wire \data_p2_reg_n_0_[18] ;
  wire \data_p2_reg_n_0_[19] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[20] ;
  wire \data_p2_reg_n_0_[21] ;
  wire \data_p2_reg_n_0_[22] ;
  wire \data_p2_reg_n_0_[23] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire [23:0]frame_in_V_TDATA;
  wire frame_in_V_TREADY;
  wire frame_in_V_TVALID;
  wire led_exist;
  wire \led_exist_reg[0] ;
  wire [3:0]\led_exist_reg[0]_0 ;
  wire [3:0]\led_exist_reg[0]_1 ;
  wire [3:0]\led_exist_reg[0]_2 ;
  wire [3:0]\led_exist_reg[0]_3 ;
  wire \left_edge_new_2_reg_213_reg[0] ;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire or_cond_7_reg_1172;
  wire \or_cond_7_reg_1172_reg[0] ;
  wire other1_below_fu_669_p2_carry_i_10_n_0;
  wire other1_below_fu_669_p2_carry_i_11_n_0;
  wire other1_below_fu_669_p2_carry_i_12_n_0;
  wire other1_below_fu_669_p2_carry_i_13_n_0;
  wire other1_below_fu_669_p2_carry_i_14_n_0;
  wire other1_below_fu_669_p2_carry_i_15_n_0;
  wire other1_below_fu_669_p2_carry_i_16_n_0;
  wire other1_below_fu_669_p2_carry_i_17_n_0;
  wire other1_below_fu_669_p2_carry_i_18_n_0;
  wire other1_below_fu_669_p2_carry_i_19_n_0;
  wire other1_below_fu_669_p2_carry_i_20_n_0;
  wire other1_below_fu_669_p2_carry_i_9_n_0;
  wire other2_below_fu_663_p2_carry_i_11_n_0;
  wire other2_below_fu_663_p2_carry_i_12_n_0;
  wire other2_below_fu_663_p2_carry_i_13_n_0;
  wire other2_below_fu_663_p2_carry_i_14_n_0;
  wire other2_below_fu_663_p2_carry_i_15_n_0;
  wire other2_below_fu_663_p2_carry_i_16_n_0;
  wire other2_below_fu_663_p2_carry_i_17_n_0;
  wire other2_below_fu_663_p2_carry_i_9_n_0;
  wire [7:0]other_threshold;
  wire [23:0]\pixel_in_data_out[23] ;
  wire pixel_in_data_out_ap_vld;
  wire s_ready_t_i_1__0_n_0;
  wire [1:1]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  (* RTL_KEEP = "yes" *) wire [1:0]state__0;
  wire target_above_fu_675_p2_carry_i_10_n_0;
  wire target_above_fu_675_p2_carry_i_11_n_0;
  wire target_above_fu_675_p2_carry_i_12_n_0;
  wire target_above_fu_675_p2_carry_i_13_n_0;
  wire target_above_fu_675_p2_carry_i_14_n_0;
  wire target_above_fu_675_p2_carry_i_15_n_0;
  wire target_above_fu_675_p2_carry_i_16_n_0;
  wire target_above_fu_675_p2_carry_i_9_n_0;
  wire \target_color[5] ;
  wire \target_color[7] ;
  wire \target_color[7]_0 ;
  wire [7:0]target_threshold;
  wire [0:0]\tmp_reg_1168_reg[0] ;

  LUT5 #(
    .INIT(32'h15002A2A)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state__0[0]),
        .I1(\tmp_reg_1168_reg[0] ),
        .I2(Q),
        .I3(frame_in_V_TVALID),
        .I4(state__0[1]),
        .O(next__0[0]));
  LUT6 #(
    .INIT(64'h30000333E222C000)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(frame_in_V_TREADY),
        .I1(state__0[0]),
        .I2(\tmp_reg_1168_reg[0] ),
        .I3(Q),
        .I4(frame_in_V_TVALID),
        .I5(state__0[1]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT5 #(
    .INIT(32'h08888888)) 
    \bottom_edge_new_2_reg_271[31]_i_3 
       (.I0(Q),
        .I1(\tmp_reg_1168_reg[0] ),
        .I2(\data_p1_reg[15]_0 ),
        .I3(CO),
        .I4(\data_p1_reg[6]_0 ),
        .O(\bottom_edge_loc_2_reg_283_reg[31] ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1__0 
       (.I0(\data_p2_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[0]),
        .O(\data_p1[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1__0 
       (.I0(\data_p2_reg_n_0_[10] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[10]),
        .O(\data_p1[10]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1__0 
       (.I0(\data_p2_reg_n_0_[11] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[11]),
        .O(\data_p1[11]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[12]_i_1__0 
       (.I0(\data_p2_reg_n_0_[12] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[12]),
        .O(\data_p1[12]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[13]_i_1__0 
       (.I0(\data_p2_reg_n_0_[13] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[13]),
        .O(\data_p1[13]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[14]_i_1__0 
       (.I0(\data_p2_reg_n_0_[14] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[14]),
        .O(\data_p1[14]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[15]_i_1__0 
       (.I0(\data_p2_reg_n_0_[15] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[15]),
        .O(\data_p1[15]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[16]_i_1__0 
       (.I0(\data_p2_reg_n_0_[16] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[16]),
        .O(\data_p1[16]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[17]_i_1__0 
       (.I0(\data_p2_reg_n_0_[17] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[17]),
        .O(\data_p1[17]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[18]_i_1__0 
       (.I0(\data_p2_reg_n_0_[18] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[18]),
        .O(\data_p1[18]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[19]_i_1__0 
       (.I0(\data_p2_reg_n_0_[19] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[19]),
        .O(\data_p1[19]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1__0 
       (.I0(\data_p2_reg_n_0_[1] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[1]),
        .O(\data_p1[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[20]_i_1__0 
       (.I0(\data_p2_reg_n_0_[20] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[20]),
        .O(\data_p1[20]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[21]_i_1__0 
       (.I0(\data_p2_reg_n_0_[21] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[21]),
        .O(\data_p1[21]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[22]_i_1__0 
       (.I0(\data_p2_reg_n_0_[22] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[22]),
        .O(\data_p1[22]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h008088F0)) 
    \data_p1[23]_i_1 
       (.I0(\tmp_reg_1168_reg[0] ),
        .I1(Q),
        .I2(frame_in_V_TVALID),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[23]_i_2 
       (.I0(\data_p2_reg_n_0_[23] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[23]),
        .O(\data_p1[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1__0 
       (.I0(\data_p2_reg_n_0_[2] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[2]),
        .O(\data_p1[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1__0 
       (.I0(\data_p2_reg_n_0_[3] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[3]),
        .O(\data_p1[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1__0 
       (.I0(\data_p2_reg_n_0_[4] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[4]),
        .O(\data_p1[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1__0 
       (.I0(\data_p2_reg_n_0_[5] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[5]),
        .O(\data_p1[5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1__0 
       (.I0(\data_p2_reg_n_0_[6] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[6]),
        .O(\data_p1[6]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1__0 
       (.I0(\data_p2_reg_n_0_[7] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[7]),
        .O(\data_p1[7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1__0 
       (.I0(\data_p2_reg_n_0_[8] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[8]),
        .O(\data_p1[8]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1__0 
       (.I0(\data_p2_reg_n_0_[9] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(frame_in_V_TDATA[9]),
        .O(\data_p1[9]_i_1__0_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[15]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [15]),
        .R(1'b0));
  FDRE \data_p1_reg[16] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[16]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [16]),
        .R(1'b0));
  FDRE \data_p1_reg[17] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[17]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [17]),
        .R(1'b0));
  FDRE \data_p1_reg[18] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[18]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [18]),
        .R(1'b0));
  FDRE \data_p1_reg[19] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[19]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [19]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [1]),
        .R(1'b0));
  FDRE \data_p1_reg[20] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[20]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [20]),
        .R(1'b0));
  FDRE \data_p1_reg[21] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[21]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [21]),
        .R(1'b0));
  FDRE \data_p1_reg[22] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[22]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [22]),
        .R(1'b0));
  FDRE \data_p1_reg[23] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[23]_i_2_n_0 ),
        .Q(\pixel_in_data_out[23] [23]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [2]),
        .R(1'b0));
  FDRE \data_p1_reg[3] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [3]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [4]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [5]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [6]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [7]),
        .R(1'b0));
  FDRE \data_p1_reg[8] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(aclk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1__0_n_0 ),
        .Q(\pixel_in_data_out[23] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[23]_i_1 
       (.I0(frame_in_V_TVALID),
        .I1(frame_in_V_TREADY),
        .O(load_p2));
  FDRE \data_p2_reg[0] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_p2_reg[16] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[16]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_p2_reg[17] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[17]),
        .Q(\data_p2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_p2_reg[18] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[18]),
        .Q(\data_p2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_p2_reg[19] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[19]),
        .Q(\data_p2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_p2_reg[20] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[20]),
        .Q(\data_p2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_p2_reg[21] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[21]),
        .Q(\data_p2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_p2_reg[22] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[22]),
        .Q(\data_p2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_p2_reg[23] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[23]),
        .Q(\data_p2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(aclk),
        .CE(load_p2),
        .D(frame_in_V_TDATA[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \led_exist[0]_i_1 
       (.I0(led_exist),
        .I1(\data_p1_reg[6]_0 ),
        .I2(CO),
        .I3(\data_p1_reg[15]_0 ),
        .I4(\tmp_reg_1168_reg[0] ),
        .I5(Q),
        .O(\led_exist_reg[0] ));
  LUT6 #(
    .INIT(64'h80FFFFFF80000000)) 
    \or_cond_7_reg_1172[0]_i_1 
       (.I0(\data_p1_reg[6]_0 ),
        .I1(CO),
        .I2(\data_p1_reg[15]_0 ),
        .I3(\tmp_reg_1168_reg[0] ),
        .I4(Q),
        .I5(or_cond_7_reg_1172),
        .O(\or_cond_7_reg_1172_reg[0] ));
  LUT4 #(
    .INIT(16'h22B2)) 
    other1_below_fu_669_p2_carry_i_1
       (.I0(other_threshold[7]),
        .I1(other1_below_fu_669_p2_carry_i_9_n_0),
        .I2(other_threshold[6]),
        .I3(other1_below_fu_669_p2_carry_i_10_n_0),
        .O(\led_exist_reg[0]_1 [3]));
  LUT5 #(
    .INIT(32'hF8FB7040)) 
    other1_below_fu_669_p2_carry_i_10
       (.I0(\target_color[5] ),
        .I1(\target_color[7] ),
        .I2(\pixel_in_data_out[23] [14]),
        .I3(\target_color[7]_0 ),
        .I4(\pixel_in_data_out[23] [22]),
        .O(other1_below_fu_669_p2_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'hF8FB7040)) 
    other1_below_fu_669_p2_carry_i_11
       (.I0(\target_color[5] ),
        .I1(\target_color[7] ),
        .I2(\pixel_in_data_out[23] [13]),
        .I3(\target_color[7]_0 ),
        .I4(\pixel_in_data_out[23] [21]),
        .O(other1_below_fu_669_p2_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'hF8FB7040)) 
    other1_below_fu_669_p2_carry_i_12
       (.I0(\target_color[5] ),
        .I1(\target_color[7] ),
        .I2(\pixel_in_data_out[23] [12]),
        .I3(\target_color[7]_0 ),
        .I4(\pixel_in_data_out[23] [20]),
        .O(other1_below_fu_669_p2_carry_i_12_n_0));
  LUT5 #(
    .INIT(32'hF8FB7040)) 
    other1_below_fu_669_p2_carry_i_13
       (.I0(\target_color[5] ),
        .I1(\target_color[7] ),
        .I2(\pixel_in_data_out[23] [11]),
        .I3(\target_color[7]_0 ),
        .I4(\pixel_in_data_out[23] [19]),
        .O(other1_below_fu_669_p2_carry_i_13_n_0));
  LUT5 #(
    .INIT(32'hF8FB7040)) 
    other1_below_fu_669_p2_carry_i_14
       (.I0(\target_color[5] ),
        .I1(\target_color[7] ),
        .I2(\pixel_in_data_out[23] [10]),
        .I3(\target_color[7]_0 ),
        .I4(\pixel_in_data_out[23] [18]),
        .O(other1_below_fu_669_p2_carry_i_14_n_0));
  LUT5 #(
    .INIT(32'hF8FB7040)) 
    other1_below_fu_669_p2_carry_i_15
       (.I0(\target_color[5] ),
        .I1(\target_color[7] ),
        .I2(\pixel_in_data_out[23] [9]),
        .I3(\target_color[7]_0 ),
        .I4(\pixel_in_data_out[23] [17]),
        .O(other1_below_fu_669_p2_carry_i_15_n_0));
  LUT5 #(
    .INIT(32'hF8FB7040)) 
    other1_below_fu_669_p2_carry_i_16
       (.I0(\target_color[5] ),
        .I1(\target_color[7] ),
        .I2(\pixel_in_data_out[23] [8]),
        .I3(\target_color[7]_0 ),
        .I4(\pixel_in_data_out[23] [16]),
        .O(other1_below_fu_669_p2_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'h9999A959AA55A959)) 
    other1_below_fu_669_p2_carry_i_17
       (.I0(other_threshold[7]),
        .I1(\pixel_in_data_out[23] [23]),
        .I2(\target_color[7]_0 ),
        .I3(\pixel_in_data_out[23] [15]),
        .I4(\target_color[7] ),
        .I5(\target_color[5] ),
        .O(other1_below_fu_669_p2_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h9999A959AA55A959)) 
    other1_below_fu_669_p2_carry_i_18
       (.I0(other_threshold[5]),
        .I1(\pixel_in_data_out[23] [21]),
        .I2(\target_color[7]_0 ),
        .I3(\pixel_in_data_out[23] [13]),
        .I4(\target_color[7] ),
        .I5(\target_color[5] ),
        .O(other1_below_fu_669_p2_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h9999A959AA55A959)) 
    other1_below_fu_669_p2_carry_i_19
       (.I0(other_threshold[3]),
        .I1(\pixel_in_data_out[23] [19]),
        .I2(\target_color[7]_0 ),
        .I3(\pixel_in_data_out[23] [11]),
        .I4(\target_color[7] ),
        .I5(\target_color[5] ),
        .O(other1_below_fu_669_p2_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    other1_below_fu_669_p2_carry_i_2
       (.I0(other_threshold[5]),
        .I1(other1_below_fu_669_p2_carry_i_11_n_0),
        .I2(other_threshold[4]),
        .I3(other1_below_fu_669_p2_carry_i_12_n_0),
        .O(\led_exist_reg[0]_1 [2]));
  LUT6 #(
    .INIT(64'h9999A959AA55A959)) 
    other1_below_fu_669_p2_carry_i_20
       (.I0(other_threshold[1]),
        .I1(\pixel_in_data_out[23] [17]),
        .I2(\target_color[7]_0 ),
        .I3(\pixel_in_data_out[23] [9]),
        .I4(\target_color[7] ),
        .I5(\target_color[5] ),
        .O(other1_below_fu_669_p2_carry_i_20_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    other1_below_fu_669_p2_carry_i_3
       (.I0(other_threshold[3]),
        .I1(other1_below_fu_669_p2_carry_i_13_n_0),
        .I2(other_threshold[2]),
        .I3(other1_below_fu_669_p2_carry_i_14_n_0),
        .O(\led_exist_reg[0]_1 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    other1_below_fu_669_p2_carry_i_4
       (.I0(other_threshold[1]),
        .I1(other1_below_fu_669_p2_carry_i_15_n_0),
        .I2(other_threshold[0]),
        .I3(other1_below_fu_669_p2_carry_i_16_n_0),
        .O(\led_exist_reg[0]_1 [0]));
  LUT3 #(
    .INIT(8'h82)) 
    other1_below_fu_669_p2_carry_i_5
       (.I0(other1_below_fu_669_p2_carry_i_17_n_0),
        .I1(other1_below_fu_669_p2_carry_i_10_n_0),
        .I2(other_threshold[6]),
        .O(\led_exist_reg[0]_0 [3]));
  LUT3 #(
    .INIT(8'h82)) 
    other1_below_fu_669_p2_carry_i_6
       (.I0(other1_below_fu_669_p2_carry_i_18_n_0),
        .I1(other1_below_fu_669_p2_carry_i_12_n_0),
        .I2(other_threshold[4]),
        .O(\led_exist_reg[0]_0 [2]));
  LUT3 #(
    .INIT(8'h82)) 
    other1_below_fu_669_p2_carry_i_7
       (.I0(other1_below_fu_669_p2_carry_i_19_n_0),
        .I1(other1_below_fu_669_p2_carry_i_14_n_0),
        .I2(other_threshold[2]),
        .O(\led_exist_reg[0]_0 [1]));
  LUT3 #(
    .INIT(8'h82)) 
    other1_below_fu_669_p2_carry_i_8
       (.I0(other1_below_fu_669_p2_carry_i_20_n_0),
        .I1(other1_below_fu_669_p2_carry_i_16_n_0),
        .I2(other_threshold[0]),
        .O(\led_exist_reg[0]_0 [0]));
  LUT5 #(
    .INIT(32'hF8FB7040)) 
    other1_below_fu_669_p2_carry_i_9
       (.I0(\target_color[5] ),
        .I1(\target_color[7] ),
        .I2(\pixel_in_data_out[23] [15]),
        .I3(\target_color[7]_0 ),
        .I4(\pixel_in_data_out[23] [23]),
        .O(other1_below_fu_669_p2_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    other2_below_fu_663_p2_carry_i_1
       (.I0(other_threshold[7]),
        .I1(other2_below_fu_663_p2_carry_i_9_n_0),
        .I2(other_threshold[6]),
        .I3(\pixel_in_data_out[23] [6]),
        .I4(\target_color[5] ),
        .I5(\pixel_in_data_out[23] [14]),
        .O(\led_exist_reg[0]_3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    other2_below_fu_663_p2_carry_i_11
       (.I0(\pixel_in_data_out[23] [13]),
        .I1(\target_color[5] ),
        .I2(\pixel_in_data_out[23] [5]),
        .O(other2_below_fu_663_p2_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    other2_below_fu_663_p2_carry_i_12
       (.I0(\pixel_in_data_out[23] [11]),
        .I1(\target_color[5] ),
        .I2(\pixel_in_data_out[23] [3]),
        .O(other2_below_fu_663_p2_carry_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    other2_below_fu_663_p2_carry_i_13
       (.I0(\pixel_in_data_out[23] [9]),
        .I1(\target_color[5] ),
        .I2(\pixel_in_data_out[23] [1]),
        .O(other2_below_fu_663_p2_carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    other2_below_fu_663_p2_carry_i_14
       (.I0(other_threshold[7]),
        .I1(\pixel_in_data_out[23] [7]),
        .I2(\target_color[5] ),
        .I3(\pixel_in_data_out[23] [15]),
        .O(other2_below_fu_663_p2_carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    other2_below_fu_663_p2_carry_i_15
       (.I0(other_threshold[5]),
        .I1(\pixel_in_data_out[23] [5]),
        .I2(\target_color[5] ),
        .I3(\pixel_in_data_out[23] [13]),
        .O(other2_below_fu_663_p2_carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    other2_below_fu_663_p2_carry_i_16
       (.I0(other_threshold[3]),
        .I1(\pixel_in_data_out[23] [3]),
        .I2(\target_color[5] ),
        .I3(\pixel_in_data_out[23] [11]),
        .O(other2_below_fu_663_p2_carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    other2_below_fu_663_p2_carry_i_17
       (.I0(other_threshold[1]),
        .I1(\pixel_in_data_out[23] [1]),
        .I2(\target_color[5] ),
        .I3(\pixel_in_data_out[23] [9]),
        .O(other2_below_fu_663_p2_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    other2_below_fu_663_p2_carry_i_2
       (.I0(other_threshold[5]),
        .I1(other2_below_fu_663_p2_carry_i_11_n_0),
        .I2(other_threshold[4]),
        .I3(\pixel_in_data_out[23] [4]),
        .I4(\target_color[5] ),
        .I5(\pixel_in_data_out[23] [12]),
        .O(\led_exist_reg[0]_3 [2]));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    other2_below_fu_663_p2_carry_i_3
       (.I0(other_threshold[3]),
        .I1(other2_below_fu_663_p2_carry_i_12_n_0),
        .I2(other_threshold[2]),
        .I3(\pixel_in_data_out[23] [2]),
        .I4(\target_color[5] ),
        .I5(\pixel_in_data_out[23] [10]),
        .O(\led_exist_reg[0]_3 [1]));
  LUT6 #(
    .INIT(64'h222222B2B2B222B2)) 
    other2_below_fu_663_p2_carry_i_4
       (.I0(other_threshold[1]),
        .I1(other2_below_fu_663_p2_carry_i_13_n_0),
        .I2(other_threshold[0]),
        .I3(\pixel_in_data_out[23] [0]),
        .I4(\target_color[5] ),
        .I5(\pixel_in_data_out[23] [8]),
        .O(\led_exist_reg[0]_3 [0]));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    other2_below_fu_663_p2_carry_i_5
       (.I0(other2_below_fu_663_p2_carry_i_14_n_0),
        .I1(\pixel_in_data_out[23] [14]),
        .I2(\target_color[5] ),
        .I3(\pixel_in_data_out[23] [6]),
        .I4(other_threshold[6]),
        .O(\led_exist_reg[0]_2 [3]));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    other2_below_fu_663_p2_carry_i_6
       (.I0(other2_below_fu_663_p2_carry_i_15_n_0),
        .I1(\pixel_in_data_out[23] [12]),
        .I2(\target_color[5] ),
        .I3(\pixel_in_data_out[23] [4]),
        .I4(other_threshold[4]),
        .O(\led_exist_reg[0]_2 [2]));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    other2_below_fu_663_p2_carry_i_7
       (.I0(other2_below_fu_663_p2_carry_i_16_n_0),
        .I1(\pixel_in_data_out[23] [10]),
        .I2(\target_color[5] ),
        .I3(\pixel_in_data_out[23] [2]),
        .I4(other_threshold[2]),
        .O(\led_exist_reg[0]_2 [1]));
  LUT5 #(
    .INIT(32'h8A80202A)) 
    other2_below_fu_663_p2_carry_i_8
       (.I0(other2_below_fu_663_p2_carry_i_17_n_0),
        .I1(\pixel_in_data_out[23] [8]),
        .I2(\target_color[5] ),
        .I3(\pixel_in_data_out[23] [0]),
        .I4(other_threshold[0]),
        .O(\led_exist_reg[0]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    other2_below_fu_663_p2_carry_i_9
       (.I0(\pixel_in_data_out[23] [15]),
        .I1(\target_color[5] ),
        .I2(\pixel_in_data_out[23] [7]),
        .O(other2_below_fu_663_p2_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pixel_in_data_out_ap_vld_INST_0
       (.I0(\tmp_reg_1168_reg[0] ),
        .I1(Q),
        .O(pixel_in_data_out_ap_vld));
  LUT6 #(
    .INIT(64'hFFBFBFBF33111111)) 
    s_ready_t_i_1__0
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(frame_in_V_TVALID),
        .I3(Q),
        .I4(\tmp_reg_1168_reg[0] ),
        .I5(frame_in_V_TREADY),
        .O(s_ready_t_i_1__0_n_0));
  FDRE s_ready_t_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_t_i_1__0_n_0),
        .Q(frame_in_V_TREADY),
        .R(SR));
  LUT5 #(
    .INIT(32'hF380FF80)) 
    \state[0]_i_1 
       (.I0(frame_in_V_TREADY),
        .I1(state),
        .I2(frame_in_V_TVALID),
        .I3(\tmp_reg_1168_reg[0] ),
        .I4(Q),
        .O(\state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[0]_i_1__0 
       (.I0(aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'hFF4F)) 
    \state[1]_i_1__0 
       (.I0(frame_in_V_TVALID),
        .I1(state),
        .I2(\tmp_reg_1168_reg[0] ),
        .I3(Q),
        .O(\state[1]_i_1__0_n_0 ));
  FDRE \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\tmp_reg_1168_reg[0] ),
        .R(SR));
  FDSE \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(state),
        .S(SR));
  LUT4 #(
    .INIT(16'h1117)) 
    target_above_fu_675_p2_carry_i_1
       (.I0(target_threshold[7]),
        .I1(target_above_fu_675_p2_carry_i_9_n_0),
        .I2(target_threshold[6]),
        .I3(target_above_fu_675_p2_carry_i_10_n_0),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'h207F2070207F2F7F)) 
    target_above_fu_675_p2_carry_i_10
       (.I0(\target_color[5] ),
        .I1(\pixel_in_data_out[23] [6]),
        .I2(\target_color[7] ),
        .I3(\pixel_in_data_out[23] [22]),
        .I4(\target_color[7]_0 ),
        .I5(\pixel_in_data_out[23] [14]),
        .O(target_above_fu_675_p2_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h407F4070407F4F7F)) 
    target_above_fu_675_p2_carry_i_11
       (.I0(\pixel_in_data_out[23] [5]),
        .I1(\target_color[5] ),
        .I2(\target_color[7] ),
        .I3(\pixel_in_data_out[23] [21]),
        .I4(\target_color[7]_0 ),
        .I5(\pixel_in_data_out[23] [13]),
        .O(target_above_fu_675_p2_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h207F2070207F2F7F)) 
    target_above_fu_675_p2_carry_i_12
       (.I0(\target_color[5] ),
        .I1(\pixel_in_data_out[23] [4]),
        .I2(\target_color[7] ),
        .I3(\pixel_in_data_out[23] [20]),
        .I4(\target_color[7]_0 ),
        .I5(\pixel_in_data_out[23] [12]),
        .O(target_above_fu_675_p2_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h407F4070407F4F7F)) 
    target_above_fu_675_p2_carry_i_13
       (.I0(\pixel_in_data_out[23] [3]),
        .I1(\target_color[5] ),
        .I2(\target_color[7] ),
        .I3(\pixel_in_data_out[23] [19]),
        .I4(\target_color[7]_0 ),
        .I5(\pixel_in_data_out[23] [11]),
        .O(target_above_fu_675_p2_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h207F2070207F2F7F)) 
    target_above_fu_675_p2_carry_i_14
       (.I0(\target_color[5] ),
        .I1(\pixel_in_data_out[23] [2]),
        .I2(\target_color[7] ),
        .I3(\pixel_in_data_out[23] [18]),
        .I4(\target_color[7]_0 ),
        .I5(\pixel_in_data_out[23] [10]),
        .O(target_above_fu_675_p2_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h407F4070407F4F7F)) 
    target_above_fu_675_p2_carry_i_15
       (.I0(\pixel_in_data_out[23] [1]),
        .I1(\target_color[5] ),
        .I2(\target_color[7] ),
        .I3(\pixel_in_data_out[23] [17]),
        .I4(\target_color[7]_0 ),
        .I5(\pixel_in_data_out[23] [9]),
        .O(target_above_fu_675_p2_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h207F2070207F2F7F)) 
    target_above_fu_675_p2_carry_i_16
       (.I0(\target_color[5] ),
        .I1(\pixel_in_data_out[23] [0]),
        .I2(\target_color[7] ),
        .I3(\pixel_in_data_out[23] [16]),
        .I4(\target_color[7]_0 ),
        .I5(\pixel_in_data_out[23] [8]),
        .O(target_above_fu_675_p2_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h1117)) 
    target_above_fu_675_p2_carry_i_2
       (.I0(target_threshold[5]),
        .I1(target_above_fu_675_p2_carry_i_11_n_0),
        .I2(target_threshold[4]),
        .I3(target_above_fu_675_p2_carry_i_12_n_0),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h1117)) 
    target_above_fu_675_p2_carry_i_3
       (.I0(target_threshold[3]),
        .I1(target_above_fu_675_p2_carry_i_13_n_0),
        .I2(target_threshold[2]),
        .I3(target_above_fu_675_p2_carry_i_14_n_0),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h1117)) 
    target_above_fu_675_p2_carry_i_4
       (.I0(target_threshold[1]),
        .I1(target_above_fu_675_p2_carry_i_15_n_0),
        .I2(target_threshold[0]),
        .I3(target_above_fu_675_p2_carry_i_16_n_0),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h0660)) 
    target_above_fu_675_p2_carry_i_5
       (.I0(target_above_fu_675_p2_carry_i_9_n_0),
        .I1(target_threshold[7]),
        .I2(target_above_fu_675_p2_carry_i_10_n_0),
        .I3(target_threshold[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h0660)) 
    target_above_fu_675_p2_carry_i_6
       (.I0(target_above_fu_675_p2_carry_i_11_n_0),
        .I1(target_threshold[5]),
        .I2(target_above_fu_675_p2_carry_i_12_n_0),
        .I3(target_threshold[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h0660)) 
    target_above_fu_675_p2_carry_i_7
       (.I0(target_above_fu_675_p2_carry_i_13_n_0),
        .I1(target_threshold[3]),
        .I2(target_above_fu_675_p2_carry_i_14_n_0),
        .I3(target_threshold[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h0660)) 
    target_above_fu_675_p2_carry_i_8
       (.I0(target_above_fu_675_p2_carry_i_15_n_0),
        .I1(target_threshold[1]),
        .I2(target_above_fu_675_p2_carry_i_16_n_0),
        .I3(target_threshold[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h407F4070407F4F7F)) 
    target_above_fu_675_p2_carry_i_9
       (.I0(\pixel_in_data_out[23] [7]),
        .I1(\target_color[5] ),
        .I2(\target_color[7] ),
        .I3(\pixel_in_data_out[23] [23]),
        .I4(\target_color[7]_0 ),
        .I5(\pixel_in_data_out[23] [15]),
        .O(target_above_fu_675_p2_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'h08888888)) 
    \upper_edge_flag_2_reg_232[0]_i_3 
       (.I0(Q),
        .I1(\tmp_reg_1168_reg[0] ),
        .I2(\data_p1_reg[15]_0 ),
        .I3(CO),
        .I4(\data_p1_reg[6]_0 ),
        .O(\left_edge_new_2_reg_213_reg[0] ));
endmodule

(* ORIG_REF_NAME = "det_color_cord_top" *) (* RESET_ACTIVE_LOW = "1" *) (* hls_module = "yes" *) 
module hdmi_det_color_cord_0_1_det_color_cord_top
   (cord_out_V_TVALID,
    cord_out_V_TREADY,
    cord_out_V_TDATA,
    cord_out_V_TLAST,
    frame_in_V_TVALID,
    frame_in_V_TREADY,
    frame_in_V_TDATA,
    frame_in_V_TLAST,
    frame_in_V_TKEEP,
    aresetn,
    aclk,
    target_threshold,
    other_threshold,
    target_color,
    width,
    height,
    reset,
    y_cord_out,
    y_cord_out_ap_vld,
    x_cord_out,
    x_cord_out_ap_vld,
    pixel_in_data_out,
    pixel_in_data_out_ap_vld,
    edgeout_val,
    edgeout_val_ap_vld);
  output cord_out_V_TVALID;
  input cord_out_V_TREADY;
  output [95:0]cord_out_V_TDATA;
  output [0:0]cord_out_V_TLAST;
  input frame_in_V_TVALID;
  output frame_in_V_TREADY;
  input [23:0]frame_in_V_TDATA;
  input [0:0]frame_in_V_TLAST;
  input [2:0]frame_in_V_TKEEP;
  input aresetn;
  input aclk;
  input [7:0]target_threshold;
  input [7:0]other_threshold;
  input [7:0]target_color;
  input [31:0]width;
  input [31:0]height;
  input reset;
  output [31:0]y_cord_out;
  output y_cord_out_ap_vld;
  output [31:0]x_cord_out;
  output x_cord_out_ap_vld;
  output [31:0]pixel_in_data_out;
  output pixel_in_data_out_ap_vld;
  output [63:0]edgeout_val;
  output edgeout_val_ap_vld;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire [95:0]cord_out_V_TDATA;
  wire cord_out_V_TREADY;
  wire cord_out_V_TVALID;
  wire [31:0]data_p2;
  wire det_color_cord_U_n_171;
  wire det_color_cord_U_n_172;
  wire det_color_cord_U_n_173;
  wire det_color_cord_U_n_174;
  wire det_color_cord_U_n_175;
  wire det_color_cord_U_n_176;
  wire det_color_cord_U_n_177;
  wire det_color_cord_U_n_178;
  wire det_color_cord_U_n_179;
  wire det_color_cord_U_n_180;
  wire det_color_cord_U_n_181;
  wire det_color_cord_U_n_182;
  wire det_color_cord_U_n_183;
  wire det_color_cord_U_n_184;
  wire det_color_cord_U_n_185;
  wire det_color_cord_U_n_186;
  wire det_color_cord_U_n_187;
  wire det_color_cord_U_n_188;
  wire det_color_cord_U_n_189;
  wire det_color_cord_U_n_190;
  wire det_color_cord_U_n_191;
  wire det_color_cord_U_n_192;
  wire det_color_cord_U_n_193;
  wire det_color_cord_U_n_194;
  wire det_color_cord_U_n_195;
  wire det_color_cord_U_n_196;
  wire det_color_cord_U_n_197;
  wire det_color_cord_U_n_198;
  wire det_color_cord_U_n_199;
  wire det_color_cord_U_n_200;
  wire det_color_cord_U_n_201;
  wire det_color_cord_U_n_202;
  wire det_color_cord_U_n_40;
  wire det_color_cord_U_n_41;
  wire det_color_cord_U_n_42;
  wire det_color_cord_U_n_7;
  wire det_color_cord_cord_out_V_if_U_n_34;
  wire det_color_cord_frame_in_V_if_U_n_10;
  wire det_color_cord_frame_in_V_if_U_n_11;
  wire det_color_cord_frame_in_V_if_U_n_12;
  wire det_color_cord_frame_in_V_if_U_n_13;
  wire det_color_cord_frame_in_V_if_U_n_2;
  wire det_color_cord_frame_in_V_if_U_n_38;
  wire det_color_cord_frame_in_V_if_U_n_39;
  wire det_color_cord_frame_in_V_if_U_n_4;
  wire det_color_cord_frame_in_V_if_U_n_40;
  wire det_color_cord_frame_in_V_if_U_n_41;
  wire det_color_cord_frame_in_V_if_U_n_42;
  wire det_color_cord_frame_in_V_if_U_n_43;
  wire det_color_cord_frame_in_V_if_U_n_44;
  wire det_color_cord_frame_in_V_if_U_n_45;
  wire det_color_cord_frame_in_V_if_U_n_46;
  wire det_color_cord_frame_in_V_if_U_n_47;
  wire det_color_cord_frame_in_V_if_U_n_48;
  wire det_color_cord_frame_in_V_if_U_n_49;
  wire det_color_cord_frame_in_V_if_U_n_50;
  wire det_color_cord_frame_in_V_if_U_n_51;
  wire det_color_cord_frame_in_V_if_U_n_52;
  wire det_color_cord_frame_in_V_if_U_n_53;
  wire det_color_cord_frame_in_V_if_U_n_54;
  wire det_color_cord_frame_in_V_if_U_n_55;
  wire det_color_cord_frame_in_V_if_U_n_6;
  wire det_color_cord_frame_in_V_if_U_n_7;
  wire det_color_cord_frame_in_V_if_U_n_8;
  wire det_color_cord_frame_in_V_if_U_n_9;
  wire [63:0]edgeout_val;
  wire edgeout_val_ap_vld;
  wire [23:0]frame_in_V_TDATA;
  wire frame_in_V_TREADY;
  wire frame_in_V_TVALID;
  wire [31:0]height;
  wire height_upper_edge_lo_reg_11470;
  wire led_exist;
  wire or_cond_7_reg_1172;
  wire other1_below_fu_669_p2;
  wire other2_below_fu_663_p2;
  wire [7:0]other_threshold;
  wire [31:0]p_0_in;
  wire [23:0]\^pixel_in_data_out ;
  wire pixel_in_data_out_ap_vld;
  wire reset;
  wire sig_det_color_cord_ap_rst;
  wire sig_det_color_cord_cord_out_V_full_n;
  wire sig_det_color_cord_frame_in_V_empty_n;
  wire target_above_fu_675_p2;
  wire [7:0]target_color;
  wire [7:0]target_threshold;
  wire [31:0]width;
  wire [31:0]x_cord_out;
  wire [31:0]y_cord_out;
  wire y_cord_out_ap_vld;

  assign cord_out_V_TLAST[0] = \<const1> ;
  assign pixel_in_data_out[31] = \<const0> ;
  assign pixel_in_data_out[30] = \<const0> ;
  assign pixel_in_data_out[29] = \<const0> ;
  assign pixel_in_data_out[28] = \<const0> ;
  assign pixel_in_data_out[27] = \<const0> ;
  assign pixel_in_data_out[26] = \<const0> ;
  assign pixel_in_data_out[25] = \<const0> ;
  assign pixel_in_data_out[24] = \<const0> ;
  assign pixel_in_data_out[23:0] = \^pixel_in_data_out [23:0];
  assign x_cord_out_ap_vld = y_cord_out_ap_vld;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  hdmi_det_color_cord_0_1_det_color_cord det_color_cord_U
       (.CO(target_above_fu_675_p2),
        .D(p_0_in),
        .DI({det_color_cord_frame_in_V_if_U_n_38,det_color_cord_frame_in_V_if_U_n_39,det_color_cord_frame_in_V_if_U_n_40,det_color_cord_frame_in_V_if_U_n_41}),
        .E(y_cord_out_ap_vld),
        .\FSM_sequential_state_reg[0] (det_color_cord_cord_out_V_if_U_n_34),
        .\FSM_sequential_state_reg[1] (det_color_cord_U_n_7),
        .Q(height_upper_edge_lo_reg_11470),
        .S({det_color_cord_frame_in_V_if_U_n_42,det_color_cord_frame_in_V_if_U_n_43,det_color_cord_frame_in_V_if_U_n_44,det_color_cord_frame_in_V_if_U_n_45}),
        .SR(sig_det_color_cord_ap_rst),
        .aclk(aclk),
        .\ap_CS_fsm_reg[0]_0 (det_color_cord_frame_in_V_if_U_n_2),
        .\ap_CS_fsm_reg[0]_1 (det_color_cord_frame_in_V_if_U_n_54),
        .\data_p1_reg[14] ({det_color_cord_frame_in_V_if_U_n_46,det_color_cord_frame_in_V_if_U_n_47,det_color_cord_frame_in_V_if_U_n_48,det_color_cord_frame_in_V_if_U_n_49}),
        .\data_p1_reg[15] ({det_color_cord_frame_in_V_if_U_n_10,det_color_cord_frame_in_V_if_U_n_11,det_color_cord_frame_in_V_if_U_n_12,det_color_cord_frame_in_V_if_U_n_13}),
        .\data_p1_reg[23] ({det_color_cord_frame_in_V_if_U_n_6,det_color_cord_frame_in_V_if_U_n_7,det_color_cord_frame_in_V_if_U_n_8,det_color_cord_frame_in_V_if_U_n_9}),
        .\data_p1_reg[6] ({det_color_cord_frame_in_V_if_U_n_50,det_color_cord_frame_in_V_if_U_n_51,det_color_cord_frame_in_V_if_U_n_52,det_color_cord_frame_in_V_if_U_n_53}),
        .\data_p2_reg[31] (data_p2),
        .\edgeout_val[63] ({edgeout_val,det_color_cord_U_n_171,det_color_cord_U_n_172,det_color_cord_U_n_173,det_color_cord_U_n_174,det_color_cord_U_n_175,det_color_cord_U_n_176,det_color_cord_U_n_177,det_color_cord_U_n_178,det_color_cord_U_n_179,det_color_cord_U_n_180,det_color_cord_U_n_181,det_color_cord_U_n_182,det_color_cord_U_n_183,det_color_cord_U_n_184,det_color_cord_U_n_185,det_color_cord_U_n_186,det_color_cord_U_n_187,det_color_cord_U_n_188,det_color_cord_U_n_189,det_color_cord_U_n_190,det_color_cord_U_n_191,det_color_cord_U_n_192,det_color_cord_U_n_193,det_color_cord_U_n_194,det_color_cord_U_n_195,det_color_cord_U_n_196,det_color_cord_U_n_197,det_color_cord_U_n_198,det_color_cord_U_n_199,det_color_cord_U_n_200,det_color_cord_U_n_201,det_color_cord_U_n_202}),
        .edgeout_val_ap_vld(edgeout_val_ap_vld),
        .height(height),
        .led_exist(led_exist),
        .\led_exist_reg[0]_0 (other1_below_fu_669_p2),
        .\led_exist_reg[0]_1 (other2_below_fu_663_p2),
        .\led_exist_reg[0]_2 (det_color_cord_U_n_40),
        .\led_exist_reg[0]_3 (det_color_cord_U_n_41),
        .\led_exist_reg[0]_4 (det_color_cord_U_n_42),
        .\led_exist_reg[0]_5 (det_color_cord_frame_in_V_if_U_n_4),
        .or_cond_7_reg_1172(or_cond_7_reg_1172),
        .reset(reset),
        .sig_det_color_cord_cord_out_V_full_n(sig_det_color_cord_cord_out_V_full_n),
        .\state_reg[0] (sig_det_color_cord_frame_in_V_empty_n),
        .\state_reg[0]_0 (det_color_cord_frame_in_V_if_U_n_55),
        .target_color(target_color),
        .width(width),
        .x_cord_out(x_cord_out),
        .y_cord_out(y_cord_out));
  hdmi_det_color_cord_0_1_det_color_cord_cord_out_V_if det_color_cord_cord_out_V_if_U
       (.D(p_0_in),
        .Q(data_p2),
        .SR(sig_det_color_cord_ap_rst),
        .aclk(aclk),
        .cord_out_V_TDATA(cord_out_V_TDATA),
        .cord_out_V_TREADY(cord_out_V_TREADY),
        .cord_out_V_TVALID(cord_out_V_TVALID),
        .\data_p1_reg[31] (det_color_cord_cord_out_V_if_U_n_34),
        .edgeout_val_ap_vld(edgeout_val_ap_vld),
        .\p_4_reg_1204_reg[63] ({edgeout_val,det_color_cord_U_n_171,det_color_cord_U_n_172,det_color_cord_U_n_173,det_color_cord_U_n_174,det_color_cord_U_n_175,det_color_cord_U_n_176,det_color_cord_U_n_177,det_color_cord_U_n_178,det_color_cord_U_n_179,det_color_cord_U_n_180,det_color_cord_U_n_181,det_color_cord_U_n_182,det_color_cord_U_n_183,det_color_cord_U_n_184,det_color_cord_U_n_185,det_color_cord_U_n_186,det_color_cord_U_n_187,det_color_cord_U_n_188,det_color_cord_U_n_189,det_color_cord_U_n_190,det_color_cord_U_n_191,det_color_cord_U_n_192,det_color_cord_U_n_193,det_color_cord_U_n_194,det_color_cord_U_n_195,det_color_cord_U_n_196,det_color_cord_U_n_197,det_color_cord_U_n_198,det_color_cord_U_n_199,det_color_cord_U_n_200,det_color_cord_U_n_201,det_color_cord_U_n_202}),
        .s_ready_t_reg(det_color_cord_U_n_7),
        .sig_det_color_cord_cord_out_V_full_n(sig_det_color_cord_cord_out_V_full_n));
  hdmi_det_color_cord_0_1_det_color_cord_frame_in_V_if det_color_cord_frame_in_V_if_U
       (.CO(target_above_fu_675_p2),
        .DI({det_color_cord_frame_in_V_if_U_n_38,det_color_cord_frame_in_V_if_U_n_39,det_color_cord_frame_in_V_if_U_n_40,det_color_cord_frame_in_V_if_U_n_41}),
        .Q(height_upper_edge_lo_reg_11470),
        .S({det_color_cord_frame_in_V_if_U_n_42,det_color_cord_frame_in_V_if_U_n_43,det_color_cord_frame_in_V_if_U_n_44,det_color_cord_frame_in_V_if_U_n_45}),
        .SR(sig_det_color_cord_ap_rst),
        .aclk(aclk),
        .aresetn(aresetn),
        .\bottom_edge_loc_2_reg_283_reg[31] (det_color_cord_frame_in_V_if_U_n_2),
        .\data_p1_reg[15] (other1_below_fu_669_p2),
        .\data_p1_reg[6] (other2_below_fu_663_p2),
        .frame_in_V_TDATA(frame_in_V_TDATA),
        .frame_in_V_TREADY(frame_in_V_TREADY),
        .frame_in_V_TVALID(frame_in_V_TVALID),
        .led_exist(led_exist),
        .\led_exist_reg[0] (det_color_cord_frame_in_V_if_U_n_4),
        .\led_exist_reg[0]_0 ({det_color_cord_frame_in_V_if_U_n_6,det_color_cord_frame_in_V_if_U_n_7,det_color_cord_frame_in_V_if_U_n_8,det_color_cord_frame_in_V_if_U_n_9}),
        .\led_exist_reg[0]_1 ({det_color_cord_frame_in_V_if_U_n_10,det_color_cord_frame_in_V_if_U_n_11,det_color_cord_frame_in_V_if_U_n_12,det_color_cord_frame_in_V_if_U_n_13}),
        .\led_exist_reg[0]_2 ({det_color_cord_frame_in_V_if_U_n_46,det_color_cord_frame_in_V_if_U_n_47,det_color_cord_frame_in_V_if_U_n_48,det_color_cord_frame_in_V_if_U_n_49}),
        .\led_exist_reg[0]_3 ({det_color_cord_frame_in_V_if_U_n_50,det_color_cord_frame_in_V_if_U_n_51,det_color_cord_frame_in_V_if_U_n_52,det_color_cord_frame_in_V_if_U_n_53}),
        .\left_edge_new_2_reg_213_reg[0] (det_color_cord_frame_in_V_if_U_n_54),
        .or_cond_7_reg_1172(or_cond_7_reg_1172),
        .\or_cond_7_reg_1172_reg[0] (det_color_cord_frame_in_V_if_U_n_55),
        .other_threshold(other_threshold),
        .\pixel_in_data_out[23] (\^pixel_in_data_out ),
        .pixel_in_data_out_ap_vld(pixel_in_data_out_ap_vld),
        .\target_color[5] (det_color_cord_U_n_41),
        .\target_color[7] (det_color_cord_U_n_40),
        .\target_color[7]_0 (det_color_cord_U_n_42),
        .target_threshold(target_threshold),
        .\tmp_reg_1168_reg[0] (sig_det_color_cord_frame_in_V_empty_n));
endmodule
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
