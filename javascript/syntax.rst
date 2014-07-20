======
Syntax
======

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


Prototype:

.. code-block:: javascript

    // the original Animal class and sayName method
    function Animal(name, numLegs) {
        this.name = name;
        this.numLegs = numLegs;
    }
    Animal.prototype.sayName = function() {
        console.log("Hi my name is " + this.name);
    };
    
    // define a Penguin class
    function Penguin (name) {
        this.name = name;
        this.numLegs = 2;
    };
    
    // set its prototype to be a new instance of Animal
    Penguin.prototype = new Animal();

