$(call inherit-product, device/lge/d851/full_d851.mk)

# Inherit some common aosip stuff.
$(call inherit-product, vendor/aosip/common.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enhanced NFC
#$(call inherit-product, vendor/aosip/config/nfc_enhanced.mk)

PRODUCT_DEVICE := d851
PRODUCT_NAME := aosip_d851
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-D851
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += DEVICE_MAINTAINERS="Adam Ovadia"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_tmo_us" \
    BUILD_FINGERPRINT="lge/g3_tmo_us/g3:6.0/MRA58K/1609517159bca:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_tmo_us-user 6.0 MRA58K 1609517159bca release-keys"
