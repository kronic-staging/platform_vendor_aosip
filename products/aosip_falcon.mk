$(call inherit-product, device/motorola/falcon/full_falcon.mk)

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := aosip_falcon

PRODUCT_GMS_CLIENTID_BASE := android-motorola
PRODUCT_DEVICE := falcon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := falcon
