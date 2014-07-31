Command Prompt
==============

Loop:

.. code-block:: bat

    setlocal enable delayedexpansion
    if ERRORLEVEL 1 echo Unable to enable extensions

    for /l %%x in (1 1 8) do (

    )
