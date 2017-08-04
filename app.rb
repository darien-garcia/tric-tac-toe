require 'sinatra'
require './config'

get '/' do
	erb :index
end

get '/jugar' do
	erb :jugar
end