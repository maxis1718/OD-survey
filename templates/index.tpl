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

{% for section in settings.sections['demo-heading'] %}
<div id="{{ '' if 'id' not in section else section['id'] }}" class="row section pt-64 {{ '' if 'cssClass' not in section else section['cssClass'] }}">
    <section class="col-lg-12">
        <div class="container">
            <div class="col-lg-12">
                <div class="col-lg-{{ '5' if 'left' not in section else section['left'] }} col-md-12 col-sm-12 mt-72 pb-36">
                    {% if section['text'] %}<h1 class="fs-64 fw-600 mb-14 pl-18 {{ '' if 'textClass' not in section else section['textClass'] }}">{{ section['text'] }}</h1>{% endif %}
                    {% if section['subTxt'] %}<p class="fs-24 mb-14 pl-24 {{ '' if 'subTxtClass' not in section else section['subTxtClass'] }}">{{ section['subTxt'] }}</p>{% endif %}
                    {% if section['triTxt'] %}<p class="fs-24 mb-14 pl-24 {{ '' if 'triTxtClass' not in section else section['triTxtClass'] }}">{{ section['triTxt'] }}</p>{% endif %}

                    {% if section['badges'] %}
                    <ul class="badge-container w-100p pt-24 pb-18 ta-c">
                        <li class="d-ib pr-24">
                            <img src="{{ url_for('static', filename='img') }}/{{ settings.APPLE_BADGE }}" id="apple-badge">
                        </li>
                        <li class="d-ib pr-24">
                            <img src="{{ url_for('static', filename='img') }}/{{ settings.GOOGLE_BADGE }}" id="google-badge">
                        </li>
                    </ul>
                    {% endif %}
                </div>
                <div class="col-lg-{{ 7 if 'right' not in section else section['right'] }} col-md-12 col-sm-12">

                    <!-- demo -->
                    {% if 'phone' in section and section['phone'] and 'image' in section %}
                    <div id="demo-img-wrap" class="m-0a ov-h">
                        <img src="{{ url_for('static', filename='img') }}/{{ section['image']['demo'] }}" class="">
                    }
                    </div>
                    {% endif %}

                    <!-- scenario -->
                    {% if 'scenario' in section and section['scenario'] %}
                    {% for scenario, src in scenarios %}
                    <div class="scenario-box d-ib p-r">
                        <div class="box-bg w-100p h-100p">
                            <img src="{{ url_for('static', filename='images/'+src+'.png') }}" class="w-100p h-100p">
                        </div>
                        <div class="box-text bca-40 p-a fs-24 lh-72 fc-white z-1" scenario="{{ src }}">{{ scenario }}</div>
                    </div>
                    {% endfor %}
                    {% endif %}

                    <!-- form -->
                    {% if 'form-scenario' in section and settings.form %}
                    {% for scenario, src in scenarios %}
                    <div class="scenario-box f-l p-r">
                        <div class="box-bg w-100p h-100p">
                            <img src="{{ url_for('static', filename='images/'+src+'.png') }}" class="w-100p h-100p">
                        </div>
                        <div class="box-text bca-40 p-a fs-24 lh-72 fc-white z-1" scenario="{{ src }}">{{ scenario }}</div>
                    </div>
                    {% endfor %}
                    <div class="scenario-box scenario-add f-l p-r">
                        <div class="box-text p-a fs-48 lh-64 fc-c z-1 scenario-more-plus" scenario="">+</div>
                        <div class="box-text p-a lh-24 z-1 scenario-more-input-wrap hidden"><input class="scenario-more-input fs-24 mt-18 fc-white lh-24" val="123"/></div>
                        
                    </div>
                    {% endif %}

                    <!--  -->
                    {% if 'form-opinions' in section and settings.opinions %}
                    <div class="opinions-container d-ib mb-48 mt-96">
                        {% for opinion in settings.opinions %}
                        <button class="opinion-tag d-ib btn btn-{{ opinion['btn'] }} mb-36">
                            <div class="opinion-text d-ib" val="{{ opinion_key }}" >{{ opinion['cht'] }}</div><div class="opinion-add opinion-toggle d-ib">+</div><div class="opinion-minus opinion-toggle d-ib hidden">-</div>
                        </button>
                        {% endfor %}
                    </div>
                    <div class="opinion-more-container mt-24 mb-108 fs-20">
                        <span class="opinion-more-text fc-6">還有:</span>
                        <input class="opinion-more-input fc-8 pr-4 pl-4 bg-n" val=""/>
                    </div>               
                    {% endif %}
            </div>
        </div>
    </section>
</div>
{% endfor %}





<div id="survey-gender" class="row hidden">
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
<div id="survey-submit" class="row hidden">
    <section class="col-lg-12">
        submit
    </section>
</div>

<!-- <div>
    <iframe name="frame" src="https://moqups.com/jordan00830@gmail.com/rwGGjJuF" scrolling="no" onload="window.frames['frame'].scrollTo(50,500)"></iframe>
</div> -->
{% endblock %}
