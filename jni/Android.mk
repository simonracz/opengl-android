LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := opengl-android
LOCAL_CPPFLAGS  := -std=c++11
LOCAL_SRC_FILES := main.cpp \
				   Engine.cpp
#LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv2
LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv1_CM
LOCAL_STATIC_LIBRARIES := android_native_app_glue

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)