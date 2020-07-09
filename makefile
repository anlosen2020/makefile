.PHONY:all clean
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
	rm -fr lib
	rm MP3
