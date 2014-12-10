{% extends "base.tpl" %}

{% block meta_title %}{% endblock %}
{% block title %}{% endblock %}

<!-- extrac css -->
{% block extra_css %}
<link rel="stylesheet" href="{{ url_for('static', filename='css/index.css') }}">
{% endblock %}

<!-- extrac js -->
{% block extra_js %}
{% endblock %}

{% block main %}

<div id="survey-compare" class="row">
    <section class="col-lg-12">
        <div class="container">
            <div class="col-lg-12">
                <h1>you like...?</h1>
                <h3>blah blah</h3>
            </div>
            <div class="col-lg-12">
                <div class="col-lg-6">
                    <div id="compare-left" class="compare-block">
                        <div class="img-container">
                            image
                        </div>
                        <div class="like-container">
                            like
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div id="compare-right" class="compare-block">
                        <div class="img-container">
                            image
                        </div>
                        <div class="like-container">
                            like
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<div id="survey-compare" class="row">
    <section class="col-lg-12">
        <div class="container">
            <div class="col-lg-12">
                <h1>scenario</h1>
                <h3>blah blah</h3>
            </div>
            <div class="col-lg-12">
                {% for scenario in scenarios %}
                <div class="scenario-box">
                    {{ scenario }}
                </div>
                {% endfor %}
            </div>
        </div>
    </section>
</div>


{% endblock %}
