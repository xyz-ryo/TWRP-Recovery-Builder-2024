#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from EP171EN device
$(call inherit-product, device/everyphone/EP171EN/device.mk)

PRODUCT_DEVICE := EP171EN
PRODUCT_NAME := omni_EP171EN
PRODUCT_BRAND := EveryPhone
PRODUCT_MODEL := EP171EN
PRODUCT_MANUFACTURER := everyphone

PRODUCT_GMS_CLIENTID_BASE := alps-full_k5_37m_wl508_64bit-{country}

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k5_37m_wl508_64bit-user 7.0 NRD90M 1509772274 test-keys"

BUILD_FINGERPRINT := EveryPhone/EP171EN/EP171EN:7.0/NRD90M/1509772274:user/test-keys
