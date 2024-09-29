#ifndef SRC_OLED_H_
#define SRC_OLED_H_

#include "xllfifo.h"
#include "xgpio.h"

typedef struct
{
	u32 deviceId;
	XLlFifo spiFifoController;
	int spiFifoWordsize;

	XGpio gpio;
	u32 gpioDeviceId;
} oled_config;

int oled_init(oled_config *pDevice, u32 deviceId, u32 gpioDeviceId);
void oled_sendSPI(oled_config *pDevice, int isData, u8 wdata);
u8 *oled_fontGet(char c);
void oled_sendChar(oled_config *pDevice, char c);
void oled_setPage(oled_config *pDevice, u8 page);
void oled_clear(oled_config *pDevice);
void oled_print(oled_config *pDevice, char *src);

#endif /* SRC_OLED_H_ */
