#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from android10 device
$(call inherit-product, device/incar/android10/device.mk)

PRODUCT_DEVICE := android10
PRODUCT_NAME := twrp_android10
PRODUCT_BRAND := colorfly
PRODUCT_MODEL := S108-JD
PRODUCT_MANUFACTURER := incar

PRODUCT_GMS_CLIENTID_BASE := android-incar

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="android10-user 10 QP1A.190711.020 20200810 release-keys"

BUILD_FINGERPRINT := rockchip/rk312x/rk312x:6.0.1/MXC89K/user.fyl.20170927.202757:userdebug/test-keys
