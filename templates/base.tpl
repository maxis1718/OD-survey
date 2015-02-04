<!doctype html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="title" content="{% block meta_title %}{% endblock %}">
    <meta name="keywords" content="{% block meta_keywords %}{% endblock %}">
    <meta name="description" content="{% block meta_description %}{% endblock %}">
    <title>{{ settings.SITE_TITLE }}</title>

    <link rel="shortcut icon" type="image/png" href="{{ url_for('static', filename='img/favicon.png') }}">

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="{{ url_for('static', filename='css/bootstrap-theme.css') }}">
    <link rel="stylesheet" href="{{ url_for('static', filename='css/bootstrap.css') }}">
    <link rel="stylesheet" href="{{ url_for('static', filename='css/shared.css') }}">
    <link rel="stylesheet" href="{{ url_for('static', filename='css/atomic.css') }}">

    {% block extra_css %}
    {% endblock %}

    <script src="{{ url_for('static', filename='js/jquery.min.js') }}"></script>
    <script src="{{ url_for('static', filename='js/bootstrap.js') }}"></script>
    <script src="{{ url_for('static', filename='js/bootstrap-extras.js') }}"></script>
    <script src="{{ url_for('static', filename='js/main.js') }}"></script>


    {% block extra_js %}
    {% endblock %}

    <!--[if lt IE 9]>
    <script src="{{ url_for('static', filename='js/html5shiv.js') }}"></script>
    <script src="{{ url_for('static', filename='js/respond.min.js') }}"></script>
    <![endif]-->

    {% block extra_head %}
    {% endblock %}

</head>

<body>

<div class="wrap">
    {% block main %}
    {% endblock %}
</div>

</body>
</html>
