# Inherit some common CM stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit device configuration for Fire Phone
$(call inherit-product, device/amazon/karnak/lineage_karnak.mk)

TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1280

PRODUCT_NAME := lineage_karnak
PRODUCT_RELEASE_NAME := karnak
