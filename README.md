OD-survey
======

[![Build Status](https://travis-ci.org/fxxkit/OD-survey.svg?branch=develop)](https://travis-ci.org/fxxkit/OD-survey)

## prerequisite

1. Python: including `pip` and `virtualenvwrapper`
2. [Heroku toolbelt](https://toolbelt.heroku.com/)
3. Git/[Github](github.com)

## setup

1. clone this repository `git clone git@github.com:fxxkit/OD-survey.git`
* or fork this repository first then clone it
* in the folder `OD-survey`, create a virtural env: `mkvirtualenv od`
* install all python packages: `pip install -r requirements.txt`
* run `foreman start` to launch the service
* for debug or development, use `python server.py -d` instead

## workflow

1. fork this repository
* switch to master: `git checkout master`
* update to the last version: `git pull origin master` 
* checkout a new branch depending on a issue, e.g.: `git checkout -b issue-x`
* for step 1,2,3, you can also use `git checkout remotes/origin/master -b issue-x` to checkout the lastest version
* work on it and make some changes
* send __Pull Request__ (__PR__) via Github
* release master will reviewer the code changes and merge into master if everything is fine (including the Travis CI build)


## links
- [Herokuapp](https://od-survey.herokuapp.com/)
- [Trello](https://trello.com/b/kaVf0D3t/product-backlog)


