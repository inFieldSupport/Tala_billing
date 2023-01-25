#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:setup
bundle exec rake tailwindcss:build 
bundle exec rake db:seed