# webapp

There have been a lot of changes since the progress report so we recommend that you check https://github.com/dbfinal/webapp for the latest changes.

*Search does not currently work

How to run Delve locally:

1. Install Rails using http://installrails.com/

2. switch to webapp directory 

3. run “bundle install”
*make sure mysql is both installed and running

4. run “npm install -g bower”

5. run “rake bower:install”

6. run “rake db:create”

7. run “rake db:migrate”

8. run :rake “db:seed”

9. run “rails s”

10. goto localhost:3000

11. enjoy!


Javascripts
…/webapp/app/assets/javascripts/controllers

Templates
…/webapp/app/assets/javascripts/templates

Models
…/webapp/app/models

Routes
…/webapp/config/routes.rb

Controllers
…/webapp/app/controllers

Migrations
…/webapp/db/migrate

Seeds
…/webapp/db/seeds.rb
