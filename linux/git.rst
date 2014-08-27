===
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

    git config --global core.editor vim
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

Changing Last Commit

.. code-block:: bash

    $ git commit --amend

Unstaging a Staged File

.. code-block:: bash
    
    $ git reset HEAD file.txt

Unmodifying a Modified File

.. code-block:: bash
    
    $ git checkout -- file.txt

http://git-scm.com/book/en/Git-Basics-Undoing-Things

