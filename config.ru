require 'rubygems'
require 'bundler'

Bundler.require

require './watch_cities'
run Sinatra::Application
