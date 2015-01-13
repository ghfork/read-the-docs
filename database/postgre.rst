Postgre
=======

sudo apt-get install postgresql postgresql-contrib

Configure
---------

.. code-block:: bash

    sudo su - postgres

    createdb mydb

    createuser -P

    // activate
    psql

    GRANT ALL PRIVILEGES ON DATABASE mydb TO myuser;
