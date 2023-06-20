#!/bin/bash
sudo cp -rf Scripts/* /usr/bin
mkdir -p /usr/share/liso
chmod +x /usr/bin/mkiso
sudo cp -rf ISO-Profiles /usr/share/liso/iso-profiles
sudo cp -rf Components /usr/share/liso/components
