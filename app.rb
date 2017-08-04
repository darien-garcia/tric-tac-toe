require 'sinatra'
require './config'
require './lib/juego'

get '/' do
	erb :index
end

get '/jugar' do
	session['juego'] = Juego.new
	session['simbolo'] = '-'
	erb :jugar
end

post '/jugada' do

	if session['juego'].siguiente == :p1
		session['simbolo'] = 'X'
		session['juego'].jugada :a2
	else
		session['simbolo'] = 'O'
		session['juego'].jugada :a1
	end


	erb :jugar
end
