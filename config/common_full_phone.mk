# Inherit common aosip stuff
$(call inherit-product, vendor/aosip/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.alarm_alert=Krypton.ogg

# Required androidx packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Stk

PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/bootanimations/BOOTANIMATION.zip:system/media/bootanimation.zip

#Root by default
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1
