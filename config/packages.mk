
# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

# Required aosip packages
PRODUCT_PACKAGES += \
    audio_effects.conf \
    Basic \
    Eleven \
    Gallery2 \
    LatinIME \
    libemoji \
    LockClock \
    masquerade \
    MusicFX \
    OmniSwitch \
    toybox \
    messaging \
    WallpaperPicker

PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/app/NovaLauncher.apk:system/priv-app/NovaLauncher.apk

