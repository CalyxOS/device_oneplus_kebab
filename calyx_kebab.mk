#
# Copyright (C) 2018 The LineageOS Project
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
#

# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from kebab device
$(call inherit-product, device/oneplus/kebab/device.mk)

PRODUCT_NAME := calyx_kebab
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2003

PRODUCT_SYSTEM_NAME := OnePlus8T_EEA
PRODUCT_SYSTEM_DEVICE := OnePlus8T

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus8T \
    TARGET_PRODUCT=OnePlus8T_EEA \
    PRIVATE_BUILD_DESC="OnePlus8T-user 11   release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlus8T_EEA/OnePlus8T:11/RP1A.201005.001/2011132154:user/release-keys
