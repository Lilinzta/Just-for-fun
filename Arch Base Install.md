# 1.确保 UEFI模式启动

```bash
ls /sys/firmware/efi/efivars
```

# 2.禁用自动更新mirrorlist的reflector

```bash
systemctl stop reflector.service
```

# 3.检查时钟服务状态

```bash
timedatectl status
```

# 4.换源

```bash
vim /etc/pacman.d/mirrorlist
Server = https://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch
Server = https://mirrors.hit.edu.cn/archlinux/$repo/os/$arch
```

# 5.分区

```bash
cfdisk /dev/sd(x)
```

