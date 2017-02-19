$(call inherit-product, device/lge/f400/full_f400.mk)

# Inherit some common aosip stuff.
$(call inherit-product, vendor/aosip/common.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enhanced NFC
#$(call inherit-product, vendor/aosip/config/nfc_enhanced.mk)

PRODUCT_DEVICE := f400
PRODUCT_NAME := aosip_f400
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-F400
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += DEVICE_MAINTAINERS="Adam Ovadia"

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="g3" PRODUCT_NAME="g3_kt_kr" BUILD_FINGERPRINT="lge/g3_kt_kr/g3:5.0/LRX21R/F400K20f.1419232865:user/release-keys" PRIVATE_BUILD_DESC="g3_kt_kr-user 5.0 LRX21R F400K20f.1419232865 release-keys"
