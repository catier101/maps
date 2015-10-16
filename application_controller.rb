# type 'bundle install' in command line to install any missing gems

# how to run server:
# shotgun -o 0.0.0.0 -p 3000
require 'bundler'
Bundler.require

# import local file to be accessed
# require_relative '#file name here'

class MyApp < Sinatra::Base

  get '/' do # route
    erb :index
  end
  
end