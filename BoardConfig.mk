-include device/amazon/mt8163-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := karnak

TARGET_BOOTLOADER_BOARD_NAME := karnak

TARGET_PREBUILT_KERNEL := device/amazon/karnak/prebuilt/Image.gz-dtb

PRODUCT_COPY_FILES += \
	$(TARGET_PREBUILT_KERNEL):kernel
