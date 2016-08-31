# aosip configuration

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common aosip stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

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
    BUILD_FINGERPRINT=google/shamu/shamu:6.0.1/MOB30W/3031100:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 6.0.1 MOB30W 3031100 release-keys"
