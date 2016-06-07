# Generic product
PRODUCT_NAME := AOSIP
PRODUCT_BRAND := AOSIP
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Disable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=1 \
    persist.service.adb.enable=1 \
    persist.sys.usb.config=mtp,adb

# NTFS support
PRODUCT_PACKAGES += \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \

# exfat support
WITH_EXFAT ?= true
ifeq ($(WITH_EXFAT),true)
TARGET_USES_EXFAT := true
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat
endif

ifneq ($(filter aosip_flo aosip_hammerhead aosip_shamu aosip_sprout4 aosip_sprout8,$(TARGET_PRODUCT)),)
# Camera Effects
PRODUCT_COPY_FILES +=  \
    vendor/aosip/prebuilt/common/media/LMprec_508.emd:system/vendor/media/LMprec_508.emd \
    vendor/aosip/prebuilt/common/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd
endif

# Proprietary latinime libs needed for Keyboard swyping
ifneq ($(filter aosip_flo aosip_hammerhead aosip_shamu aosip_sprout4 aosip_sprout8,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so
else
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/system/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so
endif

ifneq ($(filter aosip_flo aosip_hammerhead aosip_shamu aosip_sprout4 aosip_sprout8,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    libdrmclearkeyplugin 
endif

PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/app/NovaLauncher.apk:system/priv-app/NovaLauncher.apk

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/bin/sysinit:system/bin/sysinit

# AOSiP-specific init file
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/etc/init.aosip.rc:root/init.aosip.rc

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# Required aosip packages
PRODUCT_PACKAGES += \
    Camera \
    LatinIME

# Optional aosip packages
PRODUCT_PACKAGES += \
    audio_effects.conf \
    Basic \
    OmniSwitch \
    LockClock

# emoji
PRODUCT_PACKAGES += \
    libemoji

PRODUCT_PACKAGE_OVERLAYS += vendor/aosip/overlay/common

# Inherit common product build prop overrides
-include vendor/aosip/config/common_versions.mk
