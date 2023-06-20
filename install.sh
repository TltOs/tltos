#!/bin/bash
echo "### Installing Kavya ###"
git clone https://gitlab.com/liya5/kavya.git /opt/repo/kavya
echo "### Checking Chaotic-Aur ###"
pacman -Q chaotic-keyring && pacman -Q chaotic-mirrorlist
if [[ $? -eq 1 ]]; then
echo "### Chaotic-AUR is not installed, installing right away ###"
cd /tmp && wget https://hyd1-in-mirror.silky.network/chaotic-aur/chaotic-aur/x86_64/chaotic-keyring-20230616-1-any.pkg.tar.zst && wget https://hyd1-in-mirror.silky.network/chaotic-aur/chaotic-aur/x86_64/chaotic-mirrorlist-20230603-1-any.pkg.tar.zst
pacman -U chaotic-mirrorlist-20230603-1-any.pkg.tar.zst chaotic-keyring-20230616-1-any.pkg.tar.zst --noconfirm
fi
echo "### Backing Up Pacman.conf ###"
cp /etc/pacman.conf /etc/pacman.conf.bak.1
echo " " >> /etc/pacman.conf
echo "[kavya]" >> /etc/pacman.conf
echo "SigLevel = Never" >> /etc/pacman.conf
echo "Server = file:///opt/repo/kavya" >> /etc/pacman.conf
echo " " >> /etc/pacman.conf
echo "[chaotic-aur]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/chaotic-mirrorlist" >> /etc/pacman.conf 
cp -rf Scripts/* /usr/bin
mkdir -p /usr/share/liso
chmod +x /usr/bin/mkiso
cp -rf ISO-Profiles /usr/share/liso/iso-profiles
cp -rf Components /usr/share/liso/components
