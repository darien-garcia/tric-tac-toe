Feature:
	Como jugador de tric tac toe
	Quiero poder seleccionar una casilla
	Para jugar

Scenario: Debe mostrar tablero con casillas disponibles
	Given que comenzo el juego
	Then debo ver "Disponibles: 9"

Scenario: Jugador 1 selecciona la casilla 1 y ve simbolo X
	Given que comenzo el juego
	When jugador en turno selecciono casilla "1"
	Then debo ver simbolo "X" en casilla "1"

Scenario: Jugador 2 selecciona la casilla 1 y ve simbolo O
	Given que comenzo el juego
	When jugador en turno selecciono casilla "1"
	When jugador en turno selecciono casilla "1"
	Then debo ver simbolo "O" en casilla "1"

Scenario: Jugador 2 selecciona la casilla 8 y ve simbolo O
	Given que comenzo el juego
	When jugador en turno selecciono casilla "1"
	When jugador en turno selecciono casilla "8"
	Then debo ver simbolo "O" en casilla "8"