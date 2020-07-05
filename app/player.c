#include <stdio.h>
#include "../lcd/lcd.h"
#include "../usb/usb.h"
#include "../media/media.h"
int main()
{
	printf("MP3 player init ....\n");
	LCD_init();
	USB_init();
	MEDIA_init();
	return 0;
}
