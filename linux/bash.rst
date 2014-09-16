BASH
====

Loop:

.. code-block:: bash

    for i in {1..8}
    do
        echo $i
    done

Change case:

.. code-block:: bash

    x="abc"
    x=${x^^}
    # abc -> ABC

    y="ABC"
    y=${y,,}
    # ABC -> abc
