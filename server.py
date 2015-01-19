# -*- coding: utf-8 -*-

from flask import Flask, render_template, url_for, make_response, Response, jsonify, request
import settings
import pymongo

app = Flask(__name__)

server = 'ds031611.mongolab.com'
port = 31611
db_name = 'heroku_app33034248'
username = 'bonsai'
password = 'gotopoopoo'

# connect to mongolab
con = pymongo.Connection(server, port)
db = con[db_name]
db.authenticate(username, password)
db.collection_names()
co = db['survey']

###############################
##         Locations         ##
###############################

@app.route('/')
def show_index():
    scenarios = [ (u'café', 'cafe'), (u'熱炒', "taiwan"), (u'居酒屋', 'izakaya'), (u'拉麵', 'ramen'), (u'酒吧', 'bar'), (u'下午茶', 'tea'), (u'早餐店', 'brunch')]
    return render_template( 'index.tpl', title=settings.SITE_TITLE, scenarios=scenarios, settings=settings )

@app.route('/send', methods=['GET', 'POST'])
def send():
    if request.method == 'GET':
        pass
    else:
        # ip, date, stay, place, opinion
        print request.form['username']


if __name__ == "__main__":

    import getopt, sys

    port = 5000
    app.debug = False

    try:
        opts, args = getopt.getopt(sys.argv[1:],'p:d',['port=', 'debug'])
    except getopt.GetoptError:
        exit(2)

    for opt, arg in opts:
        if opt in ('-p', '--port'): port = int(arg.strip())
        elif opt in ('-d','--debug'): app.debug = True

    app.run(host='0.0.0.0', port=port)






