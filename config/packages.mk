
# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

# Required aosip packages
PRODUCT_PACKAGES += \
    Gallery2 \
    LatinIME \
    audio_effects.conf \
    Basic \
    masquerade \
    Eleven \
    libemoji \
    Busybox

PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/app/NovaLauncher.apk:system/priv-app/NovaLauncher.apk \
    vendor/aosip/prebuilt/common/app/OmniSwitch.apk:system/priv-app/OmniSwitch.apk

