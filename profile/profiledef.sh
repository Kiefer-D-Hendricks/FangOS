#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="fangos"
iso_label="FANGOS_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Kiefer D. Hendricks"
iso_application="FangOS Live Environment"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux'
           'uefi.systemd-boot')
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '1')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/home/fang"]="1000:1000:0755"
  ["/home/fang/.config"]="1000:1000:0755"
  ["/home/fang/.config/kdeglobals"]="1000:1000:0644"
  ["/home/fang/.config/plasma-org.kde.plasma.desktop-appletsrc"]="1000:1000:0644"
  ["/home/fang/.config/plasma-welcomerc"]="1000:1000:0644"
)
