#!/bin/bash

# Repo Init
repo init -u https://github.com/ProjectBlaze-Reborn/manifest.git -b 15 --git-lfs --depth=1

# Sync the repositories
/opt/crave/resync.sh

# Clone repositories #

# Device
git clone
https://github.com/LineageOS/android_device_motorola_devon device/motorola/devon -b lineage-21
git clone
https://github.com/LineageOS/android_device_motorola_sm6225-common device/motorola/sm6225-common -b lineage-21 

# Vendor
git clone https://github.com/TheMuppets/proprietary_vendor_motorola_sm6225-common vendor/motorola/sm6225-common -b lineage-21
git clone
https://github.com/TheMuppets/proprietary_vendor_motorola_devon vendor/motorola/devon -b lineage-21

# Kernel
git clone
https://github.com/LineageOS/android_kernel_motorola_sm6225 kernel/motorola/sm6225 -b lineage-21

# Hardware
git clone https://github.com/LineageOS/android_hardware_motorola hardware/motorola -b lineage-21

# Hals
git clone
https://github.com/LineageOS/android_packages_resources_devicesettings packages/resources/devicesettings
git clone
https://github.com/LineageOS/android_system_qcom  system/qcom

# Sepolicy
git clone https://github.com/shinichi-c/device_blaze_sepolicy --depth=1 device/lineage/sepolicy
git clone https://github.com/shinichi-c/android_device_qcom_sepolicy_vndr --depth=1 -b lineage-22.0-legacy-um device/qcom/sepolicy_vndr/legacy-um

# Lunch
source build/envsetup.sh
lunch blaze_devon-ap3a-userdebug
make bacon
