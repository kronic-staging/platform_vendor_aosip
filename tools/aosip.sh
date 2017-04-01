#!/bin/bash
if [ -z $1 ];
then
echo -e "Enter device codename"
read device;
else
device=$1;
fi

source build/envsetup.sh

if [[ "$2" =~ "clean" ]];
then
make clean
fi

if [[ "$1" =~ "dirty" ]];
then
make installclean
outdir="./out/target/product/$device";
  rm -rf "$outdir/combinedroot";
  rm -rf "$outdir/data";
  rm -rf "$outdir/recovery";
  rm -rf "$outdir/root";
  rm -rf "$outdir/system";
  rm -rf "$outdir/utilities";
  rm -rf "$outdir/boot"*;
  rm -rf "$outdir/combined"*;
  rm -rf "$outdir/kernel";
  rm -rf "$outdir/ramdisk"*;
  rm -rf "$outdir/recovery"*;
  rm -rf "$outdir/system"*;
  rm -rf "$outdir/obj/ETC/system_build_prop_intermediates";
  rm -rf "$outdir/ota_temp/RECOVERY/RAMDISK";
fi

if [[ "$2" =~ "sync" ]];
then
time repo sync -c -f -j16 --force-sync --no-clone-bundle --no-tags
fi

export CCACHE_DIR=${HOME}/.ccache-$device
export USE_CCACHE=1
./prebuilts/misc/linux-x86/ccache/ccache -M 20
lunch aosip_$device-userdebug
time make -j10 bacon
