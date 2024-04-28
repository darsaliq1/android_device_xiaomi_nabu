echo 'Starting to clone stuffs needed to build for NABU'

# Kernel
echo 'Cloning Kernel tree'
rm -rf kernel/xiaomi/nabu
git clone --depth=1 https://github.com/Kfkcome/android_kernel_xiaomi_nabu.git -b 14.0 kernel/xiaomi/nabu

# Vendor
echo 'Cloning Vendor tree'
rm -rf vendor/xiaomi/nabu
git clone https://github.com/Kfkcome/android_vendor_xiaomi_nabu.git -b 14.0 vendor/xiaomi/haydn


# Xiaomi
echo 'Cloning Hardware xiaomi'
rm -rf hardware/xiaomi
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi


# libprotobuf-ccq
rm -rf hardware/lineage/compat
git clone https://github.com/LineageOS/android_hardware_lineage_compat -b lineage-21.0 hardware/lineage/compat 

echo 'delete vendorsetup.sh from device tree once this is done'
