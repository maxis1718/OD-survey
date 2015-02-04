OD-survey
======

[![Build Status](https://travis-ci.org/fxxkit/OD-survey.svg?branch=develop)](https://travis-ci.org/fxxkit/OD-survey)


## Prerequisite

1. Python: including `pip` and `virtualenvwrapper`
2. [Heroku toolbelt](https://toolbelt.heroku.com/)
3. Git/[Github](github.com)

## Setup

1. Fork this repo on Github: <iframe src="https://ghbtns.com/github-btn.html?user=fxxkit&repo=OD-survey&type=fork&count=true" frameborder="0" scrolling="0" width="170px" height="20px"></iframe>
* clone repo from your Github page `git clone git@github.com:<your-username>/OD-survey.git`
* go to the folder `OD-survey`
* create a virtural env: `mkvirtualenv od`
* install all python packages: `pip install -r requirements.txt`
* run `foreman start` to launch the service
* for debug or development, use `python server.py -d` instead

## Git workflow

1. setup remotes `self` anf `origin`:
	
	```
	git remote rename origin self
	git remote add origin git@github.com:fxxkit/OD-survey.git
	git remote add self git@github.com:<your-username>/OD-survey.git
	```
2. update to the lastest version

	```
	git checkout master
	git pull origin master
	```
	
3. start to work on a issue after checkingout a new branch `issue-xxx`

	```
	git checkout -b issue-xxx
	```

4. make some changes, add to stage and commit

	```
	git add . // or git add <certain-files>
	git commit -m "<summary of this change>"
	```
	
5. push branch `issue-xxx` to `self`

	```
	git push self issue-xxx
	```

6. In the Github page, create a Pull Request

7. Release master will review the code changes and merge into develop if nothing wrong (including the Travis CI build status)


## links
- [Herokuapp](https://od-survey.herokuapp.com/)
- [Trello](https://trello.com/b/kaVf0D3t/product-backlog)


