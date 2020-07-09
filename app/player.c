#include <stdio.h>
#include "lcd.h"
#include "usb.h"
#include "media.h"
#include "math.h"
#include "jpg.h"
int main()
{
	printf("MP3 player init ....\n");
	LCD_init();
	USB_init();
	MEDIA_init();
	MATH_init();
	JPG_init();
	return 0;
}
