#include <stdio.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"

#include "xil_types.h"
#include "xstatus.h"
#include "xllfifo.h"
#include "xgpio.h"
#include "sleep.h"
#include "xparameters.h"
#include "oled.h"

#define fatalError(msg) throwFatalError(__PRETTY_FUNCTION__,msg)

#define OLED_VBAT 0x01
#define OLED_VDD 0x02
#define OLED_RES 0x04
#define OLED_DC 0x08

static void throwFatalError(const char *func,const char *msg) {
	printf("%s() : %s\r\n",func,msg);
	for(;;);
}

static void myDelayMs(int ms) {
	usleep(ms*1000);
}

u8 oled_font[]={
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x5f, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x03, 0x00, 0x03, 0x00, 0x00, 0x00,
		0x64, 0x3c, 0x26, 0x64, 0x3c, 0x26, 0x24, 0x00,
		0x26, 0x49, 0x49, 0x7f, 0x49, 0x49, 0x32, 0x00,
		0x42, 0x25, 0x12, 0x08, 0x24, 0x52, 0x21, 0x00,
		0x20, 0x50, 0x4e, 0x55, 0x22, 0x58, 0x28, 0x00,
		0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x1c, 0x22, 0x41, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00, 0x00,
		0x00, 0x15, 0x15, 0x0e, 0x0e, 0x15, 0x15, 0x00,
		0x00, 0x08, 0x08, 0x3e, 0x08, 0x08, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x50, 0x30, 0x00, 0x00, 0x00,
		0x00, 0x08, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00,
		0x40, 0x20, 0x10, 0x08, 0x04, 0x02, 0x01, 0x00,
		0x00, 0x3e, 0x41, 0x41, 0x41, 0x3e, 0x00, 0x00,
		0x00, 0x00, 0x41, 0x7f, 0x40, 0x00, 0x00, 0x00,
		0x00, 0x42, 0x61, 0x51, 0x49, 0x6e, 0x00, 0x00,
		0x00, 0x22, 0x41, 0x49, 0x49, 0x36, 0x00, 0x00,
		0x00, 0x18, 0x14, 0x12, 0x7f, 0x10, 0x00, 0x00,
		0x00, 0x27, 0x49, 0x49, 0x49, 0x71, 0x00, 0x00,
		0x00, 0x3c, 0x4a, 0x49, 0x48, 0x70, 0x00, 0x00,
		0x00, 0x43, 0x21, 0x11, 0x0d, 0x03, 0x00, 0x00,
		0x00, 0x36, 0x49, 0x49, 0x49, 0x36, 0x00, 0x00,
		0x00, 0x06, 0x09, 0x49, 0x29, 0x1e, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x52, 0x30, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x08, 0x14, 0x14, 0x22, 0x00, 0x00,
		0x00, 0x14, 0x14, 0x14, 0x14, 0x14, 0x14, 0x00,
		0x00, 0x00, 0x22, 0x14, 0x14, 0x08, 0x00, 0x00,
		0x00, 0x02, 0x01, 0x59, 0x05, 0x02, 0x00, 0x00,
		0x3e, 0x41, 0x5d, 0x55, 0x4d, 0x51, 0x2e, 0x00,
		0x40, 0x7c, 0x4a, 0x09, 0x4a, 0x7c, 0x40, 0x00,
		0x41, 0x7f, 0x49, 0x49, 0x49, 0x49, 0x36, 0x00,
		0x1c, 0x22, 0x41, 0x41, 0x41, 0x41, 0x22, 0x00,
		0x41, 0x7f, 0x41, 0x41, 0x41, 0x22, 0x1c, 0x00,
		0x41, 0x7f, 0x49, 0x49, 0x5d, 0x41, 0x63, 0x00,
		0x41, 0x7f, 0x49, 0x09, 0x1d, 0x01, 0x03, 0x00,
		0x1c, 0x22, 0x41, 0x49, 0x49, 0x3a, 0x08, 0x00,
		0x41, 0x7f, 0x08, 0x08, 0x08, 0x7f, 0x41, 0x00,
		0x00, 0x41, 0x41, 0x7F, 0x41, 0x41, 0x00, 0x00,
		0x30, 0x40, 0x41, 0x41, 0x3F, 0x01, 0x01, 0x00,
		0x41, 0x7f, 0x08, 0x0c, 0x12, 0x61, 0x41, 0x00,
		0x41, 0x7f, 0x41, 0x40, 0x40, 0x40, 0x60, 0x00,
		0x41, 0x7f, 0x42, 0x0c, 0x42, 0x7f, 0x41, 0x00,
		0x41, 0x7f, 0x42, 0x0c, 0x11, 0x7f, 0x01, 0x00,
		0x1c, 0x22, 0x41, 0x41, 0x41, 0x22, 0x1c, 0x00,
		0x41, 0x7f, 0x49, 0x09, 0x09, 0x09, 0x06, 0x00,
		0x0c, 0x12, 0x21, 0x21, 0x61, 0x52, 0x4c, 0x00,
		0x41, 0x7f, 0x09, 0x09, 0x19, 0x69, 0x46, 0x00,
		0x66, 0x49, 0x49, 0x49, 0x49, 0x49, 0x33, 0x00,
		0x03, 0x01, 0x41, 0x7f, 0x41, 0x01, 0x03, 0x00,
		0x01, 0x3f, 0x41, 0x40, 0x41, 0x3f, 0x01, 0x00,
		0x01, 0x0f, 0x31, 0x40, 0x31, 0x0f, 0x01, 0x00,
		0x01, 0x1f, 0x61, 0x14, 0x61, 0x1f, 0x01, 0x00,
		0x41, 0x41, 0x36, 0x08, 0x36, 0x41, 0x41, 0x00,
		0x01, 0x03, 0x44, 0x78, 0x44, 0x03, 0x01, 0x00,
		0x43, 0x61, 0x51, 0x49, 0x45, 0x43, 0x61, 0x00,
		0x00, 0x00, 0x7f, 0x41, 0x41, 0x00, 0x00, 0x00,
		0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x00,
		0x00, 0x00, 0x41, 0x41, 0x7f, 0x00, 0x00, 0x00,
		0x00, 0x04, 0x02, 0x01, 0x01, 0x02, 0x04, 0x00,
		0x00, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x00,
		0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x34, 0x4a, 0x4a, 0x4a, 0x3c, 0x40, 0x00,
		0x00, 0x41, 0x3f, 0x48, 0x48, 0x48, 0x30, 0x00,
		0x00, 0x3c, 0x42, 0x42, 0x42, 0x24, 0x00, 0x00,
		0x00, 0x30, 0x48, 0x48, 0x49, 0x3f, 0x40, 0x00,
		0x00, 0x3c, 0x4a, 0x4a, 0x4a, 0x2c, 0x00, 0x00,
		0x00, 0x00, 0x48, 0x7e, 0x49, 0x09, 0x00, 0x00,
		0x00, 0x26, 0x49, 0x49, 0x49, 0x3f, 0x01, 0x00,
		0x41, 0x7f, 0x48, 0x04, 0x44, 0x78, 0x40, 0x00,
		0x00, 0x00, 0x44, 0x7d, 0x40, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x40, 0x44, 0x3d, 0x00, 0x00, 0x00,
		0x41, 0x7f, 0x10, 0x18, 0x24, 0x42, 0x42, 0x00,
		0x00, 0x40, 0x41, 0x7f, 0x40, 0x40, 0x00, 0x00,
		0x42, 0x7e, 0x02, 0x7c, 0x02, 0x7e, 0x40, 0x00,
		0x42, 0x7e, 0x44, 0x02, 0x42, 0x7c, 0x40, 0x00,
		0x00, 0x3c, 0x42, 0x42, 0x42, 0x3c, 0x00, 0x00,
		0x00, 0x41, 0x7f, 0x49, 0x09, 0x09, 0x06, 0x00,
		0x00, 0x06, 0x09, 0x09, 0x49, 0x7f, 0x41, 0x00,
		0x00, 0x42, 0x7e, 0x44, 0x02, 0x02, 0x04, 0x00,
		0x00, 0x64, 0x4a, 0x4a, 0x4a, 0x36, 0x00, 0x00,
		0x00, 0x04, 0x3f, 0x44, 0x44, 0x20, 0x00, 0x00,
		0x00, 0x02, 0x3e, 0x40, 0x40, 0x22, 0x7e, 0x40,
		0x02, 0x0e, 0x32, 0x40, 0x32, 0x0e, 0x02, 0x00,
		0x02, 0x1e, 0x62, 0x18, 0x62, 0x1e, 0x02, 0x00,
		0x42, 0x62, 0x14, 0x08, 0x14, 0x62, 0x42, 0x00,
		0x01, 0x43, 0x45, 0x38, 0x05, 0x03, 0x01, 0x00,
		0x00, 0x46, 0x62, 0x52, 0x4a, 0x46, 0x62, 0x00,
		0x00, 0x00, 0x08, 0x36, 0x41, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x7f, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x41, 0x36, 0x08, 0x00, 0x00,
		0x00, 0x18, 0x08, 0x08, 0x10, 0x10, 0x18, 0x00,
		0xAA, 0x55, 0xAA, 0x55, 0xAA, 0x55, 0xAA, 0x55
};

u8 *oled_fontGet(char c) {
	return oled_font + (u32)(c<<3);
}

int oled_init(oled_config *pDevice, u32 deviceId, u32 gpioDeviceId) {
	pDevice->spiFifoWordsize = 4;
	pDevice->deviceId = deviceId;
	pDevice->gpioDeviceId = gpioDeviceId;

	XLlFifo_Config *pConfig = XLlFfio_LookupConfig(deviceId);
	int xStatus = XLlFifo_CfgInitialize(&pDevice->spiFifoController,pConfig,pConfig->BaseAddress);
	if(XST_SUCCESS != xStatus) {
		fatalError("Could not initialize FIFO");
	}

	// Check for the Reset value
	u32 Status = XLlFifo_Status(&pDevice->spiFifoController);
	XLlFifo_IntClear(&pDevice->spiFifoController,0xffffffff);
	Status = XLlFifo_Status(&pDevice->spiFifoController);
	if(Status != 0) {
		fatalError("Could not reset FIFO");
	}

    xStatus = XGpio_Initialize(&pDevice->gpio,pDevice->gpioDeviceId);
    if (xStatus!=XST_SUCCESS) {
    	fatalError("Could not initialize GPIO");
    }

    XGpio_DiscreteWrite(&pDevice->gpio,1, OLED_VBAT + OLED_VDD + OLED_RES );
    myDelayMs(100);
    XGpio_DiscreteWrite(&pDevice->gpio,1, OLED_VBAT + OLED_RES );
    myDelayMs(1);
    oled_sendSPI(pDevice, 0, 0xAE);
    XGpio_DiscreteWrite(&pDevice->gpio,1, OLED_VBAT );
    myDelayMs(1);
    XGpio_DiscreteWrite(&pDevice->gpio,1, OLED_VBAT + OLED_RES );
    myDelayMs(1);
    oled_sendSPI(pDevice, 0, 0x8D);
    oled_sendSPI(pDevice, 0, 0x14);
    oled_sendSPI(pDevice, 0, 0xD9);
    oled_sendSPI(pDevice, 0, 0xF1);
    XGpio_DiscreteWrite(&pDevice->gpio,1, OLED_RES );
    myDelayMs(100);
    oled_sendSPI(pDevice, 0, 0x81);
    oled_sendSPI(pDevice, 0, 0x0F);
    oled_sendSPI(pDevice, 0, 0xA0);
    oled_sendSPI(pDevice, 0, 0xC0);
    oled_sendSPI(pDevice, 0, 0xDA);
    oled_sendSPI(pDevice, 0, 0x00);
    oled_sendSPI(pDevice, 0, 0xAF);
    //oled_send(pDevice, 0, 0xA5); // DEBUG

    oled_clear(pDevice);

    return 0;
}

void oled_sendSPI(oled_config *pDevice, int isData, u8 wdata) {
	if (isData) {
		XGpio_DiscreteWrite(&pDevice->gpio,1,XGpio_DiscreteRead(&pDevice->gpio,1) | OLED_DC);
	}
	else {
		XGpio_DiscreteWrite(&pDevice->gpio,1,XGpio_DiscreteRead(&pDevice->gpio,1) & ~OLED_DC);
	}
	XLlFifo_TxPutWord(&pDevice->spiFifoController, wdata & 0xFF);
	XLlFifo_iTxSetLen(&pDevice->spiFifoController, 1 * pDevice->spiFifoWordsize);
	while(XLlFifo_RxOccupancy(&pDevice->spiFifoController)!=1) {}
	XLlFifo_RxGetWord(&pDevice->spiFifoController);
    //myDelayMs(1);
}

void oled_sendChar(oled_config *pDevice, char c) {
	u8 *pFont = oled_fontGet(c);
	for(int i=0;i<8;++i) {
		oled_sendSPI(pDevice, 1, pFont[i]);
	}
}

void oled_setPage(oled_config *pDevice, u8 page) {
	oled_sendSPI(pDevice, 0, 0x22);
	oled_sendSPI(pDevice, 0, page);
	oled_sendSPI(pDevice, 0, 0x00);
	oled_sendSPI(pDevice, 0, 0x10);
}

void oled_clear(oled_config *pDevice) {
    for(u8 page=0;page<4;++page) {
        oled_setPage(pDevice,page);
		for(int i=0;i<16;++i) {
			oled_sendChar(pDevice, ' ');
		}
    }
}

void oled_print(oled_config *pDevice, char *src) {
	u8 page = 0;
	int charCount = 0;

	oled_clear(pDevice);
	oled_setPage(pDevice,page);
	while(*src!=0) {
		if (*src=='\n') {
			while (charCount<16) {
				oled_sendChar(pDevice, ' ');
				++charCount;
			}
			charCount=0;
			oled_setPage(pDevice,++page);
		}
		else {
			oled_sendChar(pDevice, *src);
			++charCount;
		}
		++src;
	}
}

