require 'sinatra'
require './config'
require './lib/juego'

get '/' do
	erb :index
end

get '/jugar' do
	session['juego'] = Juego.new
	session['simbolo'] = 'X'
	erb :jugar
end

post '/jugada' do
	
	session['juego'].jugada :a1 

	if session['juego'].siguiente == :p1
		session['juego'].jugada :a2

		session['simbolo'] = 'O'
	else
		session['simbolo'] = 'X'
	end


	erb :jugar
end
