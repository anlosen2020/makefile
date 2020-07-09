#include <stdio.h>
#include "lcd.h"
#include "usb.h"
#include "media.h"
#include "math.h"
int main()
{
	printf("MP3 player init ....\n");
	LCD_init();
	USB_init();
	MEDIA_init();
	MATH_init();
	return 0;
}
