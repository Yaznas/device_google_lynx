#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common DerpFest stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := lynx
DEVICE_PATH := device/google/lynx
VENDOR_PATH := vendor/google/lynx
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/gs201/derp_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-derp.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7a
PRODUCT_NAME := derp_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="lynx-user 15 AP4A.250105.002 12701944 release-keys" \
    BuildFingerprint=google/lynx/lynx:15/AP4A.250105.002/12701944:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)

DERP_BUILDTYPE := Official