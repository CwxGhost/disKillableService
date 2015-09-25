#build in aosp
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE     := com_example_jnitest_NativeTest
LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libutils 

LOCAL_SRC_FILES  := com_example_jnitest_NativeTest.c
include $(BUILD_SHARED_LIBRARY)

#build in ndk-r9
#include $(CLEAR_VARS)
#
#LOCAL_MODULE := testcmd
#LOCAL_LDLIBS+= -L$(SYSROOT)/usr/lib -llog
#LOCAL_FORCE_STATIC_EXECUTABLE := true
#LOCAL_SRC_FILES := test.c
#include $(BUILD_EXECUTABLE)
