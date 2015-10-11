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

# Busybox
PRODUCT_PACKAGES += \
    Busybox

# SuperSU FTW
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/common/supersu/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/nexus/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon
