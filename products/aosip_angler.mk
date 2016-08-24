# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/huawei/angler/aosp_angler.mk)
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Setup device specific product configuration.
PRODUCT_NAME := aosip_angler
PRODUCT_BRAND := google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:7.0.0/NRD90M/3085278:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 7.0.0 NRD90M 3085278 release-keys" \
    BUILD_ID=NRD90M \
    BUILD_DISPLAY_ID=NRD90M
