# Copyright (C) 2014 The CyanogenMod Project
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

# Enhanced NFC
$(call inherit-product, vendor/vanir/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/flounder/aosp_flounder.mk)

# Inherrit LTE config
$(call inherit-product, device/htc/flounder/device-lte.mk)
$(call inherit-product-if-exists, vendor/htc/flounder_lte/device-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/lte_only_overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := vanir_flounderlte
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9
