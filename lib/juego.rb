class Juego
	def initialize 
		@siguiente = :p1
	end
	def siguiente 
		@siguiente
	end

	def jugada 
		if @siguiente == :p1
			@siguiente = :p2
		else
			@siguiente = :p1
		end
	end
end