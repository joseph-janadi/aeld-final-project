BUILDROOT_DIR = $(CURDIR)/buildroot

BR2_DL_DIR ?= $(HOME)/.buildroot-dl
BR2_CCACHE_DIR ?= $(HOME)/.buildroot-ccache
BR2_EXTERNAL := $(CURDIR)/br2-external-temp-controller
OUTPUT_DIR := $(CURDIR)/output/

BR2_DEFCONFIG := $(BR2_EXTERNAL)/configs/rpi_defconfig

BR2_MAKE = $(MAKE) -C $(BUILDROOT_DIR) \
		BR2_DL_DIR=$(BR2_DL_DIR) \
		BR2_CCACHE_DIR=$(BR2_CCACHE_DIR) \
		BR2_EXTERNAL=$(BR2_EXTERNAL) \
		O=$(OUTPUT_DIR)

.PHONY: all

all:
	$(BR2_MAKE)

defconfig savedefconfig:
	$(BR2_MAKE) BR2_DEFCONFIG=$(BR2_DEFCONFIG) $@

%:
	$(BR2_MAKE) $@
