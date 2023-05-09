#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/oneplus/oneplus7tpro/oneplus7tpro-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/audio/mixer_paths_pahu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_pahu.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml

# Camera
PRODUCT_PACKAGES += \
    OnePlusCameraHelper

# fstab
PRODUCT_PACKAGES += \
    fstab.qcom.ramdisk

# Keyboard
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.kb_pad_port_l=7 \
    ro.com.google.ime.kb_pad_port_r=7 \
    ro.com.google.ime.kb_pad_land_l=14 \
    ro.com.google.ime.kb_pad_land_r=14

# Overlays
PRODUCT_PACKAGES += \
    AOSPAOnePlus7TProFrameworks \
    AOSPAOnePlus7TProSystemUI \
    OnePlus7TProFrameworks \
    OnePlus7TProSettings \
    OnePlus7TProSettingsProvider \
    OnePlus7TProSystemUI

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display_id_4630946797824131201.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946797824131201.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_USE_DYNAMIC_PARTITIONS := true
