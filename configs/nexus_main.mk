# Copyright (C) 2015 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/nexus/overlay/common

# Main Required Packages
PRODUCT_PACKAGES += \
    Launcher3 \
    LiveWallpapersPicker

#Custom Packages
PRODUCT_PACKAGES += \
    LockClock \
    WallpaperPicker

# Busybox
PRODUCT_PACKAGES += \
    Busybox

# SuperSU FTW
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/supersu/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/nexus/prebuilt/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon
