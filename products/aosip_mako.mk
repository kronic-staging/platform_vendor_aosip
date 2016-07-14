# aosip configuration
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/aosp_mako.mk)

PRODUCT_NAME := aosip_mako
PRODUCT_DEVICE := mako
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := lge
PRODUCT_RESTRICT_VENDOR_FILES := false

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=occam \
    BUILD_FINGERPRINT=google/occam/mako:6.0.1/MOB30P/2960889:user/release-keys \
    PRIVATE_BUILD_DESC="occam-user 6.0.1 MOB30P 2960889 release-keys"
