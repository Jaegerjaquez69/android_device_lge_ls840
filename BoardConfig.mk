USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/ls840/BoardConfigVendor.mk

# Architecture
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE -DNO_QCOM_MVS -DLGE_MSM8660

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno220
TARGET_BOOTLOADER_BOARD_NAME := msm8660
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_BOOTLOADER_BOARD_NAME := cayman

BOARD_KERNEL_CMDLINE := console=ttyDCC0,115200,n8 androidboot.hardware=cayman_sprint_us loglevel=1
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FORCE_RAMDISK_ADDRESS := 0x41a00000

# Partition Information
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1887436800
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_DATA_DEVICE := /dev/block/mmcblk0p29
BOARD_DATA_FILESYSTEM := ext4
BOARD_DATA_FILESYSTEM_OPTIONS := nosuid,nodev,relatime,barrier=1,noauto_da_alloc
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p27 BOARD_SYSTEM_FILESYSTEM_OPTIONS := noatime,nodiratime,barrier=1,noauto_da_alloc
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p28
BOARD_CACHE_FILESYSTEM := ext4
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_USES_MMCUTILS := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
#BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Notification LED
BOARD_HAS_LED_NOTIF := true

# Recovery
# TARGET_PREBUILT_RECOVERY_KERNEL := device/lge/ls840/recovery/recovery_kernel
BOARD_HAS_NO_MISC_PARTITION := false
BOARD_HAS_NO_SELECT_BUTTON := true
DEVICE_RESOLUTION := 480x800
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_FLASH_FROM_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true

# Charging mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"
BOARD_CHARGER_RES := device/lge/ls840/res/charger

# Kernel Config
TARGET_PREBUILT_KERNEL := device/lge/ls840/kernel
TARGET_KERNEL_SOURCE := kernel/lge/ls840
TARGET_KERNEL_CONFIG := cyanogenmod_ls840_defconfig

