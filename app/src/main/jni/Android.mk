LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := HelloMachine
LOCAL_NATIVE_SRC_DIR := ./
LOCAL_SRC_FILES += \
    $(LOCAL_NATIVE_SRC_DIR)Greeter.cpp
LOCAL_CPP_EXTENSION += .cxx .cpp .cc

LOCAL_C_INCLUDES += $(NDK_ROOT)/sources/cxx-stl/gnu-libstdc++/4.8/include
LOCAL_C_INCLUDES += $(NDK_ROOT)/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a/include
LOCAL_C_INCLUDES += $(NDK_ROOT)//platforms/android-21/arch-arm/usr/include

LOCAL_CFLAGS += -mfloat-abi=softfp -mfpu=neon -march=armv7
LOCAL_CFLAGS += -O3 -ftree-vectorize -mvectorize-with-neon-quad
LOCAL_CFLAGS += -O3 -fopenmp
LOCAL_CFLAGS += -DDONTUSE_PYTHON -DANDROID
LOCAL_CFLAGS += -std=c++11

LOCAL_LDFLAGS += -O3 -fopenmp
LOCAL_LDFLAGS += -ljnigraphics
LOCAL_LDLIBS += -lGLESv2 -llog -landroid -lz
LOCAL_LDLIBS += $(NDK_ROOT)/sources/cxx-stl/gnu-libstdc++/4.8/libs/armeabi-v7a/libgnustl_static.a

include $(BUILD_SHARED_LIBRARY)