#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some common Bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit Gapps
$(call inherit-product-if-exists, vendor/gapps/config.mk)
TARGET_GAPPS_ARCH := arm64

# Use Lawnchair
TARGET_USES_LAWNCHAIR := true

# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 720
BLISS_BUILDTYPE=OFFICIAL

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := bliss_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="onc" \
    TARGET_DEVICE="onc"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
