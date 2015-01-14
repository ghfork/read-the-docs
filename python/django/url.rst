URL
===

vim app/urls.py

.. code-block:: python

    from django.conf.urls import patterns, url

    from polls import views

    urlpatterns = patterns('',
	    url(r'^$', views.index, name='index'),
    )

In project/urls.py, add:

.. code-block:: python

    urlpatterns = patterns('',
        # Examples:
        # url(r'^$', 'practice.views.home', name='home'),
        # url(r'^blog/', include('blog.urls')),
        # Add this
	    url(r'^polls/', include('polls.urls')),
        url(r'^admin/', include(admin.site.urls)),
    )
