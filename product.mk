# Default ADB shell prompt
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.adb.shell=/system_ext/bin/bash

# Google Apps
ifneq (,$(filter true,$(WITH_GAPPS) $(WITH_GMS)))
  $(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)
  $(call inherit-product-if-exists, vendor/gms/products/gms.mk)
  $(call inherit-product-if-exists, vendor/gcam/gcam-vendor.mk)
endif

# iperf3
PRODUCT_PACKAGES += iperf3

# tinymix
PRODUCT_PACKAGES += tinymix
