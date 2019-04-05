/************************************************************************/
/*																		*/
/*	video_demo.c	--	ZYBO Video demonstration 						*/
/*																		*/
/************************************************************************/
/*	Author: Sam Bobrowicz												*/
/*	Copyright 2015, Digilent Inc.										*/
/************************************************************************/
/*  Module Description: 												*/
/*																		*/
/*		This file contains code for running a demonstration of the		*/
/*		Video input and output capabilities on the ZYBO. It is a good	*/
/*		example of how to properly use the display_ctrl and				*/
/*		video_capture drivers.											*/
/*																		*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/* 																		*/
/*		11/25/2015(SamB): Created										*/
/*																		*/
/************************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */

#include "video_demo.h"
#include "video_capture/video_capture.h"
#include "display_ctrl/display_ctrl.h"
#include "intc/intc.h"
//#include <stdio.h>
#include "xuartlite_l.h"
//#include "xuartps.h"
#include "math.h"
#include <ctype.h>
#include <stdlib.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "vdma/vdma.h"
#include "xllfifo.h"
#include "input_from_mb_extended.h"
//#include "led_detect.h"

/*
 * XPAR redefines
 */
#define DYNCLK_BASEADDR XPAR_AXI_DYNCLK_0_BASEADDR
#define VGA_VDMA_ID XPAR_AXIVDMA_0_DEVICE_ID
#define VGA_VDMA2_ID XPAR_AXIVDMA_1_DEVICE_ID
#define DISP_VTC_ID XPAR_VTC_0_DEVICE_ID
#define VID_VTC_ID XPAR_VTC_1_DEVICE_ID
#define GPIO_OUT_ID XPAR_AXI_GPIO_0_DEVICE_ID
#define GPIO_ADDRESS XPAR_AXI_GPIO_0_BASEADDR
#define VID_GPIO_ID XPAR_AXI_GPIO_VIDEO_DEVICE_ID
#define VID_VTC_IRPT_ID XPAR_INTC_0_VTC_1_VEC_ID
#define VID_GPIO_IRPT_ID XPAR_INTC_0_GPIO_0_VEC_ID
#define SCU_TIMER_ID XPAR_AXI_TIMER_0_DEVICE_ID
#define UART_BASEADDR XPAR_UARTLITE_0_BASEADDR
//#define LED_DETECT_BASE_ADDR XPAR_LED_DETECT_0_S00_AXI_BASEADDR
#define MB_BASE_ADDR XPAR_INPUT_FROM_MB_EXTEND_0_S00_AXI_BASEADDR
/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */

#define GESTURE_CHECK_DURATION 50
#define SCROLL_SMALL_THRESHOLD 50
#define SCROLL_LARGE_THRESHOLD 300
int rxbuffer [GESTURE_CHECK_DURATION];
int rybuffer [GESTURE_CHECK_DURATION];
int gxbuffer [GESTURE_CHECK_DURATION];
int gybuffer [GESTURE_CHECK_DURATION];

#define ZOOM_CHECK_DURATION 50
#define ZOOM_IN_RATIO 2
#define ZOOM_OUT_RATIO 0.5
double zoombuffer [ZOOM_CHECK_DURATION];

#define MINDIFF 2.25e-308

volatile unsigned int * gpio_out = (unsigned int *)0x40010000;
volatile unsigned int * gpio_in = (unsigned int *)0x40010000 + 6;


#define FIFO_DEV_ID	   	XPAR_AXI_FIFO_0_DEVICE_ID
XLlFifo Fifo0Instance;
/*
 * Display and Video Driver structs
 */
DisplayCtrl dispCtrl;
XAxiVdma vdma;
VideoCapture videoCapt;
INTC intc;
char fRefresh; //flag used to trigger a refresh of the Menu on video detect


//Additional vdma variables
XAxiVdma vdma2;
static XAxiVdma_DmaSetup vdma2Config_1; /*VDMA_1 read channel configuration*/
static XAxiVdma_DmaSetup vdma2Config_2; /*VDMA_1 write channel configuration*/
static XAxiVdma_FrameCounter frame_count_config_1;
static XAxiVdma_FrameCounter frame_count_config_2;


/*
 * Framebuffers for video data
 */
u8 frameBuf[DISPLAY_NUM_FRAMES][DEMO_MAX_FRAME];
u8 *pFrames[DISPLAY_NUM_FRAMES]; //array of pointers to the frame buffers

/*
 * Interrupt vector table
 */
const ivt_t ivt[] = {
	videoGpioIvt(VID_GPIO_IRPT_ID, &videoCapt),
	videoVtcIvt(VID_VTC_IRPT_ID, &(videoCapt.vtc))
};


/* ------------------------------------------------------------ */
/*				Functions										*/
/* ------------------------------------------------------------ */

int main(void)
{
	Xil_ICacheEnable();
	Xil_DCacheEnable();
	DemoInitialize();

	DemoRun();

	return 0;
}


int RxReceive (XLlFifo *InstancePtr, u32* DestinationAddr)
{

	int Status;
	static u32 ReceiveLength;
	/* Read Recieve Length */
	while(XLlFifo_RxOccupancy(InstancePtr)) {
		ReceiveLength = (XLlFifo_RxGetLen(InstancePtr));
		xil_printf("receiving %d bytes into from rx\n\r", ReceiveLength);
		XLlFifo_Read(InstancePtr,DestinationAddr,ReceiveLength);
		//xil_printf("receive1 %d\r\n", DestinationAddr[0]);
		//xil_printf("receive2 %d\r\n", DestinationAddr[1]);
		//xil_printf("receive1 %d\r\n", (DestinationAddr[0] & 0x0000FFFF));

		// Black magic to get x and y
		int y = 2 * ((DestinationAddr[1] & 0x0000FFFF) - 360);
		int x = ((DestinationAddr[0] & 0xFFFF0000) >> 16);

		// Black magic to check if led is detected
		if(y<0 || x == 65535){
			x = 0;
			y = 0;
		}
		xil_printf("receive x %d\r\n", x);
		xil_printf("receive y %d\r\n", y);
		/*
		xil_printf("edges: left %u, right %u, top %u, bottom %u\r\n"
				,((DestinationAddr[2] & 0xFFFF0000) >> 16)
				,(DestinationAddr[2] & 0x0000FFFF)
				,((DestinationAddr[1] & 0xFFFF0000) >> 16)
				,(DestinationAddr[1] & 0x0000FFFF));

		for (i=0; i < ReceiveLength /WORD_SIZE ; i++) {
				RxWord = XLlFifo_RxGetWord(InstancePtr);
				*(DestinationBuffer+i) = RxWord;
		}
		for (i=0; i < ReceiveLength;i++){
			xil_printf("i = %d: %x\n", i, (char)(((char*)DestinationBuffer)[i]));
		}
		*/
	}
	/*
	Status = XLlFifo_IsRxDone(InstancePtr);
	if(Status != TRUE){
		xil_printf("Failing in receive complete ... \r\n");
		return XST_FAILURE;
	}
	*/
	return XST_SUCCESS;
}

void DemoInitialize()
{
	int Status;
	XAxiVdma_Config *vdmaConfig;
	XAxiVdma_Config *vdma2Config;
	int i;

	/*
	 * Initialize an array of pointers to the 3 frame buffers
	 */
	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
	{
		pFrames[i] = frameBuf[i];
	}

	/*
	 * Initialize VDMA driver
	 */
	vdmaConfig = XAxiVdma_LookupConfig(VGA_VDMA_ID);
	if (!vdmaConfig)
	{
		xil_printf("No video DMA found for ID %d\r\n", VGA_VDMA_ID);
		return;
	}
	Status = XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		xil_printf("VDMA Configuration Initialization failed %d\r\n", Status);
		return;
	}

	/*
	 * Initialize VDMA2 driver
	 */
	vdma2Config = XAxiVdma_LookupConfig(VGA_VDMA2_ID);
	if (!vdma2Config)
	{
		xil_printf("No video DMA found for ID %d\r\n", VGA_VDMA2_ID);
		return;
	}
	Status = XAxiVdma_CfgInitialize(&vdma2, vdma2Config, vdma2Config->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		xil_printf("VDMA2 Configuration Initialization failed %d\r\n", Status);
		return;
	}
	//configure objects for the vdma2
	read_config(&vdma2, &vdma2Config_1, &frame_count_config_1);
	write_config(&vdma2, &vdma2Config_2, &frame_count_config_2);


	/*
	 * Initialize the Display controller and start it
	 */
	Status = DisplayInitialize(&dispCtrl, &vdma, DISP_VTC_ID, DYNCLK_BASEADDR, pFrames, DEMO_STRIDE);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Display Ctrl initialization failed during demo initialization%d\r\n", Status);
		return;
	}
	Status = DisplayStart(&dispCtrl);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Couldn't start display during demo initialization%d\r\n", Status);
		return;
	}

	/*
	 * Initialize the Interrupt controller and start it.
	 */
	Status = fnInitInterruptController(&intc);
	if(Status != XST_SUCCESS) {
		xil_printf("Error initializing interrupts");
		return;
	}
	fnEnableInterrupts(&intc, &ivt[0], sizeof(ivt)/sizeof(ivt[0]));

	/*
	 * Initialize the Video Capture device
	 */
	Status = VideoInitialize(&videoCapt, &intc, &vdma, VID_GPIO_ID, VID_VTC_ID, VID_VTC_IRPT_ID, pFrames, DEMO_STRIDE, DEMO_START_ON_DET);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Video Ctrl initialization failed during demo initialization%d\r\n", Status);
		return;
	}

	/*
	 * Set the Video Detect callback to trigger the menu to reset, displaying the new detected resolution
	 */
	VideoSetCallback(&videoCapt, DemoISR, &fRefresh);

	/*
	 * Program thresholds and Enable IP
	 */
	INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG0_OFFSET, 240);
	INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG1_OFFSET, 170);
	INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG2_OFFSET, 1);

	INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG3_OFFSET, 1280);
	INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG4_OFFSET, 720);
	INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG5_OFFSET, 1);
	INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG5_OFFSET, 0);
	//LED_DETECT_mWriteReg(LED_DETECT_BASE_ADDR, LED_DETECT_S00_AXI_SLV_REG3_OFFSET, 220);//red
	//LED_DETECT_mWriteReg(LED_DETECT_BASE_ADDR, LED_DETECT_S00_AXI_SLV_REG4_OFFSET, 220);//green
	//LED_DETECT_mWriteReg(LED_DETECT_BASE_ADDR, LED_DETECT_S00_AXI_SLV_REG5_OFFSET, 100);//other


	return;
}

void DemoRun()
{
	int status;
	XGpio *GpioPtr = &videoCapt.gpio;
	int i,j;

	/* Flush UART FIFO */
	while (!XUartLite_IsReceiveEmpty(UART_BASEADDR))
	{
		XUartLite_ReadReg(UART_BASEADDR, XUL_RX_FIFO_OFFSET);
	}

	/* ECE532 */
	xil_printf("\nStarting...\n");
	fRefresh = 0;

	videoCapt.state=VIDEO_STREAMING;
	VideoStart(&videoCapt);

	XLlFifo_Config *Config0;
	int Status;


	// Deal with fifo 0
	/* Initialize the Device Configuration Interface driver */
	Config0 = XLlFfio_LookupConfig(FIFO_DEV_ID);
	if (!Config0) {
		xil_printf("No config found for %d\r\n", FIFO_DEV_ID);
		return;
	}
	/*
	 * This is where the virtual address would be used, this example
	 * uses physical address.
	 */
	Status = XLlFifo_CfgInitialize(&Fifo0Instance, Config0, Config0->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed\n\r");
		return;
	}
	// Deal with fifo 0
	/* Check for the Reset value */
	Status = XLlFifo_Status(&Fifo0Instance);
	XLlFifo_IntClear(&Fifo0Instance,0xffffffff);
	Status = XLlFifo_Status(&Fifo0Instance);
	if(Status != 0x0) {
		xil_printf("\n ERROR : Reset value of ISR0 : 0x%x\t"
				"Expected : 0x0\n\r",
				XLlFifo_Status(&Fifo0Instance));
		return;
	}

	/*pipe input to output */
	DisplayChangeFrame(&dispCtrl, 1);
	status = DisplayStop(&dispCtrl);
	DisplaySetMode(&dispCtrl, &VMODE_1280x720);
	DisplayStart(&dispCtrl);

	xil_printf("\nStarting2...\n");

	/* check whether it worked */
	if (status == XST_DMA_ERROR)
		xil_printf("\n\rWARNING: AXI VDM A Error detected and cleared\n\r");

	//loop and grab from vdmas
	while(1){
		//spin if not ready, plug HDMI-IN out and back in
		while (XUartLite_IsReceiveEmpty(UART_BASEADDR) && !fRefresh);
		XGpio_DiscreteRead(GpioPtr, 2);

		// if I uncomment this two lines out, weird things happen
		//INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG5_OFFSET, 1);
		//INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG5_OFFSET, 0);

		// enable the IP
		// here might be important?
		// LED_DETECT_mWriteReg(LED_DETECT_BASE_ADDR, LED_DETECT_S00_AXI_SLV_REG0_OFFSET, 2);

		//control vdmas
		for (i = 0; i < 720; i++){ //720 = number of rows
			//read row into IP
			dma_read_from_memory(i,&vdma2,&vdma2Config_1,&frame_count_config_1,pFrames[0]);

			//sleep a little
			for(j=0; j<250; j++);

			//write row from IP to DDR
			while(dma_write_to_memory(i,&vdma2,&vdma2Config_2,&frame_count_config_2,pFrames[1]) == XST_FAILURE);
		}

		//read the xy values from IP for both colours and separate the x and y values
		//int rxy, gxy, rx, ry, gx, gy;

		/* Revceive the Data Stream */
		u32 receive_int[3];  //2
		Status = RxReceive(&Fifo0Instance, receive_int);
		/*
		if (Status != XST_SUCCESS){
			xil_printf("Receiving data failed");
			return;
		}
		*/
		//rxy = LED_DETECT_mReadReg(LED_DETECT_BASE_ADDR, LED_DETECT_S00_AXI_SLV_REG1_OFFSET);
		//gxy = LED_DETECT_mReadReg(LED_DETECT_BASE_ADDR, LED_DETECT_S00_AXI_SLV_REG2_OFFSET);
		//split_coordinates(rxy,&rx,&ry);
		//split_coordinates(gxy,&gx,&gy);
		//xil_printf("RED:(%d,%d) GREEN:(%d,%d) rxy:%x gxy:%x\n",rx,ry,gx,gy,rxy,gxy);

		//disable IP to reset to ycoord
		//LED_DETECT_mWriteReg(LED_DETECT_BASE_ADDR, LED_DETECT_S00_AXI_SLV_REG0_OFFSET, 0);

		//perform gesture detection
		//Gesture detected_gesture = gesture_detect(rx,ry,rxbuffer,rybuffer,gx,gy,gxbuffer,gybuffer,zoombuffer);

		//if the Gesture is not NONE, send to Arduino
		//if(detected_gesture != NONE){
			//handshake_send(detected_gesture);
			//xil_printf("Gesture:%s\n",get_gesture_string(detected_gesture));
		//}
	}

	return;
}

/**
 * Hanshake with the Arduino and then send the
 * data
 */
void handshake_send(Gesture gesture){
	//keep sending valid until Arduino sends ack
	while(*gpio_in == 0)
		*gpio_out = gesture;

	//reset data back to zero just in case it
	//doesn't automatically happen
	*gpio_out = 0;
}

/**
 * Extract the x and y sections of the coordinates
 */
void split_coordinates(int xy, int* x, int* y ){
	*x = (xy & 0xffff0000) >> 16;
	*y = xy & 0x0000ffff;
}

/**
 * Initialize the buffers to zero
 */
void reset_buffers (){
	int i;
	for (i=0; i<GESTURE_CHECK_DURATION; i++){
		rxbuffer[i]= 0;
		rybuffer[i]= 0;
		gxbuffer[i]= 0;
		gybuffer[i]= 0;
	}
	for (i=0; i<ZOOM_CHECK_DURATION; i++){
		zoombuffer[i]= 0;
	}

}

/**
 * Shift the buffers over and insert the new
 * coordinate into the LSB position
 */
void update_zoom_buffers(int rx, int ry, int gx, int gy, double zoombuffer[]){
	//shift the buffer
	int i;
	for (i=ZOOM_CHECK_DURATION-1; i>0; i--){
		zoombuffer[i]= zoombuffer[i-1];
	}

	int rdx = rxbuffer[0] - rxbuffer[1];
	int rdy = rybuffer[0] - rybuffer[1];
	int gdx = gxbuffer[0] - gxbuffer[1];
	int gdy = gybuffer[0] - gybuffer[1];
	if ((rxbuffer[0] && rybuffer[0]) && (rxbuffer[1] && rybuffer[1]) && (rdx || rdy) &&
		(gxbuffer[0] && gybuffer[0]) && (gxbuffer[1] && gybuffer[1]) && (gdx || gdy))
		zoombuffer[0] = sqroot((rx - gx)*(rx - gx) + (ry - gy)*(ry - gy));
	else
		zoombuffer[0] = 0;

}

/**
 * Shift the buffers over and insert the new
 * coordinate into the LSB position
 */
void update_buffers(int x, int y, int xbuffer[], int ybuffer[]){
	//shift the buffers
	int i;
	for (i=GESTURE_CHECK_DURATION-1; i>0; i--){
			xbuffer[i]= xbuffer[i-1];
			ybuffer[i]= ybuffer[i-1];
	}

	//insert coordinate into LSB positions
	xbuffer[0]=x;
	ybuffer[0]=y;
}
/**
 * Detect the scrolling int the x and y directions
 * and output the gesture detected
 */
Gesture scroll_detect(int xbuffer[],int ybuffer[]){
	int i, dx, dy;
	int total_dx = 0;
	int total_dy = 0;

	//loop through buffer and calculate the total
	//deltas
	for (i=1; i<GESTURE_CHECK_DURATION; i++){
		dx = xbuffer[i] - xbuffer[i-1];
		dy = ybuffer[i] - ybuffer[i-1];

		if( (xbuffer[i-1] && ybuffer[i-1]) && (xbuffer[i] && ybuffer[i]) && (dx || dy) ){ //ignore (0,0) and (dx=0 and dy=0)
			total_dx += dx;
			total_dy += dy;

			//xil_printf("dx:%d, dy:%d %d, %d, %d\n", dx, dy, ybuffer[0], ybuffer[1], ybuffer[2]);

			if(total_dy > SCROLL_LARGE_THRESHOLD && (total_dx < SCROLL_SMALL_THRESHOLD && total_dx > SCROLL_SMALL_THRESHOLD*(-1) )){
				return SCROLL_UP;
			}
			else if(total_dy < SCROLL_LARGE_THRESHOLD*(-1) && (total_dx < SCROLL_SMALL_THRESHOLD && total_dx > SCROLL_SMALL_THRESHOLD*(-1) )){
				return SCROLL_DOWN;
			}
			else if(total_dx < SCROLL_LARGE_THRESHOLD*(-1) && (total_dy < SCROLL_SMALL_THRESHOLD && total_dy > SCROLL_SMALL_THRESHOLD*(-1) )){ // && total_dy < SCROLL_Y_THRESHOLD
				return SCROLL_LEFT;
			}
			else if(total_dx > SCROLL_LARGE_THRESHOLD && (total_dy < SCROLL_SMALL_THRESHOLD && total_dy > SCROLL_SMALL_THRESHOLD*(-1))){ // && total_dy < SCROLL_Y_THRESHOLD
				return SCROLL_RIGHT;
			}
		}

	}

	//did not find a gesture
	return NONE;
}

/**
 * Detect a zooming motion
 */
Gesture zoom_detect(double zoombuffer[]){
	int i;
	double ratio = 0;

	for (i=1; i<ZOOM_CHECK_DURATION; i++){
		//check for not divide by zero
		if(zoombuffer[i] == 0)
			ratio = 0;
		else
			ratio = zoombuffer[0] / zoombuffer[i];

		if(ratio > ZOOM_IN_RATIO){
			return ZOOM_IN;
		}
		else if(ratio < ZOOM_OUT_RATIO && ratio > 0){
			return ZOOM_OUT;
		}
	}
	return NONE;
}

/**
 * Function that calls all other gesture detect function
 * This function prioritizes certain gestures over others.
 * Zooming is prioritized over scrolling.
 */
Gesture gesture_detect(int rx,int ry,int rxbuffer[],int rybuffer[],int gx, int gy,int gxbuffer[],int gybuffer[], double zoombuffer[]){
	//place x and y values into the buffers
	update_buffers(rx,ry,rxbuffer,rybuffer);
	update_buffers(gx,gy,gxbuffer,gybuffer);
	update_zoom_buffers(rx,ry,gx,gy,zoombuffer);

	//zoom detect
	Gesture zoom = zoom_detect(zoombuffer);
	if(zoom){
		reset_buffers();
		return zoom;
	}

	//scroll detection
	Gesture r_scroll = scroll_detect(rxbuffer,rybuffer);
	if(r_scroll){
		reset_buffers();
		return r_scroll;
	}

	return NONE;
}

const char* get_gesture_string(Gesture gesture){
   switch (gesture){
	   case NONE: return "NONE";
	   case SCROLL_DOWN: return "SCROLL_DOWN";
	   case SCROLL_UP: return "SCROLL_UP";
	   case SCROLL_LEFT: return "SCROLL_LEFT";
	   case SCROLL_RIGHT: return "SCROLL_RIGHT";
	   case ZOOM_IN: return "ZOOM_IN";
	   case ZOOM_OUT: return "ZOOM_OUT";
   }
   return "NONE";
}

double sqroot(double square){
    double root=square/3, last, diff=1;
    if (square <= 0) return 0;
    do {
        last = root;
        root = (root + square / root) / 2;
        diff = root - last;
    } while (diff > MINDIFF || diff < -MINDIFF);
    return root;
}

/* Armin's old function
Gesture scroll_detect(){
	int i;
	int dx [GESTURE_CHECK_DURATION-1];
	int dy [GESTURE_CHECK_DURATION-1];
	int total_dx = 0;
	int total_dy = 0;
	for (i=0; i<GESTURE_CHECK_DURATION; i++)
	{
		dx[i] = xbuffer[i] - xbuffer[i-1];
		dy[i] = ybuffer[i] - ybuffer[i-1];
		total_dx += dx[i];
		total_dy += dy[i];
		if(total_dx < SCROLL_X_THRESHOLD && total_dy > SCROLL_Y_THRESHOLD)
		{
			reset_buffers();
			return 1;
		}
	}
	return 0;
}*/


void DemoPrintTest(u8 *frame, u32 width, u32 height, u32 stride, int pattern)
{
	u32 xcoi, ycoi;
	u32 iPixelAddr;
	u8 wRed, wBlue, wGreen;
	u32 wCurrentInt;
	double fRed, fBlue, fGreen, fColor;
	u32 xLeft, xMid, xRight, xInt;
	u32 yMid, yInt;
	double xInc, yInc;


	switch (pattern)
	{
	case DEMO_PATTERN_0:

		xInt = width / 4; //Four intervals, each with width/4 pixels
		xLeft = xInt * 3;
		xMid = xInt * 2 * 3;
		xRight = xInt * 3 * 3;
		xInc = 256.0 / ((double) xInt); //256 color intensities are cycled through per interval (overflow must be caught when color=256.0)

		yInt = height / 2; //Two intervals, each with width/2 lines
		yMid = yInt;
		yInc = 256.0 / ((double) yInt); //256 color intensities are cycled through per interval (overflow must be caught when color=256.0)

		fBlue = 0.0;
		fRed = 256.0;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{
			/*
			 * Convert color intensities to integers < 256, and trim values >=256
			 */
			wRed = (fRed >= 256.0) ? 255 : ((u8) fRed);
			wBlue = (fBlue >= 256.0) ? 255 : ((u8) fBlue);
			iPixelAddr = xcoi;
			fGreen = 0.0;
			for(ycoi = 0; ycoi < height; ycoi++)
			{

				wGreen = (fGreen >= 256.0) ? 255 : ((u8) fGreen);
				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				if (ycoi < yMid)
				{
					fGreen += yInc;
				}
				else
				{
					fGreen -= yInc;
				}

				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}

			if (xcoi < xLeft)
			{
				fBlue = 0.0;
				fRed -= xInc;
			}
			else if (xcoi < xMid)
			{
				fBlue += xInc;
				fRed += xInc;
			}
			else if (xcoi < xRight)
			{
				fBlue -= xInc;
				fRed -= xInc;
			}
			else
			{
				fBlue += xInc;
				fRed = 0;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
		break;
	case DEMO_PATTERN_1:

		xInt = width / 7; //Seven intervals, each with width/7 pixels
		xInc = 256.0 / ((double) xInt); //256 color intensities per interval. Notice that overflow is handled for this pattern.

		fColor = 0.0;
		wCurrentInt = 1;
		for(xcoi = 0; xcoi < (width*3); xcoi+=3)
		{

			/*
			 * Just draw white in the last partial interval (when width is not divisible by 7)
			 */
			if (wCurrentInt > 7)
			{
				wRed = 255;
				wBlue = 255;
				wGreen = 255;
			}
			else
			{
				if (wCurrentInt & 0b001)
					wRed = (u8) fColor;
				else
					wRed = 0;

				if (wCurrentInt & 0b010)
					wBlue = (u8) fColor;
				else
					wBlue = 0;

				if (wCurrentInt & 0b100)
					wGreen = (u8) fColor;
				else
					wGreen = 0;
			}

			iPixelAddr = xcoi;

			for(ycoi = 0; ycoi < height; ycoi++)
			{
				frame[iPixelAddr] = wRed;
				frame[iPixelAddr + 1] = wBlue;
				frame[iPixelAddr + 2] = wGreen;
				/*
				 * This pattern is printed one vertical line at a time, so the address must be incremented
				 * by the stride instead of just 1.
				 */
				iPixelAddr += stride;
			}

			fColor += xInc;
			if (fColor >= 256.0)
			{
				fColor = 0.0;
				wCurrentInt++;
			}
		}
		/*
		 * Flush the framebuffer memory range to ensure changes are written to the
		 * actual memory, and therefore accessible by the VDMA.
		 */
		Xil_DCacheFlushRange((unsigned int) frame, DEMO_MAX_FRAME);
		break;
	default :
		xil_printf("Error: invalid pattern passed to DemoPrintTest");
	}
}

void DemoISR(void *callBackRef, void *pVideo)
{
	char *data = (char *) callBackRef;
	*data = 1; //set fRefresh to 1
}


void start_frame_read(){
	int blah=0;
	int Status;
	int i;

	XAxiVdma_DmaSetup vdmaConfig;
	XAxiVdma_FrameCounter framecounter;


	vdmaConfig.FrameDelay = 0;
	vdmaConfig.EnableCircularBuf = 1;// Charles wrote 0
	vdmaConfig.EnableSync = 0;
	vdmaConfig.PointNum = 0;
	vdmaConfig.EnableFrameCounter = 1;
	vdmaConfig.VertSizeInput = dispCtrl.vdmaConfig.VertSizeInput;

	vdmaConfig.HoriSizeInput = dispCtrl.vdmaConfig.HoriSizeInput;

	//xil_printf("\n\rver %d\n\r", vdmaConfig.VertSizeInput);
	//xil_printf("\n\rhor %d\n\r", vdmaConfig.HoriSizeInput);

	//xil_printf("\n\r the horSizeInput is: %d\n\r", dispCtrl.vdmaConfig.HoriSizeInput);
	//xil_printf("\n\r the vertSizeInput is: %d\n\r", dispCtrl.vdmaConfig.VertSizeInput);
	vdmaConfig.FixedFrameStoreAddr = dispCtrl.curFrame;

	framecounter.ReadFrameCount = 1;
	framecounter.ReadDelayTimerCount = 0;
	framecounter.WriteFrameCount = 0;
	framecounter.WriteDelayTimerCount = 0;

	vdmaConfig.Stride = DEMO_STRIDE; // TODO: Double check

	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
	{
		vdmaConfig.FrameStoreStartAddr[i] = (u32) dispCtrl.framePtr[i];
	}

			//vdmaConfig.FrameStoreStartAddr[0] = (u32)  pFrames[0];


			Status = XAxiVdma_DmaConfig(&vdma2, XAXIVDMA_READ, &(vdmaConfig));


			Status = XAxiVdma_DmaSetBufferAddr(&vdma2, XAXIVDMA_READ, vdmaConfig.FrameStoreStartAddr);

			XAxiVdma_SetFrameCounter(&vdma2, &framecounter);// Blah Hi! hold on!



			Status = XAxiVdma_DmaStart(&vdma2, XAXIVDMA_READ);
			if (blah==0){
				Status = XAxiVdma_StartParking(&vdma2, dispCtrl.curFrame, XAXIVDMA_READ);
				blah = 1;
			}



	return;

}
