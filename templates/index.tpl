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
<img class="hidden" src="{{ url_for('static', filename='img/like-button-blue.png') }}" />
<img class="hidden" src="{{ url_for('static', filename='img/like-button-gray.png') }}" />

<header class="header header-main z-5 w-100p" role="banner">

    <nav class="navbar navbar-default b-0 br-0 mb-0 bg-n bs-n mh-64" role="navigation">
        <section class="col-lg-12">
            <div class="container">
                <div class="navbar-header">
                    <div class="navbar-brand"></div>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li></li>
                        <li></li>
                    </ul>
                </div>
            </div>
        </section>
    </nat>    
</header>


<div id="survey-demo" class="row">
    <section class="col-lg-12">
        <div class="container">
            <div class="col-lg-12">
                <div class="col-lg-5 mt-72">
                    <h1 class="fs-64 fw-600 mb-14">{{ sections['demo']['heading']['text'] }}</h1>
                    <p class="fs-24 mb-14">{{ sections['demo']['heading']['subTxt'] }}</p>                    
                </div>
                <div class="col-lg-7 col-md-12 col-sm-12">
                    <div id="compare-left" class="compare-block">
                        <div class="img-container p-r m-0a">
                            <img class="p-r" src="{{ url_for('static', filename='img/bg-iphone-gold.png') }}" />
                            <div class="content p-a bg-w z-1"><span style="color: #ccc;">demo images</span></div>
                            <!-- <div class="like-btn"></div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<div id="survey-good-place" class="row">
    <section class="col-lg-12">
        <div class="container">
            <div class="col-lg-12 header">
                <h1>哪些地方</h1>
                <h3>想用 app 點菜?</h3>
            </div>
            <div class="col-lg-12">
                {% for scenario, src in scenarios %}
                <div class="scenario-box">
                    <div class="box-bg">
                        <img src="{{ url_for('static', filename='images/'+src+'.png') }}">
                    </div>
                    <div class="box-text" scenario="{{ src }}">{{ scenario }}</div>
                </div>
                {% endfor %}
            </div>
        </div>
    </section>
</div>

<div id="survey-bad-place" class="row">
    <section class="col-lg-12">
        <div class="container">
            <div class="col-lg-12 header">
                <h1>哪些地方</h1>
                <h3><strong>不</strong> 想用 app 點菜?</h3>
            </div>
            <div class="col-lg-12">
                {% for scenario, src in scenarios %}
                <div class="scenario-box" scenario="{{ src }}">
                    <div class="box-bg">
                        <img src="{{ url_for('static', filename='images/'+src+'.png') }}">
                    </div>
                    <div class="box-text">{{ scenario }}</div>
                </div>
                {% endfor %}
            </div>
        </div>
    </section>
</div>


<div id="survey-gender" class="row">
    <section class="col-lg-12">
        <div class="container">
            <div class="col-lg-12 header">
                <h1>我是</h1>
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
<div id="survey-submit" class="row">
    <section class="col-lg-12">
        submit
    </section>
</div>

{% endblock %}
