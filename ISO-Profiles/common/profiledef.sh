#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="Liya$iso_version"
iso_label="OLIYA"
iso_publisher="Liya <https://liyalinux.gitlab.io/>"
iso_application="Liya GNU+Linux Live Environment"
iso_version="23"
install_dir="liso"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-ia32.grub.esp' 'uefi-x64.grub.esp' 'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '8' '-b' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/liya-update"]="0:0:755"
  ["/usr/local/bin/linver"]="0:0:755"
  ["/usr/local/bin/checktpm"]="0:0:755"
  ["/usr/local/bin/kernel-support"]="0:0:755"
  ["/usr/local/bin/ufetch-liya"]="0:0:755"
  ["/usr/local/bin/datetimestamp"]="0:0:755"
  ["/usr/local/bin/fixpacrepo"]="0:0:755"
)
