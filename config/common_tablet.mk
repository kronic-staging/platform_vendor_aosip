# Inherit common androidx stuff
$(call inherit-product, vendor/androidx/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=tweeters.ogg \
    ro.config.alarm_alert=Krypton.ogg

# Required androidx packages
PRODUCT_PACKAGES += \
    Launcher2
