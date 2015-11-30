PRODUCT_BRAND ?= androidx

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

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

# Disable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/androidx/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/androidx/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Superuser
PRODUCT_COPY_FILES +=  \
    vendor/androidx/prebuilt/common/su:root/sbin/su \
    vendor/androidx/prebuilt/common/app/Superuser.apk:system/app/Superuser/Superuser.apk

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# Required androidx packages
PRODUCT_PACKAGES += \
    Camera \
    Development \
    LatinIME

# Optional androidx packages
PRODUCT_PACKAGES += \
    audio_effects.conf \
    Basic

# emoji
PRODUCT_PACKAGES += \
    libemoji

PRODUCT_PACKAGE_OVERLAYS += vendor/androidx/overlay/common
