-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Mar 12 09:53:14 2019
-- Host        : DESKTOP-4H39SC0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/ClassProject/ece532_project/eth/working_eth_with_video.xpr/project_1/project_1.srcs/sources_1/bd/hdmi/ip/hdmi_det_color_cord_0_1/hdmi_det_color_cord_0_1_stub.vhdl
-- Design      : hdmi_det_color_cord_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hdmi_det_color_cord_0_1 is
  Port ( 
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

end hdmi_det_color_cord_0_1;

architecture stub of hdmi_det_color_cord_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "target_threshold[7:0],other_threshold[7:0],target_color[7:0],width[31:0],height[31:0],reset,y_cord_out[31:0],y_cord_out_ap_vld,x_cord_out[31:0],x_cord_out_ap_vld,pixel_in_data_out[31:0],pixel_in_data_out_ap_vld,edgeout_val[63:0],edgeout_val_ap_vld,cord_out_V_TVALID,cord_out_V_TREADY,cord_out_V_TDATA[95:0],cord_out_V_TLAST[0:0],frame_in_V_TVALID,frame_in_V_TREADY,frame_in_V_TDATA[23:0],frame_in_V_TLAST[0:0],frame_in_V_TKEEP[2:0],aclk,aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "det_color_cord_top,Vivado 2018.2";
begin
end;
