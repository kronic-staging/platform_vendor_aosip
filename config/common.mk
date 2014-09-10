PRODUCT_BRAND ?= androidx

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

#Define thirdparty for Koush's SU
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.androidx.superuser

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
    ro.com.android.dataroaming=false \
    persist.sys.root_access=3

# Disable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

# Backup Tool
PRODUCT_COPY_FILES += \
	vendor/androidx/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
	vendor/androidx/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
	vendor/androidx/prebuilt/common/bin/50-hosts.sh:system/addon.d/50-hosts.sh

# init.d support
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/androidx/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# androidx-specific init file
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/etc/init.androidx.rc:root/init.androidx.rc

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Don't copy memory tweaks on low ram devices (<786M)
ifeq ($(strip $(TARGET_IS_LOW_RAM)),)
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/etc/init.memory.rc:root/init.memory.rc
endif

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/androidx/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# mounts
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/bin/sysrw:system/bin/sysrw \
    vendor/androidx/prebuilt/common/bin/sysro:system/bin/sysro \
    vendor/androidx/prebuilt/common/bin/rootrw:system/bin/rootrw \
    vendor/androidx/prebuilt/common/bin/rootro:system/bin/rootro

# swap support
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/bin/handle_swap:system/bin/handle_swap

# Nam configuration script
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/androidx/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/androidx/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# Theme engine
include vendor/androidx/config/themes_common.mk

# Required androidx packages
PRODUCT_PACKAGES += \
    Camera \
    Development \
    Email \
    libscreenrecorder \
    LatinIME \
    Launcher3 \
    ScreenRecorder \
    Superuser \
    su

# Optional androidx packages
PRODUCT_PACKAGES += \
    audio_effects.conf \
    Basic \
    OmniTorch \
    SoundRecorder \
    VoiceDialer

# Extra tools in androidx
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof \
    systembinsh

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# emoji
PRODUCT_PACKAGES += \
    libemoji

PRODUCT_PACKAGE_OVERLAYS += vendor/androidx/overlay/dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/androidx/overlay/common

# Set valid modversion
PRODUCT_PROPERTY_OVERRIDES += ro.modversion=$(BUILD_NUMBER)
