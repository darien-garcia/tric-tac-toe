require 'sinatra'
require './config'
require './lib/juego'

get '/' do
	erb :index
end

get '/jugar' do
	session["juego"]=Juego.new
	erb :jugar
end

post '/jugada' do
	session["juego"]
	erb :jugar
end


