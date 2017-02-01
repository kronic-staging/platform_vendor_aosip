# aosip configuration

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += DEVICE_MAINTAINERS="Michael S Corigliano (Mike Criggs)"

# Inherit some common aosip stuff.
$(call inherit-product, vendor/aosip/common.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/shamu/aosp_shamu.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosip_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := false

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.1.1/N6F26Q/3549652:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.1.1 N6F26Q 3549652 release-keys"
