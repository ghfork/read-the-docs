======
Sphinx
======


.. code-block:: bash

    $ sudo apt-get install python
    $ sudo apt-get install python-sphinx

reStructured
============

Use ``toctree`` to build the tree structure::

    .. toctree::
        :maxdepth: 2

Sections

* # with overline, for parts
* \* with overline, for chapters
* =, for sections
* -, for subsections
* ^, for subsubsections
* ", for paragraphs



Use``code``(with space before and after backticks) to show inline code

Inline ``code`` like this.

Build a code block:

::

    .. highlight:: c

    ::
        CODE Here
        ...
    


http://www.openfoundry.org/tw/foss-programs/9018-sphinx-restructuredtext-




