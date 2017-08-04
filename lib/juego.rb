class Juego

	def initialize 
		@siguiente = :p1
		@tablero = {:a1=>:vacio,:a2=>:vacio,:a3=>:vacio,:b1=>:vacio,:b2=>:vacio,:b3=>:vacio,:c1=>:vacio,:c2=>:vacio,:c3=>:vacio}
		@simbolos = {:p1=>"X", :p2=>"O", :vacio=>"_"}
	end
	def siguiente 
		@siguiente
	end

	def jugada eleccion

		if vacia? eleccion
			@tablero[eleccion] = @simbolos[@siguiente]
		else
			false
		end

		if @siguiente == :p1
			@siguiente = :p2
		else
			@siguiente = :p1
		end

		return true
	end

	def vacia? eleccion
		return @tablero[eleccion].to_sym == :vacio
	end
end