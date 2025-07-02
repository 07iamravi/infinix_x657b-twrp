#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's omni device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x657B
PRODUCT_NAME := omni_x657B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := x657B
PRODUCT_MANUFACTURER := infinix

PRODUCT_SHIPPING_API_LEVEL := 29
BOARD_SYSTEMSDK_VERSIONS := 29

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock

# Bypass anti-rollback ROMs protection
# Set build date to Jan 1 2009 00:00:00
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.date.utc=1230768000
