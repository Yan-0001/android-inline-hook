LOCAL_PATH := $(call my-dir)

SH_SRC_FILES := $(wildcard $(LOCAL_PATH)/*.c) \
                $(wildcard $(LOCAL_PATH)/arch/arm64/*.c) \
                $(wildcard $(LOCAL_PATH)/arch/arm64/*.S) \
                $(wildcard $(LOCAL_PATH)/common/*.c) \
                $(wildcard $(LOCAL_PATH)/third_party/*/*.c)

include $(CLEAR_VARS)
LOCAL_MODULE := shadowhook
LOCAL_SRC_FILES := $(SH_SRC_FILES:$(LOCAL_PATH)/%=%)
LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_PATH)/include \
                    $(LOCAL_PATH)/arch/arm64 \
                    $(LOCAL_PATH)/common \
                    $(LOCAL_PATH)/third_party/xdl \
                    $(LOCAL_PATH)/third_party/bsd \
                    $(LOCAL_PATH)/third_party/lss

LOCAL_CFLAGS := \
    -O3 \
    -flto \
    -w \
    -Wno-everything \
    -Wno-error \
    -DNDEBUG \
    -g0 \

LOCAL_CPPFLAGS := \
    $(LOCAL_CFLAGS) \
    -std=c++26 \

LOCAL_LDFLAGS := \

include $(BUILD_STATIC_LIBRARY)