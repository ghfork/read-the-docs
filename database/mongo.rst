=======
MongoDB
=======


.. code-block:: bash

    > j = { name : "mongo" }
    > k = { x : 3 }

    > db.testData.insert( j )
    > db.testData.insert( k )
    > for (var i = 1; i <= 25; i++) db.testData.insert( { x : i } )

    > var c = db.testData.find()
    > while ( c.hasNext() ) printjson( c.next() )

    > var c = db.testData.find()
    > printjson( c [ 4 ] )

    > db.testData.find( { x : 18 } )
    
    # return document instead of cursor
    > db.testData.findOne()

    > db.testData.find().limit(3)

Connect using the shell:

.. code-block:: bash

    $ mongo <database_url> -u <dbuser> -p <dbpassword>

    > db.auth("<username>","<password>")
    > show dbs

    > show collections
    > db.collection.help()

    > db.<collection>.find()
    > db["<collection>"].find()
    > db.getCollection("<collection>").find()

    > DBQuery.shellBatchSize = 10; # default: 20

Evaluate a Javascript File:

.. code-block:: bash

    > load("file.js")

http://docs.mongodb.org/manual/tutorial/getting-started-with-the-mongo-shell/
