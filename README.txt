
A5-V11.NAS-Server.iSCSI-Storage is set of files of specific firmware for A5-V11 board (2.)

Features:
  - Minimalistic OpenWrt configuration:
    - without hotplug, udev, luci and other components
    - with drivers for TCP/IPv4 and USB mass storage
    - without libstdc++
    - with uClibc++
  - Linux-IO Target (LIO):
    - iblock backend
    - iSCSI over IP frontend
  - Telnet access
  - 1.2 MB free space in 4 MB FLASH

Default firmware configuration:
  - No overlay fs
  - No root password
  - Network interface configured as static with IP 192.168.1.1
  - LIO iblock backend /dev/sda
  - LIO iSCSI frontend 192.168.1.1

How to compile firmware:
  - Export trunk OpenWrt
  - Copy files from A5-V11.NAS-Server.iSCSI-Storage into directory with OpenWrt
  - Run make

Links:
1. https://www.openwrt.org/
2. http://wiki.openwrt.org/toh/unbranded/a5-v11
3. http://www.linux-iscsi.org
4. https://github.com/radovan-augustin/tcm_node-cpp
