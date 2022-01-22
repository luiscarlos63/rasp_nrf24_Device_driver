obj-m := my_nrf24.o
my_nrf24-objs:=gpio.o nrf.o radio.o
KDIR := /home/luiscarlos/buildroot/buildroot-2021.02.5/output/build/linux-custom
ARCH ?= arm
CROSS_COMPILE ?= arm-buildroot-linux-gnueabihf-

export ARCH CROSS_COMPILE


KBUILD_TARGETS	:= clean help modules modules_install

.PHONY: all $(KBUILD_TARGETS)

all: modules
$(KBUILD_TARGETS):
	#$(MAKE) -C $(KDIR) M=$(shell pwd) $@ EXTRA_CFLAGS="$(MY_CFLAGS)"
	$(MAKE) -C $(KDIR) M=$(shell pwd) $@
