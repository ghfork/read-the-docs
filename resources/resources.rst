=========
Resources
=========

Git Repositories
================

* `Github <https://github.com/>`_
* `Bitbucket <https://bitbucket.org/>`_

PaaS ( Platform as a Service )
==============================

* `Openshift <https://www.openshift.com/>`_
* `Heroku <https://www.heroku.com/>`_

.. code-block:: bash

    $ wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

.. code-block:: bash

    $ heroku plugins:install git://github.com/ddollar/heroku-accounts.git

    $ heroku accounts:add personal

    Add the following to your ~/.ssh/config

    Host heroku.personal
        HostName heroku.com
        IdentityFile /PATH/TO/PRIVATE/KEY
        IdentitiesOnly yes

    $ heroku accounts:default personal

    # in project root
    $ heroku accounts:set personal


Cloud Development
=================

* `Koding <https://koding.com/>`_
* `Nitrous <https://www.nitrous.io/>`_

Database
========

https://www.mongohq.com/

Tutorials
=========
* `Django Tutorials <https://docs.djangoproject.com/en/dev/intro/tutorial01/>`_

Meteor

https://www.meteor.com/learn-meteor/  
http://docs.meteor.com/

Asciinema

https://asciinema.org/
