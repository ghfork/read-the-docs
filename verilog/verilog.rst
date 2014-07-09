=======
Verilog
=======


Generate Block
==============

.. code-block:: verilog

    genvar gen_i;

    generate 
        for ( gen_i=0; gen_i<5; gen_i=gen_i+1 ) begin
        end
    endgenerate


Parameters
==========

* Define

* Parameters

* Local Parameters

===============
Design Compiler
===============

start:

.. code-block:: bash

    $ dc_shell-xg-t
    dc_shell> read_sverilog
    netrw


wrong polarity

.. code-block:: verilog

	always @ ( posedge dma_i_clk_p or negedge dma_i_rst_n ) begin
		if(dma_i_rst_n) begin

Use ``current_design`` to change current design.
