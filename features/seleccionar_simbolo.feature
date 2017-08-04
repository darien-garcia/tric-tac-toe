Feature:
	Como jugador de tric tac toe
	Quiero poder seleccionar una casilla
	Para jugar

Scenario: Debe mostrar tablero con casillas disponibles
	Given que comenzo el juego
	Then debo ver "Disponibles: 9"

Scenario: Debo poder seleccionar una casilla y ver mi simbolo en la celda seleccionada
	Given que comenzo el juego
	When jugador en turno selecciono casilla "1"
	Then debo ver simbolo "X" en casilla "1"