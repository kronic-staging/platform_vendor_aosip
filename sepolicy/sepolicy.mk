#
# This policy configuration will be used by all products that
# inherit from androidx
#

BOARD_SEPOLICY_DIRS += \
    vendor/androidx/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    mac_permissions.xml \
    sysinit.te \
