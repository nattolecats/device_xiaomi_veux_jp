#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from veux global configs
$(call inherit-product, device/xiaomi/veux/BoardConfig.mk)

# HIDL
DEVICE_MANIFEST_FILE += $(LOCAL_PATH)/vintf/manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(LOCAL_PATH)/vintf/framework_compatibility_matrix.xml
