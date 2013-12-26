LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := SmallSystemStub
LOCAL_OVERRIDES_PACKAGES := \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    VisualizationWallpapers \
    PhaseBeam \
    LiveWallpapers \
    LiveWallpapersPicker \
    Calculator \
    Calendar \
    CMFileManager \
    DeskClock \
    Apollo \
    Basic \
    VideoEditor \
    VoiceDialer \
    VoicePlus \
    SoundRecorder \
    ZeroXBenchmark \
    SpareParts \
    LockClock \
    Development \
    Email \
    WAPPushManager \
    MusicFX \
    Email2 \
    Exchange2 \
    QuickSearchBox \
    PinyinIME \
    OpenWnn \
    libWnnEngDic \
    libWnnJpnDic \
    libwnndict \
    libfwdlockengine \
    rsync

LOCAL_SDK_VERSION := current

include $(BUILD_PACKAGE)
