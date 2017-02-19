$(call inherit-product, device/lge/d850/full_d850.mk)

# Inherit some common aosip stuff.
$(call inherit-product, vendor/aosip/common.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enhanced NFC
#$(call inherit-product, vendor/aosip/config/nfc_enhanced.mk)

PRODUCT_DEVICE := d850
PRODUCT_NAME := aosip_d850
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-D850
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += DEVICE_MAINTAINERS="Adam Ovadia"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_att_us" \
    BUILD_FINGERPRINT="lge/g3_att_us/g3:4.4.2/KVT49L.D85010d/D85010d.1403173065:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_att_us-user 4.4.2 KVT49L.D85010d D85010d.1403173065 release-keys"
