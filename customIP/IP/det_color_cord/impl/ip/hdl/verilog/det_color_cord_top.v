// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module det_color_cord_top (
cord_out_V_TVALID,
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
edgeout_val_ap_vld
);

parameter RESET_ACTIVE_LOW = 1;

output cord_out_V_TVALID ;
input cord_out_V_TREADY ;
output [96 - 1:0] cord_out_V_TDATA ;
output [1 - 1:0] cord_out_V_TLAST ;


input frame_in_V_TVALID ;
output frame_in_V_TREADY ;
input [24 - 1:0] frame_in_V_TDATA ;
input [1 - 1:0] frame_in_V_TLAST ;
input [3 - 1:0] frame_in_V_TKEEP ;

input aresetn ;

input aclk ;

input [8 - 1:0] target_threshold ;
input [8 - 1:0] other_threshold ;
input [8 - 1:0] target_color ;
input [32 - 1:0] width ;
input [32 - 1:0] height ;
input reset ;
output [32 - 1:0] y_cord_out ;
output y_cord_out_ap_vld ;
output [32 - 1:0] x_cord_out ;
output x_cord_out_ap_vld ;
output [32 - 1:0] pixel_in_data_out ;
output pixel_in_data_out_ap_vld ;
output [64 - 1:0] edgeout_val ;
output edgeout_val_ap_vld ;


wire cord_out_V_TVALID;
wire cord_out_V_TREADY;
wire [96 - 1:0] cord_out_V_TDATA;
wire [1 - 1:0] cord_out_V_TLAST;


wire frame_in_V_TVALID;
wire frame_in_V_TREADY;
wire [24 - 1:0] frame_in_V_TDATA;
wire [1 - 1:0] frame_in_V_TLAST;
wire [3 - 1:0] frame_in_V_TKEEP;

wire aresetn;


wire [97 - 1:0] sig_det_color_cord_cord_out_V_din;
wire sig_det_color_cord_cord_out_V_full_n;
wire sig_det_color_cord_cord_out_V_write;

wire [28 - 1:0] sig_det_color_cord_frame_in_V_dout;
wire sig_det_color_cord_frame_in_V_empty_n;
wire sig_det_color_cord_frame_in_V_read;

wire sig_det_color_cord_ap_rst;



det_color_cord det_color_cord_U(
    .cord_out_V_din(sig_det_color_cord_cord_out_V_din),
    .cord_out_V_full_n(sig_det_color_cord_cord_out_V_full_n),
    .cord_out_V_write(sig_det_color_cord_cord_out_V_write),
    .frame_in_V_dout(sig_det_color_cord_frame_in_V_dout),
    .frame_in_V_empty_n(sig_det_color_cord_frame_in_V_empty_n),
    .frame_in_V_read(sig_det_color_cord_frame_in_V_read),
    .ap_rst(sig_det_color_cord_ap_rst),
    .ap_clk(aclk),
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
    .edgeout_val_ap_vld(edgeout_val_ap_vld)
);

det_color_cord_cord_out_V_if det_color_cord_cord_out_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .cord_out_V_din(sig_det_color_cord_cord_out_V_din),
    .cord_out_V_full_n(sig_det_color_cord_cord_out_V_full_n),
    .cord_out_V_write(sig_det_color_cord_cord_out_V_write),
    .TVALID(cord_out_V_TVALID),
    .TREADY(cord_out_V_TREADY),
    .TDATA(cord_out_V_TDATA),
    .TLAST(cord_out_V_TLAST));

det_color_cord_frame_in_V_if det_color_cord_frame_in_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .frame_in_V_dout(sig_det_color_cord_frame_in_V_dout),
    .frame_in_V_empty_n(sig_det_color_cord_frame_in_V_empty_n),
    .frame_in_V_read(sig_det_color_cord_frame_in_V_read),
    .TVALID(frame_in_V_TVALID),
    .TREADY(frame_in_V_TREADY),
    .TDATA(frame_in_V_TDATA),
    .TLAST(frame_in_V_TLAST),
    .TKEEP(frame_in_V_TKEEP));

det_color_cord_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_det_color_cord_ap_rst),
    .din(aresetn));

endmodule