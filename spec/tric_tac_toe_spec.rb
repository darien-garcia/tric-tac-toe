require "./lib/juego.rb"

describe Juego do
	it "empieza jugando p1" do
		juego = Juego.new
		expect(juego.siguiente).to eq :p1
	end

	it "siguiente es p2 si juega p1 eligiendo la celda :a1" do
		juego = Juego.new
		juego.jugada :a1
		expect(juego.siguiente).to eq :p2
	end

	it "siguiente es p1 si juega p2  eligiendo la celda :a2" do
		juego = Juego.new
		juego.jugada :a1
		juego.jugada :a2
		expect(juego.siguiente).to eq :p1
	end

	it "jugador p1 selecciona la casilla :a1" do
		juego = Juego.new
		valido = juego.jugada :a1
		expect(valido) ==  true
	end

	it "jugador p1 selecciona la casilla :a1 y p2 la casilla :a1" do
		juego = Juego.new
		juego.jugada :a1
		valido = juego.jugada :a1
		expect(valido) ==  false
	end

end
