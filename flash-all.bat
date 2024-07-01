@ECHO OFF

PATH=%PATH%;"%SYSTEMROOT%\System32"
fastboot flash boot boot.img
fastboot flash dtbo dtbo.img
fastboot flash vendor_boot vendor_boot.img
fastboot reboot fastboot
fastboot flash vendor_dlkm vendor_dlkm.img
fastboot reboot

echo Kernel flashed :)
timeout 5
exit
