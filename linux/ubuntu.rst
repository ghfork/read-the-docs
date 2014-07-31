======
Ubuntu
======


Samba Settings
==============

需安裝以下：

.. code-block:: bash

    $ sudo apt-get install samba
    $ sudo apt-get install cifs-utils

手動連線或 mount 的方法：

.. code-block:: bash
    
    $ smbclient ////xxx.xxx.xxx.xxx/share -U <username> -W <workgroup>
    $ sudo mount -t //xxx.xxx.xxx.xxx/share /mnt/mount_point -o username=name,workgroup=group,sec=ntlmv2,uid=1000

Unmount:

.. code-block:: bash

    $ umount <mount>

開機自動 mount 的方法，在 ``/etc/fstab`` 裡加上：

.. code-block:: bash

    //xxx.xxx.xxx.xxx/share  /mnt/mount_point cifs    uid=1000,credentials=/somewhere/.credentials,iocharset=utf8,sec=ntlmv2,_netdev,nounix   0   0


ps: if plaintext, use ``sec=lanman`` .

In ``/etc/samba/smb.conf``

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


Git
===

Simple work flow::

    git config --global user.email "you@example.com"
    git config --global user.name "Your Name"
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

Create central repository::

    git init --bare <directory> # create central repository

Show tracked files::

   git ls-tree -r master --name-only 

Remove all history::

    rm -rf .git

    git init
    git add .
    git commit

    git remote add origin <git-repo>
    git push -u --force origin master

Show all files::

    git ls-tree --full-tree --name-only -r HEAD 

SSH Tunnel
==========

Home_Computer:

.. code-block:: bash

    apt-get install openssh-server
    sudo vim /etc/ssh/sshd_config

Add one line:
``GatewayPorts yes``

.. code-block:: bash

    /etc/init.d/ssh restart


Local forward:

Local ( Yourself ) -> Intermediate -> Destination
On [ Yourself ] type:

.. code-block:: bash

    ssh -[N]L localport:dest_ip:dest_port intermediate_ip

- Connect to Destination via Intermediate

``-N`` : Do not execute remote command  
``-L`` : Local forward

Remote forward:

Remote -> Intermediate ( Yourself ) -> Destination
On [ Yourself ] type:

.. code-block:: bash

    ssh -[N]R remoteport:dest_ip:dest_port remote_ip

- Let Remote connect to Destination via Yourself  
- Note: The Destination can be Yourself

``-R`` : Remote forward


Bash Tips
=========

System Information:
-------------------

.. code-block:: bash

    uname -a
    cat /etc/system-release
    lshw
    lspci

Clip:
-----

.. code-block:: bash

    $ xclip -sel clip < yourfile

Generate SSH Keys:
------------------

.. code-block:: bash

    $ ssh-keygen -t rsa -C "your_email@example.com"

Find files:
-----------

.. code-block:: bash
   
    # find file
    $ locate
    # update database
    $ sudo updatedb

    # find command
    $ which
    $ whereis


.. code-block:: bash
   
    $ find -type d -maxdepth 1 -ls

top
---

``i`` show/disable idle
``c`` command line
``f`` fileds
``0`` zero-suppress
``V`` forest-view-mode

``P`` sort with CPU usage
``T`` sort with Time
``M`` sort with Memory usage
``L`` search
``&`` find next

Filter

``o`` Other-Filter (ignore case)
``O`` Case sensitive

ex: ``COMMAND=simv``

Useful Packages
===============

Programming
-----------

python-pip
mongo-db

Utils
-----

unity-tweak-tool

qalculate
    圖形化界面計算機

alarm-clock-applet
    倒數計時器

guake
    掛在螢幕上方的 Terminal

tree
    樹狀顯示資料夾

fonts-wqy-zenhei
    中文字型

htop
    一個比較好用的 top !

xclip
    剪貼簿
