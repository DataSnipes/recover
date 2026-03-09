@echo off
mkdir C:/GRIMEYRECOVERY
cd /d C:/GRIMEYRECOVERY
curl -o "rufus.exe" https://github.com/pbatard/rufus/releases/download/v4.13/rufus-4.13p.exe
curl -o "ventoy.iso" 
rufus.exe --image "ventoy.iso" https://archive.org/download/ventoy-1.0.99-livecd/ventoy-1.0.99-livecd.iso
explorer.exe
echo Flash The ISO To Your USB Drive Then Enter The Drive Letter For The Empty Partition.
set /p DL="Enter Drive Letter: "
cd /d %DL%:/
mkdir linux
mkdir windows
cd linux
curl -o "ArchLinux.iso" https://arch.mirror.winslow.cloud/iso/2026.03.01/archlinux-2026.03.01-x86_64.iso
cd /d %DL%:/windows
curl -o "Windows 11.iso" https://archive.org/download/windows11_20220930/Win11_22H2_English_x64v1.iso
echo Recovery Media Created.
pause
shutdown /r /fw /t 0