# libyaml/jni/Android.mk

LOCAL_PATH := $(call my-dir)/../../src
include $(CLEAR_VARS)
 
LOCAL_CFLAGS := -DYAML_VERSION_STRING=\"0.1.4\" \
				-DYAML_VERSION_MAJOR=0 \
				-DYAML_VERSION_MINOR=1 \
				-DYAML_VERSION_PATCH=4 \
				-I"$(LOCAL_PATH)/../include"

LOCAL_MODULE     := libyaml                 # name of your module
LOCAL_LDLIBS     := -L$(SYSROOT)/usr/lib    # libraries to link against
LOCAL_SRC_FILES  := yaml_private.h api.c reader.c scanner.c \
					parser.c loader.c writer.c emitter.c dumper.c

#include $(BUILD_SHARED_LIBRARY)            # uncomment this line to build a shared library
include $(BUILD_STATIC_LIBRARY)           # here, we are building a static library