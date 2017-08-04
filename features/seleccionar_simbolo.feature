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


Scenario: P1 debe poder marcar su segunda casilla en el tercer turno
	Given que comenzo el juego
	When jugador en turno selecciono casilla "1"
	When jugador en turno selecciono casilla "2"
	When jugador en turno selecciono casilla "3"
	Then debo ver simbolo "X" en casilla "3"


Scenario: P1 debe ser capaz de seleccionar la ultima celda disponible
	Given que comenzo el juego
	When jugador en turno selecciono casilla "1"
	When jugador en turno selecciono casilla "2"
	When jugador en turno selecciono casilla "3"
	When jugador en turno selecciono casilla "4"
	When jugador en turno selecciono casilla "5"
	When jugador en turno selecciono casilla "6"
	When jugador en turno selecciono casilla "7"
	When jugador en turno selecciono casilla "8"
	When jugador en turno selecciono casilla "9"
	Then debo ver simbolo "X" en casilla "9"

Scenario: Jugador 2 selecciona la casilla 1 y ve simbolo O
	Given que comenzo el juego
	When jugador en turno selecciono casilla "2"
	And jugador en turno selecciono casilla "1"
	Then debo ver simbolo "O" en casilla "1"


