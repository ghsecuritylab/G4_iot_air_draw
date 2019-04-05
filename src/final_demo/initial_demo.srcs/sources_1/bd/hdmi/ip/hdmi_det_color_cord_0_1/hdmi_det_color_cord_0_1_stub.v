// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Mar 12 09:53:14 2019
// Host        : DESKTOP-4H39SC0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/ClassProject/ece532_project/eth/working_eth_with_video.xpr/project_1/project_1.srcs/sources_1/bd/hdmi/ip/hdmi_det_color_cord_0_1/hdmi_det_color_cord_0_1_stub.v
// Design      : hdmi_det_color_cord_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "det_color_cord_top,Vivado 2018.2" *)
module hdmi_det_color_cord_0_1(target_threshold, other_threshold, 
  target_color, width, height, reset, y_cord_out, y_cord_out_ap_vld, x_cord_out, 
  x_cord_out_ap_vld, pixel_in_data_out, pixel_in_data_out_ap_vld, edgeout_val, 
  edgeout_val_ap_vld, cord_out_V_TVALID, cord_out_V_TREADY, cord_out_V_TDATA, 
  cord_out_V_TLAST, frame_in_V_TVALID, frame_in_V_TREADY, frame_in_V_TDATA, 
  frame_in_V_TLAST, frame_in_V_TKEEP, aclk, aresetn)
/* synthesis syn_black_box black_box_pad_pin="target_threshold[7:0],other_threshold[7:0],target_color[7:0],width[31:0],height[31:0],reset,y_cord_out[31:0],y_cord_out_ap_vld,x_cord_out[31:0],x_cord_out_ap_vld,pixel_in_data_out[31:0],pixel_in_data_out_ap_vld,edgeout_val[63:0],edgeout_val_ap_vld,cord_out_V_TVALID,cord_out_V_TREADY,cord_out_V_TDATA[95:0],cord_out_V_TLAST[0:0],frame_in_V_TVALID,frame_in_V_TREADY,frame_in_V_TDATA[23:0],frame_in_V_TLAST[0:0],frame_in_V_TKEEP[2:0],aclk,aresetn" */;
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
  output cord_out_V_TVALID;
  input cord_out_V_TREADY;
  output [95:0]cord_out_V_TDATA;
  output [0:0]cord_out_V_TLAST;
  input frame_in_V_TVALID;
  output frame_in_V_TREADY;
  input [23:0]frame_in_V_TDATA;
  input [0:0]frame_in_V_TLAST;
  input [2:0]frame_in_V_TKEEP;
  input aclk;
  input aresetn;
endmodule
