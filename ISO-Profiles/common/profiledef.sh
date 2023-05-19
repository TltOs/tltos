#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="Liya"
iso_label="NLIYA"
iso_publisher="Liya <https://liyalinux.gitlab.io/>"
iso_application="Liya Installer"
iso_version="2023"
install_dir="liso"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '10' '-b' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/liya-update"]="0:0:755"
  ["/usr/bin/nemo_action-mount_iso.sh"]="0:0:755"
  ["/usr/local/bin/lwd-live"]="0:0:755"
)
