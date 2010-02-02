LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# Set up the OpenCore variables.
include external/opencore/Config.mk
LOCAL_C_INCLUDES := $(PV_INCLUDES)

ifneq (, $(filter msm7201a_ffa msm7201a_surf msm7627_ffa msm7627_surf qsd8250_ffa qsd8250_surf, $(TARGET_PRODUCT)))
  LOCAL_SRC_FILES := android_surface_output_msm72xx.cpp
endif
ifneq (, $(filter msm7630_surf, $(TARGET_PRODUCT)))
  LOCAL_SRC_FILES := android_surface_output_msm7x30.cpp
endif


LOCAL_CFLAGS := $(PV_CFLAGS_MINUS_VISIBILITY)

LOCAL_SHARED_LIBRARIES := \
    libutils \
    libbinder \
    libcutils \
    libui \
    libhardware\
    libandroid_runtime \
    libmedia \
    libskia \
    libopencore_common \
    libicuuc \
    libopencore_player

LOCAL_MODULE := libopencorehw

LOCAL_LDLIBS += 

include $(BUILD_SHARED_LIBRARY)
