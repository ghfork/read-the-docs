virtualenv
==========


.. code-block:: bash

    $ pip install virtualenv

    $ cd my_project_folder

    $ virtualenv venv
    or
    $ virtualenv -p /usr/bin/python2.7 venv

    option: --no-site-packages

    $ source venv/bin/activate

    From now on, any package that you install using pip will be placed in the venv folder, isolated from the global Python installation.

    $ deactivate

.. code-block:: bash

    pip install django-toolbelt

    django-admin.py startproject hellodjango .

    Create a Procfile
    web: gunicorn hellodjango.wsgi --log-file -

    foreman start

    pip freeze > requirements.txt
