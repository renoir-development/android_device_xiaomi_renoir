#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8350-common
$(call inherit-product, device/xiaomi/sm8350-common/common.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info_shimaidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/audio_platform_info_shimaidp.xml \
    $(LOCAL_PATH)/audio/mixer_paths_shimaidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/mixer_paths_shimaidp.xml \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_dynamic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/mixer_paths_overlay_dynamic.xml \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_static.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/mixer_paths_overlay_static.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_shimaidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/sound_trigger_mixer_paths_shimaidp.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/sound_trigger_platform_info.xml

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Call the proprietary setup
$(call inherit-product-if-exists, vendor/xiaomi/renoir/renoir-vendor.mk)
