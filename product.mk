PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.adb.shell=/system_ext/bin/bash \
    ro.com.google.clientidbase=android-google \
    persist.sys.strictmode.disable=true \
    ro.ota.allow_downgrade=true \
    ro.storage_manager.enabled=true

PRODUCT_PACKAGES += \
    adb_root \
    bash \
    iperf3 \
    nano \
    SimpleDeviceConfig \
    tinymix

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.systemuicompilerfilter=speed

$(call inherit-product, vendor/partner_modules/build/mainline_modules.mk)
$(call inherit-product, vendor/gms/products/gms.mk)
