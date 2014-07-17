===
Vim
===

整理 code 的好幫手:

.. code-block:: vim

    :!column -t -e [-s delimit char]

Paste from clipboard without indent:

.. code-block:: vim

    :r! cat<CR><S-Ins><CR><C-D>

Use ``Ctrl-R =`` to do calulation
Ex: Jump to 6*5 line:

.. code-block:: vim

    :<C-R>=6*5<CR><CR>

