======
Ubuntu
======

Bash Tips
=========

System Information:

.. code-block:: bash

    uname -a
    cat /etc/system-release
    lshw

Samba Settings
==============

需安裝以下：

.. code-block:: bash

    $ sudo apt-get install samba
    $ sudo apt-get install cifs-utils

手動連線或 mount 的方法：

.. code-block:: bash
    
    $ smbclient //xxx.xxx.xxx.xxx/share -U name
    $ sudo mount -t //xxx.xxx.xxx.xxx/share /mnt/mount_point -o username=name,workgroup=group,sec=ntlmv2

開機自動 mount 的方法，在 /etc/fstab 裡加上：

.. code-block:: bash

    //xxx.xxx.xxx.xxx/share  /mnt/mount_point cifs    uid=1000,credentials=/somewhere/.credentials,iocharset=utf8,sec=ntlmv2,_netdev,nounix   0   0


ps: if plaintext, use ``sec=lanman`` .

In /etc/samba/s

.. code-block:: bash

    [global]
       workgroup = workgroup
       client lanman auth = yes
       client plaintext auth = yes
       client ntlmv2 auth = no
       security = user

Also, execute this line

.. code-block:: bash

    $ sudo sh -c "echo 0x30 > /proc/fs/cifs/SecurityFlags"


git
===

Simple work flow::

    git init
    git add .
    git commit
    git remote add origin https://xxx/xxx.git
    git push -u origin master

Show config::

    git config -l

Edit config::

    git config -e

Switch protocol::

    git config remote.origin.url git@github.com:xxxx/xxxx


Add new repository::

    git remote add 'custom_name' https://xxx/xxx.git
    git push -u origin --all
    git push -u origin --tags
    git remote -v # verify new remote repository

Change remote url::
    
    git remote set-url 'name' 'url'

Add multiple remote push::

    [remote "Origin"]
        url = git@github.com:xxx.git
        url = git@codaset.com:xxx.git

SSH Tunnel
==========

Useful Packages
===============

    sudo apt-get install alarm-clock-applet guake tree fonts-wqy-zenhei

