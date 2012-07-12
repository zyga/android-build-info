# Copyright (c) Zygmunt Krynicki 2012
# Extra rules to inject an appropriate 'build info'
# file alongside system tarball.
#
# For details see: https://blueprints.launchpad.net/linaro-android/+spec/include-build-info-txt
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := build-info 
LOCAL_MODULE_TAGS :=

# Use the specified BUILD-INFO.txt
BUILD_INFO_FILE ?= $(LOCAL_PATH)/BUILD-INFO.txt

# We want the BUILD-INFO.txt right next to the all
# the tarballs in PRODUCT_OUT directory.
INSTALLED_BUILD_INFO_TARGET = $(PRODUCT_OUT)/BUILD-INFO.txt

# We want to copy appropriate BUILD-INFO file
# alongside where the system.tar.bz2 file would
# be at./
$(INSTALLED_BUILD_INFO_TARGET): $(BUILD_INFO_FILE) | $(ACP)
	$(ACP) $^ $@

# Inject a dependency on systemtarball so that
# we'll copy the BUILD_INFO file without having
# to change how people call the top-level makefile
# NOTE: this choice is arbitrary, we could have,
# as well, injected the dependency on boottarball
# or userdatatarball.
systemtarball: $(INSTALLED_BUILD_INFO_TARGET)
