#-*- coding: utf-8 -*-
#!/usr/bin/env bash

# Bootstrap
bundle install
bundle exec rake db:setup
echo "ENV['SECRET_KEY_BASE'] = '$(rake secret)'" >> config/app_environment_variables.rb

# Cleanup and start
rm -f tmp/pids/server.pid
bundle exec rails server -b '0.0.0.0' -P tmp/pids/docker.pid
