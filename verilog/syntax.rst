======
Syntax
======

Generate Block
--------------

.. code-block:: verilog

    genvar gen_i;

    generate 
        for ( gen_i=0; gen_i<5; gen_i=gen_i+1 ) begin
        end
    endgenerate


Parameters
----------

* Define
.. code-block:: verilog

    `define period  10

* Parameters
.. code-block:: verilog

    module ABC #(
        parameter   SOME_THING  =   default_value
    ) (
    ...
    );

* Local Parameters
.. code-block:: verilog

    localparam  SOME_THING  =   value;

Gnerate Random Number
---------------------

.. code-block:: verilog

    $random % 20    // -19 ~ 19
    {$random} % 20  // 0 ~ 19

