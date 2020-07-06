.PHONY:all clean
all:
	make -C lcd 
	make -C usb
	make -C media
	make -C app
clean:
	rm -fr app/dep
	rm -rf app/link_obj
	rm -fr app/mp3
