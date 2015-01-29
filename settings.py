# -*- coding: utf-8 -*-

SITE_TITLE = u"APP 點菜 ?"

APPLE_BADGE = 'app-store-badge.svg'
GOOGLE_BADGE = 'google-play.png'

sections = {
    'demo-heading': [
        # {
        #     'text': u'如果,',
        #     'subTxt': u'點菜可以這樣:',
        #     'phone': True,
        #     'scenario': False,
        #     'textClass': 'fc-black',
        #     'subTxtClass': 'fc-black',                  
        #     'cssClass': 'pt-160 b-w',
        #     'image': {'demo': 'demo/qrcode.png' }
        # },
        {
            'text': u'如果,',
            'subTxt': u'點菜可以這樣:',
            'phone': True,
            'scenario': False,
            'textClass': 'fc-black',
            'subTxtClass': 'fc-black',                  
            'cssClass': 'pt-192 b-w',
            'image': {'demo': 'demo/menu.png' }
        },
        {
            'text': u'輕輕一滑',
            'subTxt': u'點了什麼都一目了然  <i class="fa fa-smile-o"></i>',
            'triTxt': u'',
            'phone': True,
            'scenario': False,
            'textClass': 'fc-black',
            'subTxtClass': 'fc-black',
            'cssClass': 'pt-192 b-w',
            'image': {'demo': 'demo/history.png' }
        },
        {
            'text': u'無論是在',
            'subTxt': u'文青的咖啡廳，還是熱鬧的快炒店',
            'phone': False,
            'scenario': True,
            # 'id': 'survey-good-place',
            'left': '4', 'right': '8',
            'textClass': 'fc-white',
            'subTxtClass': 'fc-white',
            'cssClass': 'bg-theme-a-grey',
        },
        {
            'text': u'點餐',
            'subTxt': u'可以如此簡單！',
            'textClass': 'fc-black',
            'badges': False,
            'phone': True,
            'scenario': False,
            'cssClass': 'pt-192',
            'image': {'demo': 'demo/done.png' }
        },
        {
            'text': u'您覺得,',
            'subTxt': u'用 APP 點菜如何?',
            'triTxt': u'點選來選擇意見 <i class="fa fa-hand-o-right"></i>',
            'form-opinions': True,
            'textClass': 'fc-black fs-48',
            'subTxtClass': 'fc-black',
            'triTxtClass': 'fc-333 pt-24',
            'cssClass': 'pt-108 bg-theme-a-white pb-108',
            'left': '5', 'right': '7',
        },
        {
            'text': u'您覺得,',
            'subTxt': u'哪些場合適合用 APP 點菜?',
            'triTxt': u'點一下吧 <i class="fa fa-hand-o-right"></i>',
            'form-scenario': True,
            'textClass': 'fc-white fs-48',
            'subTxtClass': 'fc-white',
            'triTxtClass': 'fc-white pt-24',
            'cssClass': 'bg-themed',
            'left': '4', 'right': '8',
            'id': 'opinion-scenario',
        },
        {
            'text': u'等等',
            'subTxt': u'我還有話要說：',
            # 'form-thanks': True,
            'form-comment': True,
            'textClass': 'fc-white fs-48',
            'subTxtClass': 'fc-white',
            'cssClass': 'pt-64 pb-64 bg-333',
            'left': '5', 'right': '7'
        },
        {
            'text': u'謝謝！',
            'subTxt': u'我們很珍惜您寶貴的意見',
            'form-thanks': True,
            'textClass': 'fc-black fs-48',
            'subTxtClass': 'fc-black',
            'cssClass': 'pt-108 pb-160',
            'left': '5', 'right': '7'
        },
    ],
    'demo-images': [
        'odapp.png',
        'odapp.png',
    ],
    'form-heading': [
        {
            'text': u'',
            'subTxt': u'',
        },
    ]
}

form = {
    'text': ''
}

ages = list(enumerate([u'10 以下', u'10 - 20', u'20 - 30', u'30 - 40', u'40 - 50', u'50 - 60', u'60 以上']))

opinions = [
    { 'id': 'notbad',       'cht': u'不錯',   'btn': 'success',  'score': 3, },
    { 'id': 'awesome',      'cht': u'讚啦',   'btn': 'success',  'score': 5, },
    { 'id': 'soso',         'cht': u'普通',   'btn': 'primary',  'score': 1,},
    { 'id': 'useless',      'cht': u'沒啥用', 'btn': 'warning',  'score': 0,},
    { 'id': 'inconvenient', 'cht': u'很麻煩', 'btn': 'warning',  'score': -1,},
    { 'id': 'sucks',        'cht': u'糟透了', 'btn': 'danger',   'score': -2,},
]
