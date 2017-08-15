require 'rubygems'
require 'sinatra'
require 'thin'
require 'sinatra/flash'
require 'data_mapper'
require 'dm-aggregates'
require './model'
require 'bundler'

Bundler.require

get '/' do

@items = Array.new

erb :index, :layout => :layout
end

get '/about' do
	erb :about, :layout => :layout
end

get '/submit' do
	erb :submit, :layout => :layout
end

#post '/submit' do
#	erb :submit, :layout => :layout
#	flash[:success] = "Your submission has been sent!"
#end
