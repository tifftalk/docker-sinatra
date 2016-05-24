#!/bin/bash
gem install sinatra
#curl https://raw.githubusercontent.com/tifftalk/docker-sinatra/master/web.rb > /usr/src/app/web.rb
git clone https://github.com/tifftalk/sinatra-activerecord-heroku.git /app

if [ "$RACK_ENV" == "production" ];
then
  bundle install --without development test
  ruby $MAIN_APP_FILE -p 80
else
  bundle install
  if [ "$RACK_ENV" == "test" ];
  then
    rspec
  else
    gem install shotgun
    shotgun -I /usr/src/app $MAIN_APP_FILE -p 80 -o '0.0.0.0'
  fi
fi
