#include <stdio.h>
#include "lcd.h"
#include "usb.h"

int main()
{
	printf("MP3 player init ....\n");
	LCD_init();
	USB_init();
	return 0;
}
