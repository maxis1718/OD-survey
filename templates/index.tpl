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
            <div class="col-lg-12 header">
                <h1>you like...?</h1>
                <h3>blah blah</h3>
                <img class="hidden" src="{{ url_for('static', filename='img/like-button-blue.png') }}" />
                <img class="hidden" src="{{ url_for('static', filename='img/like-button-gray.png') }}" />                
            </div>
            <div class="col-lg-12">
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <div id="compare-left" class="compare-block">
                        <div class="img-container">
                            <img src="{{ url_for('static', filename='img/5s_display_large_2x.png') }}" />
                            <div class="content">
                                <a href="https://www.fluidui.com/editor/live/preview/p_mhTesNKF2lLgFbCHX1xUEeccb0aQg8BD.1419868694068" target="_blank">
                                    <img src="{{ url_for('static', filename='img/odapp.png') }}">
                                </a>
                            </div>
                            <div class="like-btn"></div>
                        </div>
                        <!-- <div class="like-container">like</div> -->
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12">
                    <div id="compare-right" class="compare-block">
                        <div class="img-container">
                            <img src="{{ url_for('static', filename='img/5s_display_large_2x.png') }}" />
                            <div class="content">iframe</div>
                            <div class="like-btn"></div>                          
                        </div>
                        <!-- <div class="like-container">like</div> -->
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
