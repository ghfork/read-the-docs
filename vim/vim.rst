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

Generate numbers:

.. code-block:: vim

    :put=range(0, 15)
    " format numbers
    :put=map(range(1,150), 'printf(''%04d'', v:val)')
    " use for loop
    :for i in range(1,10) | put ='192.168.0.'.i | endfor
    " subsitute method
    :let i=100 | :%s/abc/\='xyz_' . Inc(5)/g

EX commands:

.. code-block:: vim

    expand()
    shellescape()
    call
    visualmode()
    winnr()
    wincmd w
    deepcopy()

Options:

.. code-block:: vim

    operatorfunc

If a Vimscript variable refers to a function it must start with a capital letter.

.. code-block:: vim

    :let Myfunc = function("Append")
    :echo Myfunc([1, 2], 3)

Paths:

.. code-block:: vim
    
    " relative path
    :echom expand('%')
    " absolute path
    :echom expand('%:p')
    " absolute path of file in current directory
    :echom fnamemodify('foo.txt', ':p')

Listing Files:

.. code-block:: vim

    :echo split(globpath('.', '*'), '\n')
    

Reference:  
http://learnvimscriptthehardway.stevelosh.com/
