# Inherit some common stuff.

$(call inherit-product, vendor/aosip/common.mk )

# Inherit device configuration.

$(call inherit-product, device/lge/mako/full_mako.mk)

# Setup device specific product configuration.

PRODUCT_DEVICE := mako
PRODUCT_NAME := aosip_mako
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Device Maintainer

PRODUCT_BUILD_PROP_OVERRIDES += DEVICE_MAINTAINERS="Kuba Schenk (Abuk)"

# Device Fingerprint

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:5.1.1/LMY48M/2167285:user/release-keys \
   PRIVATE_BUILD_DESC="occam-user 5.1.1 LMY48M 2167285 release-keys"

