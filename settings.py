# -*- coding: utf-8 -*-

SITE_TITLE = u" 歐低 用手機點菜"

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
            'text': u'看看點了什麼',
            'subTxt': u'',
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
            'text': u'就是如此簡單！',
            'textClass': 'fc-black',
            'badges': False,
            'phone': True,
            'scenario': False,
            'cssClass': 'pt-192',
            'image': {'demo': 'demo/done.png' }
        },
        {
            'text': u'您覺得,',
            'subTxt': u'用 APP 點菜:',
            'form-opinions': True,
            'textClass': 'fc-black fs-48',
            'subTxtClass': 'fc-black',
            'cssClass': 'pt-108 bg-theme-a-white pb-108',
            'left': '5', 'right': '7',
        },
        {
            'text': u'您覺得,',
            'subTxt': u'哪些場合適合用 APP 點菜?',
            'form-scenario': True,
            'textClass': 'fc-white fs-48',
            'subTxtClass': 'fc-white',
            'cssClass': 'bg-themed',
            'left': '4', 'right': '8',
            'id': 'opinion-scenario',
        },
        {
            'text': u'謝謝！',
            'subTxt': u'我們很珍惜您寶貴的意見',
            'form-thanks': True,
            'textClass': 'fc-black fs-48',
            'subTxtClass': 'fc-black',
            'cssClass': 'pt-108 pb-108',
            'left': '12',
            # 'id': 'opinion-',
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

opinions = [
    { 'cht': u'不錯', 'color': '', 'bg': '', 'btn': 'success' },
    { 'cht': u'讚啦', 'color': '', 'bg': '', 'btn': 'success' },
    { 'cht': u'普通', 'color': '', 'bg': '', 'btn': 'primary' },
    { 'cht': u'沒啥用', 'color': '', 'bg': '', 'btn': 'warning' },
    { 'cht': u'很麻煩', 'color': '', 'bg': '', 'btn': 'warning' },
    { 'cht': u'糟透了', 'color': '', 'bg': '', 'btn': 'danger' },
]