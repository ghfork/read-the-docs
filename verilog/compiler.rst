===============
Design Compiler
===============

start:

.. code-block:: bash

    $ dc_shell-xg-t
    dc_shell> read_sverilog

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

