.. _javascript

==========
Javascript
==========


.. toctree::
    :maxdepth: 2

    meteor.rst

.. code-block:: javascript

    console.log("message");
    typeof something;
    something.hasOwnProperty();

.. code-block:: JavaScript

    <head>
        <script type="text/javascript" src="script.js"></script>
    </head>

Create Object:

.. code-block:: JavaScript
    
    function SomeObject () {
    
    };

Create function for all objects:

.. code-block:: JavaScript
    
    object.prototype.func = fuction() {
    
    };

HTML
====

.. code-block:: HTML

    <!DOCTYPE html>
    <html>
    </html>

Node.js
=======

.. code-block:: Javascipt

    var http = require("http");
    
    http.createServer( function(request,response) {
        response.writeHead(200, {"Content-Type": "text/plain"});
        response.write("Hello!");
        response.end();
    }).listen(8888);


http://www.nodebeginner.org/



