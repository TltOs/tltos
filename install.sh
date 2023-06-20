#!/bin/bash
cp -rf Scripts/* /usr/bin
mkdir -p /usr/share/liso
chmod +x /usr/bin/mkiso
cp -rf ISO-Profiles /usr/share/liso/iso-profiles
cp -rf Components /usr/share/liso/components
