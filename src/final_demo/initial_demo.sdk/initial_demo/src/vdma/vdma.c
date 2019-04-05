/*
 * vdma.c
 *
 *  Created on: Mar 13, 2016
 *      Author: Farshad
 */

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "vdma.h"

#define IMAGE_SIZE 1280*3
#define OFFSET_READ 1280*3
#define OFFSET_WRITE 1280*3
/* ------------------------------------------------------------ */
/*				Procedure Definitions							*/
/* ------------------------------------------------------------ */

/* ------------------------------------------------------------ */
/*				Procedure Read config					        */
/* ------------------------------------------------------------ */
int read_config(XAxiVdma *vdma,
				 XAxiVdma_DmaSetup *vdmaConfig,
				 XAxiVdma_FrameCounter *frame_count_config
				 )
{
	int Status;
	/*
		 * Configure the VDMA to access a frame with the same dimensions as the
		 * current mode
		 */
		vdmaConfig->VertSizeInput = 1;
		vdmaConfig->HoriSizeInput = IMAGE_SIZE;
	//	vdmaConfig.FixedFrameStoreAddr = 0;
		vdmaConfig->Stride = IMAGE_SIZE ;
		//xil_printf("FixedFrameStoreAddr %x\r\n", vdmaConfig->FixedFrameStoreAddr);

		/*
		 * Initialize the VDMA Read configuration struct
		 */
		vdmaConfig->FrameDelay = 0;
		vdmaConfig->EnableCircularBuf = 1;
		vdmaConfig->EnableSync = 0;
		vdmaConfig->PointNum = 0;
		vdmaConfig->EnableFrameCounter = 1;


		// Configure Frame counter
		frame_count_config->ReadFrameCount = 1;
		frame_count_config->WriteFrameCount = 0;
		frame_count_config->ReadDelayTimerCount = 0;
		frame_count_config->WriteDelayTimerCount = 0;
		Status = XAxiVdma_SetFrameCounter(vdma, frame_count_config);
		Status = XAxiVdma_DmaConfig(vdma, XAXIVDMA_READ, (vdmaConfig));
		//xil_printf("Read channel status is %d\r\n", Status);
		if (Status != XST_SUCCESS)
		{
			xil_printf("Read channel config failed %d\r\n", Status);
			return XST_FAILURE;
		}
		return XST_SUCCESS;
}

/* ------------------------------------------------------------ */
/*				Procedure Read from memory						*/
/* ------------------------------------------------------------ */
int dma_read_from_memory(int ind, XAxiVdma *vdma, XAxiVdma_DmaSetup *vdmaConfig, XAxiVdma_FrameCounter *frame_count_config, u8 *Frame_1)
{
	int Status;

	vdmaConfig->FrameStoreStartAddr[0] = (u32) (Frame_1 + ind*OFFSET_READ);


	Status = XAxiVdma_DmaSetBufferAddr(vdma, XAXIVDMA_READ,(vdmaConfig->FrameStoreStartAddr));

	if (Status != XST_SUCCESS)
	{
		xil_printf( "Read channel set buffer address failed %d\r\n", Status);
		return XST_FAILURE;
	}

	Status = XAxiVdma_DmaStart(vdma, XAXIVDMA_READ);
	if (Status != XST_SUCCESS)
	{
		xil_printf( "VDMA:Start read transfer failed %d\r\n", Status);
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}


/* ------------------------------------------------------------ */
/*				Procedure Write config					        */
/* ------------------------------------------------------------ */
int write_config(XAxiVdma *vdma,
				 XAxiVdma_DmaSetup *vdmaConfig_2,
				 XAxiVdma_FrameCounter *frame_count_config
				 )
{

	int Status;
	/*
	 * Configure the VDMA to access a frame with the same dimensions as the
	 * current mode
	 */
	vdmaConfig_2->VertSizeInput = 1;
	vdmaConfig_2->HoriSizeInput = IMAGE_SIZE;
//	vdmaConfig_2->FixedFrameStoreAddr = 0;
	vdmaConfig_2->Stride = IMAGE_SIZE;

	/*
	 * Initialize the VDMA Read configuration struct
	 */
	vdmaConfig_2->FrameDelay = 0;
	vdmaConfig_2->EnableCircularBuf = 1;
	vdmaConfig_2->EnableSync = 0;
	vdmaConfig_2->PointNum = 1;
	vdmaConfig_2->EnableFrameCounter = 1;
//	vdmaConfig_2->FixedFrameStoreAddr= 1;
//
//	// Configure Frame counter
//	frame_count_config->ReadFrameCount = 0;
//	frame_count_config->WriteFrameCount = 1;
//	frame_count_config->ReadDelayTimerCount = 0;
//	frame_count_config->WriteDelayTimerCount = 0;
//	Status = XAxiVdma_SetFrameCounter(vdma, frame_count_config);
	Status = XAxiVdma_DmaConfig(vdma, XAXIVDMA_WRITE, vdmaConfig_2);
	if (Status != XST_SUCCESS)
	{
		xil_printf( "Write channel config failed %d\r\n", Status);
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

/* ------------------------------------------------------------ */
/*				Procedure Write from memory						*/
/* ------------------------------------------------------------ */
int dma_write_to_memory(int ind, XAxiVdma *vdma, XAxiVdma_DmaSetup *vdmaConfig, XAxiVdma_FrameCounter *frame_count_config, u8 *Frame_1)
{
	int Status;

	vdmaConfig->FrameStoreStartAddr[0] = (u32) (Frame_1 + (ind)*OFFSET_WRITE);

	Status = XAxiVdma_DmaSetBufferAddr(vdma, XAXIVDMA_WRITE, vdmaConfig->FrameStoreStartAddr);
	if (Status != XST_SUCCESS)
	{
		xil_printf( "Write channel set buffer address failed %d\r\n", Status);
		return XST_FAILURE;
	}


	Status = XAxiVdma_DmaStart(vdma, XAXIVDMA_WRITE);
	if (Status != XST_SUCCESS)
	{
		xil_printf("Start Write transfer failed %d\r\n", Status);
		return XST_FAILURE;
	}


	return XST_SUCCESS;
}

/* ------------------------------------------------------------ */
/*				Procedure stop write vdma    				    */
/* ------------------------------------------------------------ */
int Stop_Dma_write(XAxiVdma *vdma)
{
	/*
	 * Stop the VDMA core
	 */
	XAxiVdma_DmaStop(vdma, XAXIVDMA_WRITE);
	while(XAxiVdma_IsBusy(vdma, XAXIVDMA_WRITE));
	if (XAxiVdma_GetDmaChannelErrors(vdma, XAXIVDMA_WRITE))
	{
		xil_printf("Clearing DMA errors...\r\n");
		XAxiVdma_ClearDmaChannelErrors(vdma, XAXIVDMA_WRITE, 0xFFFFFFFF);
		return XST_DMA_ERROR;
	}
	xil_printf("Stop DMA complete\r\n");
	return XST_SUCCESS;
}

/* ------------------------------------------------------------ */
/*				Procedure stop read vdma    				    */
/* ------------------------------------------------------------ */
int Stop_Dma_read(XAxiVdma *vdma)
{
	/*
	 * Stop the VDMA core
	 */
	XAxiVdma_DmaStop(vdma, XAXIVDMA_READ);
	while(XAxiVdma_IsBusy(vdma, XAXIVDMA_READ));
	if (XAxiVdma_GetDmaChannelErrors(vdma, XAXIVDMA_READ))
	{
		xil_printf("Clearing DMA errors...\r\n");
		XAxiVdma_ClearDmaChannelErrors(vdma, XAXIVDMA_READ, 0xFFFFFFFF);
		return XST_DMA_ERROR;
	}
	xil_printf("Stop DMA complete\r\n");
	return XST_SUCCESS;
}

/* ------------------------------------------------------------ */
/*				Procedure parking write vdma    				*/
/* ------------------------------------------------------------ */
int parking_write(XAxiVdma *vdma)
{
	int Status;
	Status = XAxiVdma_StartParking(vdma, 2, XAXIVDMA_WRITE);
	//xil_printf("Write channel parking status is %d\r\n", Status);
	if (Status != XST_SUCCESS)
	{
		xil_printf( "Unable to park the Write channel %d\r\n", Status);
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

/* ------------------------------------------------------------ */
/*				Procedure parking write vdma    				*/
/* ------------------------------------------------------------ */
int parking_read(XAxiVdma *vdma)
{
	int Status;
	Status = XAxiVdma_StartParking(vdma, 2, XAXIVDMA_READ);
	//xil_printf("Write channel parking status is %d\r\n", Status);
	if (Status != XST_SUCCESS)
	{
		xil_printf( "Unable to park the Read channel %d\r\n", Status);
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

int reset_dma_write(XAxiVdma *vdma){
	XAxiVdma_Reset(vdma, XAXIVDMA_WRITE);
}

int reset_dma_read(XAxiVdma *vdma){
	XAxiVdma_Reset(vdma, XAXIVDMA_READ);
}



