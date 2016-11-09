$(call inherit-product, device/lge/ls990/full_ls990.mk)

# Inherit some common aosip stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enhanced NFC
#$(call inherit-product, vendor/aosip/config/nfc_enhanced.mk)

PRODUCT_DEVICE := ls990
PRODUCT_NAME := aosip_ls990
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-LS990
PRODUCT_MANUFACTURER := LGE


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g3" \
    PRODUCT_NAME="g3_spr_us" \
    BUILD_FINGERPRINT="lge/g3_spr_us/g3:4.4.2/KVT49L.LS990ZV4/LS990ZV4.1403169216:user/release-keys" \
    PRIVATE_BUILD_DESC="g3_spr_us-user 4.4.2 KVT49L.LS990ZV4 LS990ZV4.1403169216 release-keys"
