Setup
=====

.. code-block:: bash

    // django-admin.py startproject hellodjango .

    $ python manage.py migrate

    $ python manage.py runserver [127.0.0.1:8000]

    // Let other computers see:  
    $ python manage.py runserver 0.0.0.0:8000

    // Create App:  
    $ python manage.py startapp polls

Migration
---------

.. code-block:: bash

    $ python manage.py makemigrations polls

    // $ python manage.py sqlmigrate polls 0001

    //Optional:  
    python manage.py check

    python manage.py migrate

Admin
-----

.. code-block:: bash

    $ python manage.py createsuperuser

Register:

.. code-block:: python

    from django.contrib import admin
    from polls.models import Question

    # Optional:
    # class ChoiceInline(admin.StackedInline):
    class ChoiceInline(admin.TabularInline):
        model = Choice
        extra = 3

    class QuestionAdmin(admin.ModelAdmin):
        # fields = ['pub_date', 'question_text']
        fieldsets = [
            (None,                  {'fields': ['question_text']}),
            ('Date information',    {'fields': ['pub_date'], 'classes': ['collapse']}),
        ]
        inlines = [ChoiceInline]

    admin.site.register(Question[, QuestionAdmin])

API
---

$ python manage.py shell

>>> Question.objects.all()
>>> Question.objects.filter(question_text__startswith='What')
>>> Question.objects.filter(id=1)
>>> Question.objects.get(pub_date__year=current_year)

>>> q = Question.objects.get(pk=1)
>>> q.choice_set.all()
>>> q.choice_set.create(choice_text='Not much', votes=0)

>>> q.choice_set.count()

>>> Choice.objects.filter(question__pub_date__year=current_year)

Use Postgre
-----------

.. code-block:: bash
    sudo apt-get install libpq-dev python-dev

    pip install psycopg2


    // In settings.py

        DATABASES = {
            'default': {
                'ENGINE': 'django.db.backends.postgresql_psycopg2', # Add 'postgresql_psycopg2', 'mysql', 'sqlite3' or 'oracle'.
                'NAME': 'mydb',                      # Or path to database file if using sqlite3.
                # The following settings are not used with sqlite3:
                'USER': 'myuser',
                'PASSWORD': 'password',
                'HOST': 'localhost',                      # Empty for localhost through domain sockets or           '127.0.0.1' for localhost through TCP.
                'PORT': '',                      # Set to empty string for default.
            }
        }

    python manage.py syncdb
