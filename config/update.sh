#
# Copyright (c) 2015-2016
# Brendan Downey, Adam Markon, Nikita Shenkman
#
# The code contained in this file and any related code in this project
# may not be modified or used without consent of the above listed owners.
#

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
