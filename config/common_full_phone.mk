# Inherit common aosip stuff
$(call inherit-product, vendor/aosip/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.alarm_alert=Krypton.ogg

ifneq ($(filter aosip_angler aosip_bullhead aosip_hammerhead aosip_shamu,$(TARGET_PRODUCT)),)
# Build SimToolKit
PRODUCT_PACKAGES += \
    Stk \
    CellBroadcastReceiver
endif

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
    vendor/aosip/prebuilt/common/supersu/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/aosip/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Backup Tool
ifneq ($(WITH_GMS),true)
PRODUCT_COPY_FILES += \
    vendor/aosip/prebuilt/common/bin/50-backupscript.sh:system/addon.d/50-backupscript.sh \
    vendor/aosip/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/aosip/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions
endif
