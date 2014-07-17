.. _javascript

==========
JavaScript
==========


.. toctree::
    :maxdepth: 2

    meteor.rst

.. code-block:: javascript

    console.log("message");
    typeof something;
    something.hasOwnProperty();

.. code-block:: html

    <head>
        <script type="text/javascript" src="script.js"></script>
    </head>

Create Object:

.. code-block:: javascript
    
    function SomeObject () {
    
    };

Create function for all objects:

.. code-block:: javascript
    
    object.prototype.func = function() {
    
    };

HTML
====

.. code-block:: html

    <!DOCTYPE html>
    <html>
    </html>

Node.js
=======

.. code-block:: javascript

    var http = require("http");
    
    http.createServer( function(request,response) {
        response.writeHead(200, {"Content-Type": "text/plain"});
        response.write("Hello!");
        response.end();
    }).listen(8888);


http://www.nodebeginner.org/



