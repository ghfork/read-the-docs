=======
iPython
=======

Install:

.. code-block:: bash

    $ sudo apt-get install ipython
    $ sudo apt-get install python-matplotlib
    $ sudo apt-get install ipython-notebook

    $ ipython --pylab
    $ ipython notebook --pylab

``matplotlib`` examples:

.. code-block:: python

    fig, axes = plt.subplots(figsize=(15,8))
    axes.set_xlabel('x')
    axes.set_ylabel('y')
    matplotlib.rcParams.update({'font.size': 18, 'font.family': 'STIXGeneral', 'mathtext.fontset': 'stix'})
    axes.plot(x, y)
    execfile('somefile.py');

Export notebook to html:

.. code-block:: bash

    $ ipython nbconvert file.ipynb

http://matplotlib.org/users/installing.html
