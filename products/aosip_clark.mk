# Boot animation
TARGET_BOOTANIMATION_SIZE := 1440x814

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Aosip stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Enhanced NFC
#$(call inherit-product, vendor/aosip/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/clark/device.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/clark/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosip_clark
PRODUCT_BRAND := Android
PRODUCT_DEVICE := clark
PRODUCT_MODEL := XT1575
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

#$(call inherit-product, device/motorola/clark/device.mk)
$(call inherit-product-if-exists, vendor/motorola/clark/clark-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/clark_reteu/clark:6.0/MPHS24.49-18-3/3:user/release-keys \
    PRIVATE_BUILD_DESC="clark_reteu-user 6.0 MPHS24.49-18-3 3 release-keys"
