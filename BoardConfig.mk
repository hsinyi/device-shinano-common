# Use default Gecko location if it's not provided in config files.
GECKO_PATH ?= gecko

B2G_SYSTEM_APPS := 1

BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2671771648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12656294912
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200

BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_DISABLED_SSR := true

# don't create SD card partition
BOARD_USBIMAGE_PARTITION_SIZE_KB :=

ENABLE_LIBRECOVERY := true
RECOVERY_EXTERNAL_STORAGE := /storage/sdcard1

TARGET_PROVIDES_INIT_RC := true

# hack to prevent llvm from building
BOARD_USE_QCOM_LLVM_CLANG_RS := true

TARGET_NO_BOOTLOADER := true
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 selinux=0 msm_rtb.filter=0xb7 ehci-hcd.park=3 dwc3.maximum_speed=high dwc3_msm.prop_chg_detect=Y

BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/$(TARGET_DEVICE)/bluetooth \
                                               $(GECKO_PATH)/dom/bluetooth/bluedroid
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_ATH_WLAN_AR6004 := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_DRIVER_MODULE_ARG := ""
WPA_SUPPLICANT_VERSION := VER_0_8_X
HOSTAPD_VERSION := VER_0_8_X
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
BOARD_HAS_CFG80211_KERNEL3_4 := true
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
