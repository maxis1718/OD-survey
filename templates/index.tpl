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
                <h3>哪些地方想用 app 點菜?</h3>
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

<div id="survey-compare" class="row">
    <section class="col-lg-12">
        <div class="container">
            <div class="col-lg-12">
                <h1>scenario</h1>
                <h3>哪些地方"不"想用 app 點菜?</h3>
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


<div id="survey-compare" class="row">
    <section class="col-lg-12">
        <div class="container">
            <div class="col-lg-12">
                <h1>我是...</h1>
                <h3></h3>
            </div>
            <div id="gender-block" class="col-lg-12">
                <div class="info-box male">
                    <div class="box-wrap">
                        <img src="{{ url_for('static', filename='img/male.png') }}">
                    </div>
                    <div class="box-footer">
                        <div class="arrow-up invisible"></div>
                    </div>
                </div>
                <div class="info-box female">
                    <div class="box-wrap">
                        <img src="{{ url_for('static', filename='img/female.png') }}">
                    </div>
                    <div class="box-footer">
                        <div class="arrow-up invisible"></div>
                    </div>
                </div>
            </div>
            <div id="age-block" class="col-lg-12">
                <span>< 10</span>
                <span>10-20</span>
                <span>20-30</span>
                <span>30-40</span>
                <span>40-50</span>
                <span>50-60</span>
                <span>> 60</span>
            </div>            
        </div>
    </section>
</div>

{% endblock %}
