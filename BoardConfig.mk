# Copyright (C) 2007 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Set this up here so that BoardConfigVendor.mk can override it
BOARD_USES_GENERIC_AUDIO := false

BOARD_USES_LIBSECRIL_STUB := true

BOARD_NO_PAGE_FLIPPING := true
BOARD_NO_32BPP := true

-include vendor/samsung/crespo/BoardConfig4gVendor.mk
include device/samsung/crespo/BoardConfigCommon.mk

#TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_crespo4g
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/crespo4g
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_REAL_SDCARD := true
DEVICE_RESOLUTION := 480x800
SP1_NAME := "efs"
SP1_DISPLAY_NAME := "EFS"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
#SP2_NAME := "wimax" # even though there's a reference to wimax in the recovery.fstab, it doesn't appear to exist, or, at least, it can't be backed up
#SP2_DISPLAY_NAME := "WiMAX"
#SP2_BACKUP_METHOD := image
#SP2_MOUNTABLE := 0
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
