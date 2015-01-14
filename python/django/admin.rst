Admin
=====

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

        list_filter = ['pub_date']
        search_fields = ['question_text']

    admin.site.register(Question[, QuestionAdmin])

