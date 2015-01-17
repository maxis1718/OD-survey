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

<header class="header header-main z-5 w-100p hidden" role="banner">
    <nav class="navbar navbar-default b-0 br-0 mb-0 bg-n bs-n mh-64" role="navigation">
        <section class="col-lg-12">
            <div class="container">
                <div class="navbar-header">
                    <div class="navbar-brand">
                        <img src="{{ url_for('static', filename='img/favicon.png') }}" class="h-100p">
                    </div>
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


<div id="survey-demo" class="row pt-108">
    <section class="col-lg-12">
        <div class="container">
            <div class="col-lg-12">
                <div class="col-lg-5 col-md-12 col-sm-12 mt-72 pb-36">
                    <h1 class="fs-64 fw-600 mb-14 pl-18">{{ sections['demo-heading'][0]['text'] }}</h1>
                    <p class="fs-24 mb-14 pl-24">{{ sections['demo-heading'][0]['subTxt'] }}</p>
                    <ul class="badge-container w-100p pt-24 pb-18 ta-c">
                        <li class="d-ib pr-24">
                            <img src="{{ url_for('static', filename='img/app-store-badge.svg') }}" id="apple-badge">
                        </li>
                        <li class="d-ib pr-24">
                            <img src="{{ url_for('static', filename='img/google-play.png') }}" id="google-badge">
                        </li>
                    </ul>
                </div>
                <div class="col-lg-7 col-md-12 col-sm-12">
                    <div id="demo-img-wrap" class="m-0a ov-h">
                        <img src="{{ url_for('static', filename='img/odapp.png') }}" class="">
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<div id="survey-good-place" class="row pt-64">
    <section class="col-lg-12">
        <div class="container">
            <div class="col-lg-12 header">
                <div class="col-lg-4 col-md-12 col-sm-12 mt-72 fc-w">
                    <h1 class="fs-64 fw-600 mb-14">{{ sections['scenario-like'][0]['text'] }}</h1>
                    <p class="fs-24 mb-14">{{ sections['scenario-like'][0]['subTxt'] }}</p>
                </div>
                <div class="col-lg-8 col-md-12 col-sm-12">
                    {% for scenario, src in scenarios %}
                    <div class="scenario-box d-ib p-r">
                        <div class="box-bg w-100p h-100p">
                            <img src="{{ url_for('static', filename='images/'+src+'.png') }}" class="w-100p h-100p">
                        </div>
                        <div class="box-text p-a" scenario="{{ src }}">{{ scenario }}</div>
                    </div>
                    {% endfor %}                    
                </div>
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
