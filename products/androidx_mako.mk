# androidx configuration
$(call inherit-product, vendor/androidx/config/common_full_phone.mk)
$(call inherit-product, vendor/androidx/config/gsm.mk)

# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/androidx/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_NAME := androidx_mako
PRODUCT_DEVICE := mako
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

# Kernel inline build
TARGET_KERNEL_CONFIG := mako_defconfig

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="occam" BUILD_FINGERPRINT="google/occam/mako:5.0/LRX21T/1576899:user/release-keys" PRIVATE_BUILD_DESC="occam-user 5.0 LRX21T 1576899 release-keys"
