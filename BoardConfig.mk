# Copyright 2014 The Android Open Source Project
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

include device/sony/yukon/PlatformConfig.mk

TARGET_KERNEL_CONFIG := aosp_yukon_seagull_defconfig

TARGET_RECOVERY_FSTAB = device/sony/seagull/rootdir/fstab.seagull

BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2067791872
#Reserve space for data encryption (5360303104-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5360286720

BOARD_KERNEL_CMDLINE += androidboot.hardware=seagull
BOARD_KERNEL_CMDLINE += mem=1003M

# Use device's audio_effects.conf
TARGET_USE_DEVICE_AUDIO_EFFECTS_CONF := true

# TWRP Recovery
TW_THEME := portrait_hdpi
TW_NO_REBOOT_RECOVERY := true
