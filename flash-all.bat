@ECHO ON

PATH=%PATH%;"%SYSTEMROOT%\System32"
fastboot flash boot boot.img
fastboot flash dtbo dtbo.img
fastboot flash vendor_boot vendor_boot.img
fastboot reboot fastboot
timeout 5
fastboot flash vendor_dlkm vendor_dlkm.img

echo Kernel flashed :)
exit
