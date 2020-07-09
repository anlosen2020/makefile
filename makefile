.PHONY:all clean install uninstall
export BUILD_ROOT=$(shell pwd)
export HEAD_PATH=$(BUILD_ROOT)/inc
all:
	make -C lcd 
	make -C usb
	make -C media
	make -C math
	make -C app
clean:
	rm -fr app/dep
	rm -rf app/link_obj
	rm -fr app/mp3
	rm -fr app/lib_obj
	rm -fr lib/*.a lib/*.so
	rm MP3
install:
	cp mp3 /usr/bin
	cp lib/libmath.so /usr/lib
uninstall:
	rm -f /usr/bin/mp3
	rm -f /usr/bin/libmath.so
