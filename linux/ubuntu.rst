======
Ubuntu
======


Samba Settings
==============

需安裝以下：

.. highlight:: bash

::

    sudo apt-get install samba
    sudo apt-get install cifs-utils

手動連線或 mount 的方法：

::
    
    smbclient //xxx.xxx.xxx.xxx/share -U name
    sudo mount -t //xxx.xxx.xxx.xxx/share /mnt/mount_point -o username=name,workgroup=group,sec=ntlmv2

開機自動 mount 的方法，在 /etc/fstab 裡加上：

::

    //xxx.xxx.xxx.xxx/share  /mnt/mount_point cifs    uid=1000,credentials=/somewhere/.credentials,iocharset=utf8,sec=ntlmv2,_netdev,nounix   0   0


ps: if plaintext, use sec=lanman.

In /etc/samba/s

::

    [global]
       workgroup = workgroup
       client lanman auth = yes
       client plaintext auth = yes
       client ntlmv2 auth = no
       security = user



Also, execute this line

::

    sudo sh -c "echo 0x30 > /proc/fs/cifs/SecurityFlags"

SSH Tunnel
==========
