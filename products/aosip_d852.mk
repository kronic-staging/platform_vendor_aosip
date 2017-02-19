$(call inherit-product, device/lge/d852/full_d852.mk)

# Inherit some common aosip stuff.
$(call inherit-product, vendor/aosip/common.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enhanced NFC
#$(call inherit-product, vendor/aosip/config/nfc_enhanced.mk)

PRODUCT_DEVICE := d852
PRODUCT_NAME := aosip_d852
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-D852
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += DEVICE_MAINTAINERS="Adam Ovadia"


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_bell_ca" \
    BUILD_FINGERPRINT="lge/g3_global_com/g3:5.0/LRX21R.A1421650137/1421650137:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_global_com-user 5.0 LRX21R.A1421650137 1421650137 release-keys"
