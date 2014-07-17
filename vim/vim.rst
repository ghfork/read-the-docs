===
Vim
===

整理 code 的好幫手::

    :!column -t -e [-s delimit char]

Paste from clipboard without indent::

    :r! cat<CR>
    <Shift+Insert>
    <Ctrl+D>

Use Ctrl-R = to do calulation
Ex: Jump to 6*5 line::

    :<C-R>=6*5<CR><CR>

