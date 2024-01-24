#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(warning Building for veux Japan variant.)

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    vendor/nxp/opensource/commonsys/external/libnfc-nci \
    vendor/nxp/opensource/commonsys/packages/apps/Nfc \
    vendor/nxp/opensource/interfaces \
    vendor/nxp/opensource/halimpl \
    vendor/nxp/opensource/hidllimpl

# NFC
PRODUCT_PACKAGES += \
    NQNfcNci \
    com.nxp.nfc.nq \
    nfc_nci.nqx.default.hw

PRODUCT_PACKAGES += \
    jcos_nq_client \
    ls_nq_client \
    se_nq_extn_client

# Secure Element
PRODUCT_PACKAGES += \
    vendor.nxp.hardware.nfc@2.0-service \
    android.hardware.secure_element@1.0.vendor \
    android.hardware.secure_element@1.1.vendor \
    android.hardware.secure_element@1.2.vendor

# NFC Select config
PRODUCT_DEFAULT_PROPERTIES += \
    persist.nfc_cfg.config_file_name=libnfc-mtp_SN100.conf

# NFC Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/libsn100u_fw.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsn100u_fw.so
