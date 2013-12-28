# Inherit common androidx stuff
$(call inherit-product, vendor/androidx/config/common_full.mk)

PRODUCT_PACKAGES += \
  Mms

# Audio Packages
include frameworks/base/data/sounds/AllAudio.mk
