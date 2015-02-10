Arch
====

.. code-block:: bash

    efivar -l

    ping google.com

    lsblk

    parted /dev/sda

    # (For MBR)
    mklabel msdos

    (parted) mkpart primary ext3 1M 100M
    (parted) set 1 boot on
    (parted) mkpart primary ext3 100M 20G
    (parted) mkpart primary linux-swap 20G 24G
    (parted) mkpart primary ext3 24G 100%

    # mkfs.ext4 /dev/sdxY
    (except swap)

    # mkswap /dev/sdxY
    # swapon /dev/sdxY

    # mount /dev/sdxR /mnt

    # mkdir -p /mnt/boot
    # mount /dev/sdxB /mnt/boot

    # mkdir -p /mnt/home
    # mount /dev/sdxH /mnt/home

    # nano /etc/pacman.d/mirrorlist

    # pacstrap -i /mnt base base-devel

    # genfstab -U -p /mnt >> /mnt/etc/fstab
    # nano /mnt/etc/fstab

    # arch-chroot /mnt /bin/bash

    # nano /etc/locale.gen

    # locale-gen

    # echo LANG=en_US.UTF-8 > /etc/locale.conf

    # export LANG=en_US.UTF-8

    # ln -s /usr/share/zoneinfo/Zone/SubZone /etc/localtime

    # hwclock --systohc --utc

    # echo myhostname > /etc/hostname

    # vi /etc/hosts

    #<ip-address> <hostname.domain.org> <hostname>
    127.0.0.1 localhost.localdomain localhost myhostname
    ::1   localhost.localdomain localhost myhostname

    # passwd

    # pacman -S grub
    # grub-install --target=i386-pc --recheck /dev/sda

    # grub-mkconfig -o /boot/grub/grub.cfg

    # exit
    # reboot

Network
-------

.. code-block:: bash

    # lspci -v
    // find something like "Ethernet Controller"

    # dmesg | grep <module_name>

    # ls /sys/class/net

    # ip link set <module_name> up
    # ip link show dev <module_name>

    # dhcpd <module_name>

https://wiki.archlinux.org/index.php/Network_configuration

https://wiki.archlinux.org/index.php/Systemd-networkd#Basic_DHCP_network


Install Packages
----------------

pacman -S gvim  
pacman -S git
