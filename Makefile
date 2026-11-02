BUILDROOT_DIR = $(CURDIR)/buildroot

BR2_DL_DIR ?= $(HOME)/.buildroot-dl
BR2_CCACHE_DIR ?= $(HOME)/.buildroot-ccache
OUTPUT_DIR := $(CURDIR)/output/

BR2_MAKE = $(MAKE) -C $(BUILDROOT_DIR) \
		BR2_DL_DIR=$(BR2_DL_DIR) \
		BR2_CCACHE_DIR=$(BR2_CCACHE_DIR) \
		O=$(OUTPUT_DIR)

.PHONY: all

all:
	$(BR2_MAKE)

%:
	$(BR2_MAKE) $@
