$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, device/amazon/karnak/device.mk)

LINEAGEOS_VERSION := 15.1
PRODUCT_CHARACTERISTICS := tablet
LOCAL_PATH := device/amazon/karnak
DEVICE_FOLDER := device/amazon/karnak



PRODUCT_NAME := lineage_karnak
PRODUCT_DEVICE := karnak
PRODUCT_BRAND := Fire
PRODUCT_MODEL := KFKAWI
PRODUCT_BOARD := karnak
PRODUCT_MANUFACTURER := amazon

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal large
PRODUCT_AAPT_PREF_CONFIG := hdpi



# Default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.service.acm.enable=0 \
    persist.sys.dun.override=0 \
    camera.disable_zsl_mode=1 \
    sys.usb.ffs.aio_compat=1 \
    ro.mount.fs=EXT4 \
    ro.mtk_key_manager_kb_path=1 \
    persist.sys.usb.config=mtp,adb \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.debug.multi_window=true

#Build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1

BOARD_SECCOMP_POLICY := \
    $(LOCAL_PATH)/seccomp-policy


#HW
PRODUCT_PACKAGES +=\
    lights.mt8163.so
  


#wifi
PRODUCT_PACKAGES += \
	wifi2agps \

#wpa 
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \




# Audio
PRODUCT_PACKAGES += \
    audio.r_submix.mt8163 \
    audio.usb.default \
    audio_policy.stub \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libaudioroute \
    libtinyalsa \
    libalsautils

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0


# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/rootdir,root)


#audio
PRODUCT_COPY_FILES += \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml




# Display
#PRODUCT_PACKAGES += \
#    android.hardware.graphics.allocator@2.0-impl \
#    android.hardware.graphics.allocator@2.0-service \
#    android.hardware.graphics.mapper@2.0-impl \
#    android.hardware.graphics.composer@2.1-impl \
#   android.hardware.graphics.composer@2.1-service \
#   android.hardware.memtrack@1.0-impl \
#    android.hardware.memtrack@1.0-service \
    #pvrsrvctl


# HIDL
#PRODUCT_PACKAGES += \
#    android.hidl.base@1.0 \
#    android.hidl.manager@1.0



# VNDK-SP:
PRODUCT_PACKAGES += \
    vndk-sp

# Light
PRODUCT_PACKAGES += \
    lights.mt8163 \
    android.hardware.light@2.0-impl-mediatek \
    android.hardware.light@2.0-service-mediatek


PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml


# Camera
PRODUCT_PACKAGES += \
    Snap

# DRM
PRODUCT_PACKAGES += \
    libdrm \
    libmockdrmcryptoplugin \
    libdrmclearkeyplugin 



PRODUCT_PACKAGES += \
    libion \
    libcap


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml


#KeyBoard
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

#thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal/thermal.conf:system/vendor/etc/.tp/thermal.conf \
    $(LOCAL_PATH)/thermal/thermal.off.conf:system/vendor/etc/.tp/thermal.off.conf \
    $(LOCAL_PATH)/thermal/.ht120.mtc:system/vendor/etc/.tp/.ht120.mtc


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/audio_device.xml:system/vendor/etc/audio_device.xml \
    $(LOCAL_PATH)/vendor/audio_em.xml:system/vendor/etc/audio_em.xml \
    $(LOCAL_PATH)/vendor/mtklog-config.prop:system/vendor/etc/mtklog-config.prop \
    $(LOCAL_PATH)/vendor/mtk_omx_core.cfg:system/vendor/etc/mtk_omx_core.cfg \
    $(LOCAL_PATH)/vendor/radvd.conf:system/vendor/etc/radvd.conf \
    $(LOCAL_PATH)/vendor/throttle.sh:system/vendor/etc/throttle.sh




#libs
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/lib/hw/audio.primary.mt8163.so:system/vendor/lib/hw/audio.primary.mt8163.so \
   $(LOCAL_PATH)/lib/hw/audio.usb.mt8163.so:system/vendor/lib/hw/audio.usb.mt8163.so \
   $(LOCAL_PATH)/lib/hw/camera.mt8163.so:system/vendor/lib/hw/camera.mt8163.so \
   $(LOCAL_PATH)/lib/hw/gatekeeper.mt8163.so:system/vendor/lib/hw/gatekeeper.mt8163.so \
   $(LOCAL_PATH)/lib/hw/gralloc.mt8163.so:system//vendor/lib/hw/gralloc.mt8163.so \
   $(LOCAL_PATH)/lib/hw/hwcomposer.mt8163.so:system/vendor/lib/hw/hwcomposer.mt8163.so \
   $(LOCAL_PATH)/lib/hw/memtrack.mt8163.so:system/vendor/lib/hw/memtrack.mt8163.so \
   $(LOCAL_PATH)/lib/hw/sensors.mt8163.so:system/vendor/lib/hw/sensors.mt8163.so  


#libshims
PRODUCT_PACKAGES += \
libshim_asp \
libshim_egl 

#egl
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/lib/egl/libGLES_mali.so:system/vendor/lib/egl/libGLES_mali.so \
   $(LOCAL_PATH)/lib/libhal_effects.so:system/lib/libhal_effects.so

# call dalvik heap config
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

   
