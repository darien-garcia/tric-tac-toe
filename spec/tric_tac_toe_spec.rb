require "./lib/juego.rb"

describe Juego do
	it "empieza jugando p1" do
		juego = Juego.new
		expect(juego.siguiente).to eq :p1
	end

	it "siguiente es p2 si juega p1" do
		juego = Juego.new
		juego.jugada
		expect(juego.siguiente).to eq :p2
	end

	it "siguiente es p1 si juega p2" do
		
	end
end
