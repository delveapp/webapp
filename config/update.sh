#!/bin/sh
cd ~/webapp;
git stash save;
git stash drop;
git pull --rebase;
sudo pm update;
sudo npm install -g bower;
bundle install;
rake bower:install;
rake db:migrate;
cd;
