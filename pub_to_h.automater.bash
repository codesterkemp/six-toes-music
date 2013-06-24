#!/bin/bash
echo "ensuring we are on the master branch"
git checkout master
echo "pushing our master branch to github"
git push
echo "switching to heroku branch"
git checkout h_master
echo "merging master into our heroku branch"
git merge master
echo "pushing heroku branch up to heroku"
git push heroku h_master:master
echo "returning to master branch"
git checkout master
echo "opening heroku app"
heroku open
