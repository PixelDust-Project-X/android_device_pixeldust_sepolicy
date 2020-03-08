#
# This policy configuration will be used by all products that
# inherit from PixelDust Project
#

# Don't build the vendor sepolicies for now and ever
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/pixeldust/sepolicy/common/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/pixeldust/sepolicy/common/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/pixeldust/sepolicy/common/dynamic
else
BOARD_SEPOLICY_DIRS += \
    device/pixeldust/sepolicy/common/dynamic \
    device/pixeldust/sepolicy/common/vendor
endif
