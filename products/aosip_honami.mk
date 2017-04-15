TARGET_KERNEL_CONFIG := aosp_rhine_honami_defconfig

# Inherit from those products. Most specific first.

$(call inherit-product, device/sony/honami/device.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, vendor/aosip/common.mk)

TARGET_KERNEL_SOURCE := kernel/sony/msm

PRODUCT_BUILD_PROP_OVERRIDES += DEVICE_MAINTAINERS="Akash aka markakash"
PRODUCT_NAME := aosip_honami
PRODUCT_DEVICE := honami
PRODUCT_MODEL := Xperia Z1 (AOSP)
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
