#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit device configuration
$(call inherit-product, device/sony/sumire/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := lineage_sumire
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_DEVICE := sumire
PRODUCT_MODEL := Xperia Z5

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="sumire" \
    PRODUCT_NAME="sumire" \
    PRIVATE_BUILD_DESC="sumire-user 7.1.1 N-MR1-KITAKAMI-170920-0229 1 dev-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Sony/sumire/sumire:7.1.1/N-MR1-KITAKAMI-170920-0229/1:user/dev-keys

TARGET_VENDOR := Sony
