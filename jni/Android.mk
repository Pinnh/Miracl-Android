LOCAL_PATH:=$(call my-dir)


#LOCAL_C_INCLUDES := $(NCNN_INCLUDE_PATH)/include

LOCAL_MODULE := miracl
LOCAL_MODULE_FILENAME:=libmiracl

MY_CPP_LIST := $(wildcard $(LOCAL_PATH)/mr*.c)
 
LOCAL_SRC_FILES := $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

				   

LOCAL_CFLAGS := -O2 -fvisibility=hidden -fomit-frame-pointer -fstrict-aliasing -ffunction-sections -fdata-sections -ffast-math
LOCAL_CPPFLAGS := -O2 -fvisibility=hidden -fvisibility-inlines-hidden -fomit-frame-pointer -fstrict-aliasing -ffunction-sections -fdata-sections -ffast-math
LOCAL_LDFLAGS += -Wl,--gc-sections

LOCAL_CFLAGS += -fopenmp
LOCAL_CPPFLAGS += -fopenmp
LOCAL_LDFLAGS += -fopenmp

LOCAL_LDLIBS := -lz -llog -ljnigraphics

include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_STATIC_LIBRARY)

