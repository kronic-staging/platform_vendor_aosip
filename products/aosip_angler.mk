# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/huawei/angler/aosp_angler.mk)
$(call inherit-product, vendor/aosip/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := aosip_angler
PRODUCT_BRAND := Google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="FoX" \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:7.1.1/N4F26T/3687331:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 7.1.1 N4F26T 3687331 release-keys"
