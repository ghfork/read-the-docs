=======
Verilog
=======

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

Design Compiler
===============

start:

.. code-block:: bash

    $ dc_shell-xg-t
    dc_shell> read_sverilog
    netrw

Use ``current_design`` to change current design.

Debug
-----

Wrong polarity:

.. code-block:: verilog

	always @ ( posedge dma_i_clk_p or negedge dma_i_rst_n ) begin
		if(dma_i_rst_n) begin # wrong, should be '(!dma_i_rst_n)'
		end else begin
		end
	end

