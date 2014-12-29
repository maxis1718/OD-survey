# -*- coding: utf-8 -*-

import sqlite3

con = sqlite3.connect('sample.db3')
cur = con.cursor()

# Create table
cur.execute('''CREATE TABLE survey (likeitem text, dislike text, gender text, age real, entry text)''')
# cur.execute("INSERT INTO stocks VALUES ('2006-01-05','BUY','RHAT',100,35.14)")
con.commit()
con.close()

