
ifeq (${KERNELRELEASE},)
	KERNEL_SOURCE := /usr/src/linux
	PWD := $(shell pwd)
default:
	${MAKE} -C ${KERNEL_SOURCE} SUBDIRS=${PWD} modules

clean:
	${MAKE} -C ${KERNEL_SOURCE} SUBDIRS=${PWD} clean
else
	obj-m := simple.o
endif

