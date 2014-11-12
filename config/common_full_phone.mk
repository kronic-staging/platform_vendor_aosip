# Inherit common androidx stuff
$(call inherit-product, vendor/androidx/config/common_full.mk)

# Audio Packages
include frameworks/base/data/sounds/AllAudio.mk
