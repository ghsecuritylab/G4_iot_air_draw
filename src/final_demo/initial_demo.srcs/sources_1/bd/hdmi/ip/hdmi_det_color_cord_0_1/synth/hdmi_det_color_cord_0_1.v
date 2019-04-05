// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:det_color_cord:1.0
// IP Revision: 1903101938

(* X_CORE_INFO = "det_color_cord_top,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "hdmi_det_color_cord_0_1,det_color_cord_top,{}" *)
(* CORE_GENERATION_INFO = "hdmi_det_color_cord_0_1,det_color_cord_top,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=det_color_cord,x_ipVersion=1.0,x_ipCoreRevision=1903101938,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module hdmi_det_color_cord_0_1 (
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
  aresetn
);

input wire [7 : 0] target_threshold;
input wire [7 : 0] other_threshold;
input wire [7 : 0] target_color;
input wire [31 : 0] width;
input wire [31 : 0] height;
input wire reset;
output wire [31 : 0] y_cord_out;
output wire y_cord_out_ap_vld;
output wire [31 : 0] x_cord_out;
output wire x_cord_out_ap_vld;
output wire [31 : 0] pixel_in_data_out;
output wire pixel_in_data_out_ap_vld;
output wire [63 : 0] edgeout_val;
output wire edgeout_val_ap_vld;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cord_out_V TVALID" *)
output wire cord_out_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cord_out_V TREADY" *)
input wire cord_out_V_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cord_out_V TDATA" *)
output wire [95 : 0] cord_out_V_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cord_out_V, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} f\
ormat bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 96}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 cord_out_V TLAST" *)
output wire [0 : 0] cord_out_V_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 frame_in_V TVALID" *)
input wire frame_in_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 frame_in_V TREADY" *)
output wire frame_in_V_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 frame_in_V TDATA" *)
input wire [23 : 0] frame_in_V_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 frame_in_V TLAST" *)
input wire [0 : 0] frame_in_V_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME frame_in_V, TDATA_NUM_BYTES 3, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 frame_in_V TKEEP" *)
input wire [2 : 0] frame_in_V_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF cord_out_V:frame_in_V, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;

  det_color_cord_top inst (
    .target_threshold(target_threshold),
    .other_threshold(other_threshold),
    .target_color(target_color),
    .width(width),
    .height(height),
    .reset(reset),
    .y_cord_out(y_cord_out),
    .y_cord_out_ap_vld(y_cord_out_ap_vld),
    .x_cord_out(x_cord_out),
    .x_cord_out_ap_vld(x_cord_out_ap_vld),
    .pixel_in_data_out(pixel_in_data_out),
    .pixel_in_data_out_ap_vld(pixel_in_data_out_ap_vld),
    .edgeout_val(edgeout_val),
    .edgeout_val_ap_vld(edgeout_val_ap_vld),
    .cord_out_V_TVALID(cord_out_V_TVALID),
    .cord_out_V_TREADY(cord_out_V_TREADY),
    .cord_out_V_TDATA(cord_out_V_TDATA),
    .cord_out_V_TLAST(cord_out_V_TLAST),
    .frame_in_V_TVALID(frame_in_V_TVALID),
    .frame_in_V_TREADY(frame_in_V_TREADY),
    .frame_in_V_TDATA(frame_in_V_TDATA),
    .frame_in_V_TLAST(frame_in_V_TLAST),
    .frame_in_V_TKEEP(frame_in_V_TKEEP),
    .aclk(aclk),
    .aresetn(aresetn)
  );
endmodule
