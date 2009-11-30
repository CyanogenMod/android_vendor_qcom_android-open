LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    stagefright_surface_output_msm72xx.cpp \
    QComHardwareRenderer.cpp

LOCAL_CFLAGS := $(PV_CFLAGS_MINUS_VISIBILITY)

LOCAL_C_INCLUDES:= \
        $(TOP)/external/opencore/extern_libs_v2/khronos/openmax/include

LOCAL_SHARED_LIBRARIES :=       \
        libbinder               \
        libutils                \
        libcutils               \
        libui                   \

LOCAL_MODULE := libstagefrighthw

LOCAL_PRELINK_MODULE:= false

include $(BUILD_SHARED_LIBRARY)

