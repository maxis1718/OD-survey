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
<!-- cache -->
<img src="{{ url_for('static', filename='img/restaurant.icon.png') }}" class="hidden" />
<img src="{{ url_for('static', filename='img/demo/menu.png') }}" class="hidden" />
<img src="{{ url_for('static', filename='img/demo/qrcode.png') }}" class="hidden" />
<img src="{{ url_for('static', filename='img/demo/history.png') }}" class="hidden" />
<img src="{{ url_for('static', filename='img/demo/done.png') }}" class="hidden" />
<i class="fa fa-mars pl-8 hidden"></i>
<i class="fa fa-transgender pl-8 hidden"></i>
<i class="fa fa-venus pl-8 hidden"></i>

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
                    {% if section['triTxt'] %}<p class="fs-18 mb-14 pl-24 {{ '' if 'triTxtClass' not in section else section['triTxtClass'] }}">{{ section['triTxt'] }}</p>{% endif %}

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
                        <div class="box-text bca-40 p-a fs-24 lh-72 fc-white z-1" scenario="{{ src }}">
                            <span>{{ scenario }}</span>
                        </div>
                        <i class="fa fa-check-circle p-a z-3 fc-white fs-24 hidden"></i>
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
                        <button class="opinion-tag d-ib btn btn-{{ opinion['btn'] }} mb-36" score="{{ opinion['score'] }}" opid="{{ opinion['id'] }}" text="{{ opinion['cht'] }}">
                            <div class="opinion-text d-ib">{{ opinion['cht'] }}</div><div class="opinion-add opinion-toggle d-ib">+</div><div class="opinion-minus opinion-toggle d-ib hidden">-</div>
                        </button>
                        {% endfor %}
                    </div>
                    <div class="opinion-more-container mt-24 mb-108 fs-20">
                        <span class="opinion-more-text fc-6">還有:</span>
                        <input class="opinion-more-input fc-8 pr-4 pl-4 bg-n" val=""/>
                    </div>               
                    {% endif %}

                    {% if 'form-comment' in section and section['form-comment'] %}
                    <div class="comments-container mb-48 mt-96">
                        <textarea class="form-control fs-24 mb-18 pr-18 pl-18 pt-12 pb-12" placeholder="把想法都寫在這吧..." rows="3"></textarea>
                        <div class="f-r">
                            <button type="submit" class="btn btn-primary ol-0 hidden">Say it loud</button>
                        </div>
                    </div>
                    {% endif %}

                    {% if 'form-thanks' in section and section['form-thanks'] %}
                    <div class="thanks-container mb-48 mt-48">
                        <div class="pb-24">
                            <span class="d-ib txt-toggle fs-18">最後，</span>
                            <span class="d-ib txt-toggle fs-18 hidden">我今年：</span>
                            <div class="dropdown d-ib" id="age-dropdown">
                                <button class="btn btn-default dropdown-toggle" type="button" id="age-dropdown-btn" data-toggle="dropdown" aria-expanded="true">
                                    <span class="btn-text pr-4 fs-18" value="-1">偷偷透露一下年紀吧</span><span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="age-dropdown-btn">
                                    {% for i, age in settings.ages %}
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" class="age-opt" value="{{ i }}">{{ age }}</a>
                                    </li>
                                    {% endfor %}
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" class="age-opt" value="-1">年齡保密</a></li>
                                </ul>
                            </div>                            
                        </div>
                        <div class="pb-24">
                            <span class="d-ib txt-toggle fs-18">那，</span>
                            <span class="d-ib txt-toggle fs-18 hidden">我是：</span>
                            <div class="dropdown d-ib" id="gender-dropdown">
                                <button class="btn btn-default dropdown-toggle" type="button" id="gender-dropdown-btn" data-toggle="dropdown" aria-expanded="true">
                                    <span class="btn-text pr-4 fs-18" value="-1">您是男生還是女生</span><span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="gender-dropdown-btn">
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" class="gender-opt" value="male">
                                            <span>型男</span>
                                            <i class="fa fa-mars pl-8"></i>
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" class="gender-opt" value="female">
                                            <span>正妹</span>
                                            <i class="fa fa-venus pl-8"></i>
                                        </a>
                                    </li>
                                    <li role="presentation">
                                        <a role="menuitem" tabindex="-1" class="gender-opt" value="other">
                                            <span>第三性</span>
                                            <i class="fa fa-transgender pl-8"></i>
                                        </a>
                                    </li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" class="gender-opt" value="-1">性別保密</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="pb-24 f-r">
                            <button type="submit" class="btn btn-success fs-18" id="submit-all-btn">OK ! 送出</button>
                        </div>                        
                    </div>
                    {% endif %}
                </div>
            </div>
        </div>
    </section>
</div>
{% endfor %}
{% endblock %}
