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

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 720x1280

# Assert
TARGET_OTA_ASSERT_DEVICE := D5102,D5103,D5106,seagull

# TWRP Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"

# Inherit AOSP Yukon common device parts
$(call inherit-product, device/sony/seagull/aosp_seagull.mk)

# Inherit Omni GSM telephony parts
PRODUCT_PROPERTY_OVERRIDES += telephony.lteOnGSMDevice=1
$(call inherit-product, vendor/omni/config/gsm.mk)

# Recovery
PRODUCT_COPY_FILES += \
    device/sony/seagull/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab

# Build wcnss from source
PRODUCT_PACKAGES += \
   wcnss_service

# Override Product Name for OmniROM
PRODUCT_NAME := omni_seagull
PRODUCT_MODEL := Xperia T3
