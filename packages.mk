
# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils
PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/app/NovaLauncher.apk:system/priv-app/NovaLauncher.apk

# SuperSU FTW
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/supersu/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/aosip/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# AOSiP packages
PRODUCT_PACKAGES += \
    CalendarWidget \
    LatinIME \
    LockClock \
    OmniSwitch \
    WallpaperPicker

# Misc packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    libemoji \
    libsepol \
    librsjni \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    powertop \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    gdbserver \
    micro_bench \
    oprofiled \
    sqlite3 \
    strace

# Telephony packages
PRODUCT_PACKAGES += \
    messaging \
    CellBroadcastReceiver \
    Stk \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# RCS
PRODUCT_PACKAGES += \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_aidl_static \
    rcs_service_api \
    rcs_service_api.xml

# Snapdragon packages
PRODUCT_PACKAGES += \
    MusicFX \
    SnapdragonCamera \
    SnapdragonGallery \
    SnapdragonMusic

# OMS
PRODUCT_PACKAGES += \
    masquerade

# Mms depends on SoundRecorder for recorded audio messages
PRODUCT_PACKAGES += \
    SoundRecorder

# World APN list
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

