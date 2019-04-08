# G4_iot_air_draw
UofT ECE532 2019S Group 4 Project: IoT Air Draw

## Project Description
The project aims to provide the ability for user to draw on 2D interface using the controller in 3D space with the help of FPGA. To accomplish this, The design contains a controller with LED that the user can move, and a video camera that will capture the movement of the controller and feed video data into FPGA. The FPGA will be responsible for detecting the position of the LED in the video frame. The embedded processor will read the coordinates from the IP block and send that, via ethernet, to the server which will have a drawing application running. The server will use the coordinates and other button commands from the controller to draw on the screen.
The user could see their drawing in real time and would get a sense of amazement and ownership as their painting gets displayed on the screen.

## How to use
The project contains 3 parts, hardware design, external controller and software server. To use the system, please follow the step below:  
Go to /src/final demo and open initial_demo.xpr with Vivado 2018.2  
Run server application at src/draw_server with python  
Setup arduino and bluetooth with program in /arduino/rgb_test. Note you need to set up buttons as well.  
Launch SDK and run the application on hardware  |
## Repository structure
|---arduino  
|-------rgb_test/rgb_test.ino                                              (program file used on arduino)  
|---docs  
|-------Final_Report.pdf                                                     (group final report)  
|-------Demo_Video.mp4                                                  (Video on final demo)  
|-------532 FInal Demo.pdf                                                (final presentation slide)  
|---src  
|-------draw_server/draw_server.py                                 (Python software server)  
|-------final_demo                                                              (contains final vivado project)  
|-----------initial_demo.sdk                                                (folder containing SDK code)  
|---------------hdmi_wrapper_hw_platform_1  
|---------------pure_led_detect  
|---------------initial_demo   
|-------initial_demo.xpr                                                  (Entry point to Vivado project)  
|---customIP  
|-------HLS_source                                                            (CPP source for HLS IP)  
|-------IP                                                                              (folder containing our custom IPs)  
|----------det_color_cord/impl                                           (LED detect IP implemented with HLS)  
|--------- input_from_mb_extended_1.0                        (Threshold passing IP implemented in RTL)  
|---README.md  

## Author:
Nafis Ahbab  
Mariko Tatsumi  
Haiqi Xu  

## Acknowledgments:
We would like to express our special thanks of gratitude to the author of project [Hand Gesture Computer Interface](https://github.com/arasht94/G5_HandGestureComputerInterface/blob/master/src/hdmi.sdk/videodemo/src/vdma) which provides us a handy VDMA wrapper to use in our SDK code.
