# -*- coding: utf-8 -*-

from flask import Flask, render_template, url_for, make_response, Response, jsonify, request
import settings
import json
import datetime
import pymongo

import hashlib
from sqlalchemy import create_engine
from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import ForeignKey
from sqlalchemy.orm import relationship, backref
from sqlalchemy.orm import sessionmaker

app = Flask(__name__)

# server = 'ds031611.mongolab.com'
# port = 31611
# db_name = 'heroku_app33034248'
# username = 'bonsai'
# password = 'gotopoopoo'

# connect to mongolab
# con = pymongo.Connection(server, port)
# db = con[db_name]
# db.authenticate(username, password)
# db.collection_names()
# co = db['survey']

Base = declarative_base()

class Metadata(Base):
    """
    rid: (unique) int, request id
    age: int
    gender: str
    ip: str
    time: datetime
    """
    __tablename__ = 'metadata'

    rid = Column(Integer, primary_key=True, autoincrement=True)
    age = Column(String)
    gender = Column(String)
    ip = Column(String)
    time = Column(String)
 
    def __init__(self, age, gender, ip, time):
        self.age = age
        self.gender = gender
        self.ip = ip
        self.time = time
 
    def __repr__(self):
        return "Metadata('%s','%s', '%s', '%s')" % \
        (self.age, self.gender, self.ip, self.time)

class Comments(Base):
    """
    rid: (unique) int, request id
    comment: str
    """
    __tablename__ = 'comments'

    cid = Column(Integer, primary_key=True)
    rid = Column(Integer)
    comment = Column(String)
 
    def __init__(self, rid, comment):
        self.rid = rid
        self.comment = comment
 
    def __repr__(self):
        return "Comments('%d','%s')" % \
        (self.rid, self.comment)

class Scenarios(Base):
    """
    rid
    place
    """
    __tablename__ = 'scenarios'

    sid = Column(Integer, primary_key=True)
    rid = Column(Integer)
    place = Column(String)
 
    def __init__(self, rid, place):
        self.rid = rid
        self.place = place
 
    def __repr__(self):
        return "Scenarios('%d','%s')" % \
        (self.rid, self.place)

class Opinions(Base):
    """
    rid
    opid
    score
    text
    """
    __tablename__ = 'opinions'

    oid = Column(Integer, primary_key=True)
    rid = Column(Integer)
    opid = Column(String)
    score = Column(String)
    text = Column(String)
 
    def __init__(self, rid, opid, score, text):
        self.rid = rid
        self.opid = opid
        self.score = score
        self.text = text
 
    def __repr__(self):
        return 
        return "Opinions('%d','%s', '%s', '%s')" % \
        (self.rid, self.opid, self.score, self.text)

engine = create_engine('sqlite:///survery.db', echo=True)
Base.metadata.create_all(engine)
Session = sessionmaker(bind=engine)

@app.route('/')
def show_index():
    scenarios = [ (u'café', 'cafe'), (u'熱炒', "taiwan"), (u'居酒屋', 'izakaya'), (u'拉麵', 'ramen'), (u'酒吧', 'bar'), (u'下午茶', 'tea'), (u'早餐店', 'brunch')]
    return render_template( 'index.tpl', title=settings.SITE_TITLE, scenarios=scenarios, settings=settings )

@app.route('/digest', methods=['GET', 'POST'])
def digest():
    if request.method == 'GET':
        pass
    else:
        data = json.loads(request.data)
        data['ip'] = request.remote_addr
        data['time'] = datetime.datetime(data['time']['year'], data['time']['month'], data['time']['date'], data['time']['hour'], data['time']['minute'])
        

        session = Session()  

        # add metadata
        session.add( Metadata(data['age'], data['gender'], data['ip'], str(data['time'])) )
        meta = {'age': data['age'], 'gender': data['gender'], 'ip':data['ip'], 'time': data['time']}
        print '[metadata] Add', meta

        # get rid

        rid = session.query(Metadata).count()
        print '[metadata] rid =', rid

        # add opinions
        for opinion in data['opinions']:
            print '[opinions] Add',opinion
            session.add( Opinions(rid, opinion['opid'], opinion['score'], opinion['text']) )

        # add scenarios
        for scenario in data['scenarios']:
            print '[scenarios] Add',scenario
            session.add( Scenarios(rid, scenario) )

        # add comments
        print '[comments] Add',data['comments']
        session.add( Comments(rid, data['comments']) )

        # commit changes
        session.commit()

        resp = jsonify({'status': 'ok'})
        resp.status_code = 200
        return resp

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






