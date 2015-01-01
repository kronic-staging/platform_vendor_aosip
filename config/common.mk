PRODUCT_BRAND ?= androidx

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.config.ringtone=Orion.ogg \
    ro.config.notification_sound=tweeters.ogg \
    ro.config.alarm_alert=Krypton.ogg \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Disable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

# androidx-specific init file
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/etc/init.androidx.rc:root/init.androidx.rc

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/androidx/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/androidx/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Proprietary latinime lib needed for swyping
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Layers Theme
PRODUCT_COPY_FILES += \
    vendor/androidx/config/permissions/com.layers.theme.xml:system/etc/permissions/com.layers.theme.xml \
    vendor/androidx/prebuilt/common/etc/Layers.apk:system/app/Layers/Layers.apk

# Required androidx packages
PRODUCT_PACKAGES += \
    Camera \
    Development \
    LatinIME \
    Launcher3

# Optional androidx packages
PRODUCT_PACKAGES += \
    audio_effects.conf \
    Basic

# emoji
PRODUCT_PACKAGES += \
    libemoji

# Screen recorder
PRODUCT_PACKAGES += \
    ScreenRecorder \
    libscreenrecorder

# Chromium Prebuilt
ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM),yes)
-include prebuilts/chromium/$(TARGET_DEVICE)/chromium_prebuilt.mk
endif

PRODUCT_PACKAGE_OVERLAYS += vendor/androidx/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/androidx/overlay/common
