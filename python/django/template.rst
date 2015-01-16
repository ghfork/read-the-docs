Template
========

Syntax
------

{% if %}
{% else %}
{% endif %}

{% for %}
{% endfor %}

{% for choice in question.choice_set.all %}
	<li>{{ choice.choice_text }}</li>
{% endfor %}

URL
---

.. code-block:: html

    <li><a href="/polls/{{question.id}}/">{{ question.question_text }}</a></li>
    <li><a href="{% url 'polls:detail' question.id %}">{{ question.question_text }}</a></li>

Form
----

<form action="{% url 'polls:vote' question.id %}" method="post">
{% csrf_token %}
{% for choice in question.choice_set.all %}
	<input type="radio" name="choice" id="choice{{ forloop.counter }}" value="{{ choice.id }}" />
	<label for="choice{{ forloop.counter }}">{{ choice.choice_text }}</label><br />
{% endfor %}
<input type="submit" value="Vote" />
</form>

Cross Site Request Forgeries

Pluralize
---------

<li>{{ choice.choice_text }} -- {{ choice.votes }} vote{{ choice.votes|pluralize }}</li>

CSS
---

{% load staticfiles %}
<link rel="stylesheet" type="text/css" href="{% static 'polls/style.css' %}" />
