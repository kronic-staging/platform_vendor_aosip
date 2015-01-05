#
# This policy configuration will be used by all products that
# inherit from androidx
#

BOARD_SEPOLICY_DIRS += \
    vendor/androidx/sepolicy

BOARD_SEPOLICY_UNION += \
    app.te \
    bootanim.te \
    file.te \
    file_contexts \
    mac_permissions.xml \
    seapp_contexts \
    service_contexts \
    sysinit.te \
    system.te \
    zygote.te
