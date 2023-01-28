更新日期：2023-1-28

# 0.连接wifi

```bash
# iwctl
# station wlan0 scan
# station wlan0 get-networks
# station wlan0 connect SSID
# exit
```

# 1.确保 UEFI模式启动

```bash
# ls /sys/firmware/efi/efivars
```

# 2.禁用自动更新mirrorlist的reflector

```bash
# systemctl stop reflector.service
```

# 3.检查时钟服务状态

```bash
# timedatectl status
```

# 4.换源

```bash
# vim /etc/pacman.d/mirrorlist
# Server = https://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch
# Server = https://mirrors.hit.edu.cn/archlinux/$repo/os/$arch
```

# 5.分区

```bash
# cfdisk /dev/sd(x)
```

# 6.格式化

*/和/home格式化成ext4类型，EFI分区格式化成vfat类型，交换分区使用mkswap初始化*

```bash
# mkfs.ext4 /dev/root_part
# mkfs.fat -F 32 /efi_system_part
# mkswap /dev/swap_part
```

# 7.挂载

```bash
# mount /dev/root_part /mnt
# mount --mkdir /dev/efi_system_part
# swapon /dev/swap_part
```

# 8.安装必需的软件包

```bash
# pacstrap -K /mnt base base-devel linux linux-firmware dhcpcd iwd NetworkManager wireless_tools wpa_supplicant vim git
```

# 9.配置系统

```bash
# Fstab
# genfstab -U /mnt >> /mnt/etc/fstab

# Chroot
# arch-chroot /mnt

# 设置上海时区
# ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 同步系统时间到硬件
# hwclock --systohc

# 本地化
# vim /etc/locale.gen
# locale-gen
# echo "LANG=en_US.UTF-8" > /etc/locale.conf

# 安装微码
# pacman -S intel-ucode   # Intel
# pacman -S amd-ucode     # AMD

# 安装grub引导
# pacman -S grub efibootmgr
# grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub
# grub-mkconfig -o /boot/grub/grub.cfg
```

# 10.完成安装

```bash
# 设置密码
# passwd
# exit
# umount -R /mnt
# reboot
```

# 11.图形化安装

```bash
# pacman -Syyu
# useradd -m -g users -G wheel -s /bin/bash username
# passwd username
# EDITOR=vim visudo
# #wheel ALL=(ALL)ALL ---> wheel ALL=(ALL)ALL

# pacman -S plasma-meta konsole dolphin
# systemctl enable sddm

# vim /etc/pacman.conf
[archlinuxcn]
SigLevel = Optional TrustAll
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
# pacman -Syyu
```

# 12.基础功能包

```bash
# sudo pacman -S ntfs-3g wqy-zenhei noto-fonts noto-fonts-cjk noto-fonts.emoji firefox yay

# fcitx5中文输入法
# sudo pacman -S fcitx5-im fcitx5-chinese-addons fcitx5-pinyin-moegirl fcitx5-pinyin-zhwiki
# yay -S fcitx5-material-color
# vim ~/.xprofile
export GTK_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
export QT_IM_MODULE=fcitx
```

