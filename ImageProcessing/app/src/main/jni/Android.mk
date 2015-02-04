LOCAL_PATH := $(call my-dir)
SYSROOT := /home/howard/Android/Ndk/platforms/android-19/arch-arm

#######################################
# Including the FastCV Library
#########

include $(CLEAR_VARS)
LOCAL_MODULE    := libfastcv
LOCAL_SRC_FILES := libfastcv.a
include $(PREBUILT_STATIC_LIBRARY)


######################################
# Flags and dependencies for our build
###########

include $(CLEAR_VARS)

OPENGLES_LIB  := -lGLESv2
OPENGLES_DEF  := -DUSE_OPENGL_ES_2_0

LOCAL_MODULE    := libImageProcessingC
LOCAL_CFLAGS    := -Werror
LOCAL_SRC_FILES := render.cpp capture.cpp
LOCAL_C_INCLUDES := $(SYSROOT)/usr/include
LOCAL_STATIC_LIBRARIES := libfastcv
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog $(OPENGLES_LIB) -ldl -ljnigraphics
#LOCAL_SHARED_LIBRARIES := liblog libGLESv2 libandroid libdl libjnigraphics

include $(BUILD_SHARED_LIBRARY)
