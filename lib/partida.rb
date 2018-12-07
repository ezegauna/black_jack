require './lib/jugador.rb'
require './lib/banca.rb'

class Partida

	def initialize
		@jugador = Jugador.new
		@banca = Banca.new
	end

	def jugador
		return @jugador
	end

	def resultado
		if @jugador.puntaje > 21
			return "PERDISTE"
		else
			if @jugador.puntaje > @banca.puntaje(19)
				return "GANASTE"
			else
				return "PERDISTE"
			end
		end
	end

end
