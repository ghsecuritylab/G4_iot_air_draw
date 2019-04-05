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

#include "sleep.h"


#include <stdio.h>

#include "xparameters.h"
#include "netif/xadapter.h"

#include "platform.h"
#include "platform_config.h"
#if defined (__arm__) || defined(__aarch64__)
#include "xil_printf.h"
#endif

#include "lwip/tcp.h"
#include "xil_cache.h"

//LWIP include files
#include "lwip/ip_addr.h"
#include "lwip/err.h"
#include "lwip/inet.h"
#if LWIP_IPV6==1
#include "lwip/ip.h"
#else
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif
#endif

/* defined by each RAW mode application */
void print_app_header();
int start_application();
int transfer_data();
void tcp_fasttmr(void);
void tcp_slowtmr(void);
err_t tcp_send_data(char* message);

//Function prototypes for callbacks
int setup_client_conn();
static err_t tcp_client_connected(void *arg, struct tcp_pcb *tpcb, err_t err);
static err_t tcp_client_recv(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err);
static err_t tcp_client_sent(void *arg, struct tcp_pcb *tpcb, u16_t len);
static void tcp_client_err(void *arg, err_t err);
static void tcp_client_close(struct tcp_pcb *pcb);

/* missing declaration in lwIP */
void lwip_init();

#if LWIP_IPV6==0
#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif

//TCP Network Params
#define SRC_MAC_ADDR {0x00, 0x0a, 0x35, 0x00, 0x01, 0x02}
#define SRC_IP4_ADDR "192.168.1.10"
#define IP4_NETMASK "255.255.255.0"
#define IP4_GATEWAY "192.168.1.1"
#define SRC_PORT 7

#define DEST_IP4_ADDR  "192.168.0.11"
#define DEST_PORT 9090

#define TCP_SEND_BUFSIZE 20

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *app_netif;
struct netif *echo_netif;
static struct tcp_pcb *c_pcb;
char is_connected;

#if LWIP_IPV6==1
void print_ip6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %x:%x:%x:%x:%x:%x:%x:%x\n\r",
			IP6_ADDR_BLOCK1(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK2(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK3(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK4(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK5(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK6(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK7(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK8(&ip->u_addr.ip6));

}
#else
void
print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void
print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}
#endif


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


int LWIP_Init(){
	//Varibales for IP parameters
	#if LWIP_IPV6==0
		ip_addr_t ipaddr, netmask, gw;
	#endif

		//The mac address of the board. this should be unique per board
		unsigned char mac_ethernet_address[] = SRC_MAC_ADDR;

		//Network interface
		app_netif = &server_netif;

		//Initialize platform
		//init_platform();

		//Defualt IP parameter values
	#if LWIP_IPV6==0
	#if LWIP_DHCP==1
	    ipaddr.addr = 0;
		gw.addr = 0;
		netmask.addr = 0;
	#else
		(void)inet_aton(SRC_IP4_ADDR, &ipaddr);
		(void)inet_aton(IP4_NETMASK, &netmask);
		(void)inet_aton(IP4_GATEWAY, &gw);
	#endif
	#endif

		//LWIP initialization
		lwip_init();

		//Setup Network interface and add to netif_list
	#if (LWIP_IPV6 == 0)
		if (!xemac_add(app_netif, &ipaddr, &netmask,
							&gw, mac_ethernet_address,
							PLATFORM_EMAC_BASEADDR)) {
			xil_printf("Error adding N/W interface\n");
			return -1;
		}
	#else
		if (!xemac_add(app_netif, NULL, NULL, NULL, mac_ethernet_address,
							PLATFORM_EMAC_BASEADDR)) {
			xil_printf("Error adding N/W interface\n");
			return -1;
		}
		app_netif->ip6_autoconfig_enabled = 1;

		netif_create_ip6_linklocal_address(app_netif, 1);
		netif_ip6_addr_set_state(app_netif, 0, IP6_ADDR_VALID);

	#endif
		netif_set_default(app_netif);

		//Now enable interrupts
		platform_enable_interrupts();

		//Specify that the network is up
		netif_set_up(app_netif);

	#if (LWIP_IPV6 == 0)
	#if (LWIP_DHCP==1)
		/* Create a new DHCP client for this interface.
		 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
		 * the predefined regular intervals after starting the client.
		 */
		dhcp_start(app_netif);
		dhcp_timoutcntr = 24;

		while(((app_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
			xemacif_input(app_netif);

		if (dhcp_timoutcntr <= 0) {
			if ((app_netif->ip_addr.addr) == 0) {
				xil_printf("DHCP Timeout\n");
				xil_printf("Configuring default IP of %s\n", SRC_IP4_ADDR);
				(void)inet_aton(SRC_IP4_ADDR, &(app_netif->ip_addr));
				(void)inet_aton(IP4_NETMASK, &(app_netif->netmask));
				(void)inet_aton(IP4_GATEWAY, &(app_netif->gw));
			}
		}

		ipaddr.addr = app_netif->ip_addr.addr;
		gw.addr = app_netif->gw.addr;
		netmask.addr = app_netif->netmask.addr;
	#endif
	#endif

		//Print connection settings
	#if (LWIP_IPV6 == 0)
		print_ip_settings(&ipaddr, &netmask, &gw);
	#else
		print_ip6("Board IPv6 address ", &app_netif->ip6_addr[0].u_addr.ip6);
	#endif

	//Setup connection
	setup_client_conn();
	return 0;
}


/* ------------------------------------------------------------ */
/*				Functions										*/
/* ------------------------------------------------------------ */

int main(void)
{
	Xil_ICacheEnable();
	Xil_DCacheEnable();
	DemoInitialize();

	LWIP_Init();

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
	INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG1_OFFSET, 150);
	INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG2_OFFSET, 1);

	INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG3_OFFSET, 1280);
	INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG4_OFFSET, 720);
	INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG5_OFFSET, 1);
	INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG5_OFFSET, 0);
	//LED_DETECT_mWriteReg(LED_DETECT_BASE_ADDR, LED_DETECT_S00_AXI_SLV_REG3_OFFSET, 220);//red
	//LED_DETECT_mWriteReg(LED_DETECT_BASE_ADDR, LED_DETECT_S00_AXI_SLV_REG4_OFFSET, 220);//green
	//LED_DETECT_mWriteReg(LED_DETECT_BASE_ADDR, LED_DETECT_S00_AXI_SLV_REG5_OFFSET, 100);//other

	//initialize the gesture detection buffers
	reset_buffers();

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
		while (XUartLite_IsReceiveEmpty(UART_BASEADDR) && !fRefresh){
			if (TcpFastTmrFlag) {
				tcp_fasttmr();
				TcpFastTmrFlag = 0;
			}
			if (TcpSlowTmrFlag) {
				tcp_slowtmr();
				TcpSlowTmrFlag = 0;
			}
			xemacif_input(app_netif);
		}
		XGpio_DiscreteRead(GpioPtr, 2);

		// if I uncomment this two lines out, weird things happen
		//INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG5_OFFSET, 1);
		//INPUT_FROM_MB_EXTENDED_mWriteReg(MB_BASE_ADDR,INPUT_FROM_MB_EXTENDED_S00_AXI_SLV_REG5_OFFSET, 0);

		// enable the IP
		// here might be important?
		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}
		xemacif_input(app_netif);
		//control vdmas
		for (i = 0; i < 720; i++){ //720 = number of rows
			//read row into IP
			dma_read_from_memory(i,&vdma2,&vdma2Config_1,&frame_count_config_1,pFrames[0]);

			//sleep a little
			for(j=0; j<300; j++);

			//write row from IP to DDR
			while(dma_write_to_memory(i,&vdma2,&vdma2Config_2,&frame_count_config_2,pFrames[1]) == XST_FAILURE);
		}
		tcp_send_data("GET");
		//read the xy values from IP for both colours and separate the x and y values
		//int rxy, gxy, rx, ry, gx, gy;

		/* Revceive the Data Stream */
		u32 receive_int[2];
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

int setup_client_conn()
{
	struct tcp_pcb *pcb;
	err_t err;
	ip_addr_t remote_addr;

	xil_printf("Setting up client connection\n");

#if LWIP_IPV6==1
	remote_addr.type = IPADDR_TYPE_V6;
	err = inet6_aton(DEST_IP6_ADDR, &remote_addr);
#else
	err = inet_aton(DEST_IP4_ADDR, &remote_addr);
#endif

	if (!err) {
		xil_printf("Invalid Server IP address: %d\n", err);
		return -1;
	}

	//Create new TCP PCB structure
	pcb = tcp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\n");
		return -1;
	}

	//Bind to specified @port
	err = tcp_bind(pcb, IP_ANY_TYPE, SRC_PORT);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n", SRC_PORT, err);
		return -2;
	}

	//Connect to remote server (with callback on connection established)
	err = tcp_connect(pcb, &remote_addr, DEST_PORT, tcp_client_connected);
	if (err) {
		xil_printf("Error on tcp_connect: %d\n", err);
		tcp_client_close(pcb);
		return -1;
	}

	is_connected = 0;

	xil_printf("Waiting for server to accept connection\n");

	return 0;
}

static void tcp_client_close(struct tcp_pcb *pcb)
{
	err_t err;

	xil_printf("Closing Client Connection\n");

	if (pcb != NULL) {
		tcp_sent(pcb, NULL);
		tcp_recv(pcb,NULL);
		tcp_err(pcb, NULL);
		err = tcp_close(pcb);
		if (err != ERR_OK) {
			/* Free memory with abort */
			tcp_abort(pcb);
		}
	}
}

static err_t tcp_client_connected(void *arg, struct tcp_pcb *tpcb, err_t err)
{
	if (err != ERR_OK) {
		tcp_client_close(tpcb);
		xil_printf("Connection error\n");
		return err;
	}

	xil_printf("Connection to server established\n");

	//Store state (for callbacks)
	c_pcb = tpcb;
	is_connected = 1;

	//Set callback values & functions
	tcp_arg(c_pcb, NULL);
	tcp_recv(c_pcb, tcp_client_recv);
	tcp_sent(c_pcb, tcp_client_sent);
	tcp_err(c_pcb, tcp_client_err);



	//ADD CODE HERE to do when connection established

//	//Just send a single packet
//	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;
//	char send_buf[TCP_SEND_BUFSIZE];
//	u32_t i;
//
//	for(i = 0; i < TCP_SEND_BUFSIZE-1; i = i + 1)
//	{
//		send_buf[i] = i+'a';
//	}
//	send_buf[TCP_SEND_BUFSIZE-1] = '\n';
//
//	//Loop until enough room in buffer (should be right away)
//	while (tcp_sndbuf(c_pcb) < TCP_SEND_BUFSIZE);
//
//	//Enqueue some data to send
//	err = tcp_write(c_pcb, send_buf, TCP_SEND_BUFSIZE, apiflags);
//	if (err != ERR_OK) {
//		xil_printf("TCP client: Error on tcp_write: %d\n", err);
//		return err;
//	}
//
//	//send the data packet
//	err = tcp_output(c_pcb);
//	if (err != ERR_OK) {
//		xil_printf("TCP client: Error on tcp_output: %d\n",err);
//		return err;
//	}
//
//	xil_printf("Packet data sent\n");
//
//	//END OF ADDED CODE



	return ERR_OK;
}

static err_t tcp_client_recv(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
{
	//If no data, connection closed
	if (!p) {
		xil_printf("No data received\n");
		tcp_client_close(tpcb);
		return ERR_OK;
	}



	//ADD CODE HERE to do on packet reception

	//Print message
	xil_printf("Packet received, %d bytes\n", p->tot_len);

	//Print packet contents to terminal
	char* packet_data = (char*) malloc(p->tot_len);
	pbuf_copy_partial(p, packet_data, p->tot_len, 0); //Note - inefficient way to access packet data
	u32_t i;

	for(i = 0; i < p->tot_len; i = i + 1)
		putchar(packet_data[i]);
	packet_data[i] = '\0';


	xil_printf("Packet data, %s\n", packet_data);

	//END OF ADDED CODE



	//Indicate done processing
	tcp_recved(tpcb, p->tot_len);

	//Free the received pbuf
	pbuf_free(p);

	return 0;
}

static err_t tcp_client_sent(void *arg, struct tcp_pcb *tpcb, u16_t len)
{


	//ADD CODE HERE to do on packet acknowledged

	//Print message
	xil_printf("Packet sent successfully, %d bytes\n", len);

	//END OF ADDED CODE



	return 0;
}

static void tcp_client_err(void *arg, err_t err)
{
	LWIP_UNUSED_ARG(err);
	tcp_client_close(c_pcb);
	c_pcb = NULL;
	xil_printf("TCP connection aborted\n");
}

err_t tcp_send_data(char* message)
{
	err_t err;

	//Just send a single packet
	u8_t apiflags = TCP_WRITE_FLAG_COPY | TCP_WRITE_FLAG_MORE;

	//Loop until enough room in buffer (should be right away)
	while (tcp_sndbuf(c_pcb) < TCP_SEND_BUFSIZE);

	//Enqueue some data to send
	err = tcp_write(c_pcb, message, strlen(message), apiflags);
	if (err != ERR_OK) {
		xil_printf("TCP client: Error on tcp_write: %d\n", err);
		return err;
	}

	//send the data packet
	err = tcp_output(c_pcb);
	if (err != ERR_OK) {
		xil_printf("TCP client: Error on tcp_output: %d\n",err);
		return err;
	}

	xil_printf("Packet data sent\n");

	return ERR_OK;
}
