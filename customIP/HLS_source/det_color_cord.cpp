/*************************************************************************
    > File Name: det_color_cord.cpp
    > Author: mariko
    > Mail: nyankonyanko.com 
    > Created Time: Sun 24 Feb 2019 01:04:43 AM EST
 ************************************************************************/

#include "ap_int.h"
#include "hls_stream.h"
#include "ap_utils.h"
#include "hls_video.h"
#include "hls/hls_video_types.h"

//define colors
#define RED 1
#define GREEN 2
#define BLUE 3

//define data type
struct video_axis{
	ap_uint <24> data;
	ap_uint <1> tlast;
	ap_uint <3> tkeep;
};

struct center_axis{
	ap_uint <96> data;
	ap_uint <1> tlast;
};

//global variable
static int current_x_cord = 0;
static int current_y_cord = 0;
static int left_edge = 0;
static int right_edge = 0;
static int upper_edge = 0;
static int bottom_edge = 0;
static bool led_exist = false;

void det_color_cord(
	hls::stream <video_axis> &frame_in,
	hls::stream <center_axis> &cord_out,
	uint8_t target_threshold,
	uint8_t other_threshold,
	uint8_t target_color,
	int width,
	int height,
	bool reset,
	//bool v_sync,
	//bool h_sync,
	int *y_cord_out,
	int *x_cord_out,
	int *pixel_in_data_out,
	long *edgeout_val)
	//bool *alert)
{

//#pragma HLS dataflow //for pipelining

#pragma HLS resource core=AXI4Stream variable=frame_in
#pragma HLS resource core=AXI4Stream variable=cord_out

#pragma HLS DATA_PACK variable=frame_in
#pragma HLS DATA_PACK variable=cord_out

#pragma HLS INTERFACE ap_stable port=target_threshold
#pragma HLS INTERFACE ap_stable port=other_threshold
#pragma HLS INTERFACE ap_stable port=target_color
#pragma HLS INTERFACE ap_stable port=width
#pragma HLS INTERFACE ap_stable port=height
#pragma HLS INTERFACE ap_vld port=y_cord_out
#pragma HLS INTERFACE ap_vld port=x_cord_out
#pragma HLS INTERFACE ap_vld port=pixel_in_data_out
#pragma HLS INTERFACE ap_vld port=edgeout_val

#pragma HLS INTERFACE ap_ctrl_none port=return

	//define local variables
	bool target, target_above, other1_below, other2_below;
	unsigned int x_center, y_center;
	video_axis pixel_in;
	long rl_edge, ud_edge;
	center_axis coordinate;
	ap_uint <32> data_center;
	ap_uint <96> data_edge;

	//reset input
	if(reset == 1){
		current_x_cord = 0;
		current_y_cord = 0;
	}

	//update the default value
	if(current_x_cord == 0 && current_y_cord == 0){
		left_edge = width;
		upper_edge = height;
		bottom_edge = 0;
		right_edge = 0;
	}

	//read coming pixel from stream
	if(!frame_in.empty()){
		pixel_in = frame_in.read();
		*pixel_in_data_out = (int)(pixel_in.data);

		//check colors
		//TODO(if time allows): make the comparison of color threshold more flexible
		//assume 23:16 -> R, 15:8 -> G, 7:0 -> B
		switch(target_color){
			case RED:
				target_above = (((pixel_in.data & 0x00FF0000) >> 16) > target_threshold);
				other1_below = (((pixel_in.data & 0x0000FF00) >> 8) < other_threshold);
				other2_below = ((pixel_in.data & 0x000000FF) < other_threshold);
				break;
			case GREEN:
				target_above = (((pixel_in.data & 0x0000FF00) >> 8) > target_threshold);
				other1_below = (((pixel_in.data & 0x00FF0000) >> 16) < other_threshold);
				other2_below = ((pixel_in.data & 0x000000FF) < other_threshold);
				break;
			case BLUE:
				target_above = ((pixel_in.data & 0x000000FF) > target_threshold);
				other1_below = (((pixel_in.data & 0x00FF0000) >> 16) < other_threshold);
				other2_below = (((pixel_in.data & 0x0000FF00) >> 8) < other_threshold);
				break;
			default:   //red
				target_above = (((pixel_in.data & 0x00FF0000) >> 16) > target_threshold);
				other1_below = (((pixel_in.data & 0x0000FF00) >> 8) < other_threshold);
				other2_below = ((pixel_in.data & 0x000000FF) < other_threshold);
				break;
		}
		//update edge value if needed
		target = (target_above && other1_below && other2_below);
		if(target){
			if(current_x_cord > right_edge)
				right_edge = current_x_cord;
			if(current_x_cord < left_edge)
				left_edge = current_x_cord;
			if(current_y_cord > bottom_edge)
				bottom_edge = current_y_cord;
			if(current_y_cord < upper_edge)
				upper_edge = current_y_cord;
			led_exist = true;
		}
	
		//if that's the last pixel, output the coordinate value
		if((current_y_cord == height-1) && (current_x_cord == width-1)){
			//led is detected on the frame, calculate the center
			if(led_exist){
				//calculate coordinate
				x_center = (unsigned long)((right_edge + left_edge) / 2);
				y_center = (unsigned long)((bottom_edge + upper_edge) / 2);
				data_center = (((x_center & 0xFFFF) << 16) | (y_center & 0xFFFF));

				//output the edge values: ((left) | (right) | (top) | (bottom))
				rl_edge = (((left_edge & 0x0FFFF) << 16) | (right_edge & 0x0FFFF));
				ud_edge = (((upper_edge & 0x0FFFF) << 16) | (bottom_edge & 0x0FFFF));
				data_edge = ((rl_edge << 32) | ud_edge );
			}
			else{
				//led is not found, output invalid value
				data_center = 0xFFFFFFFFFFFFFFFF;
				data_edge = 0xFFFFFFFF;
			}

			//pack the data
			coordinate.tlast = 1;
			coordinate.data = ( ((data_edge) << 32)| data_center);
			cord_out.write(coordinate);
			*edgeout_val = data_edge;
		}

		//move onto next pixel
		//x coordinate
		/*if(h_sync == 1){
			if(current_x_cord == width-1){
				if(v_sync == 1){
					if(current_y_cord != height-1){
						//v_sync does not behave as expected
						*alert = true;
					}
					current_y_cord = 0;
				}
				else
					current_y_cord++;
			}
			else{
				//h_sync does not behave as expected
				*alert = true;
			}
			current_x_cord = 0;
		}
		else{
			current_x_cord++;
		}*/

		if(current_x_cord == width-1){
			if(current_y_cord == height-1)
				current_y_cord = 0;
			else
				current_y_cord++;
			current_x_cord = 0;
		}
		else{
			current_x_cord++;
		}

		//output x and y coordinates
		*y_cord_out = current_y_cord;
		*x_cord_out = current_x_cord;
	}
}
