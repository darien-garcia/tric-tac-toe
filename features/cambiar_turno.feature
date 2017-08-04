Feature: 
	Como jugador
	Quiero que me permita seleccionar casilla
	despues del turno del otro jugador

Scenario: es turno del jugador "p2"
	Given que hay una partida iniciada
	And que es turno del jugador "p1"
	And que el jugador en turno jugo
	Then debo ver "siguiente jugador: p2"

Scenario: es turno del jugador "p1"
	Given que comenzo el juego
	When jugador en turno selecciono casilla "1"
	When jugador en turno selecciono casilla "1"
	Then debo ver "siguiente jugador: p1"

