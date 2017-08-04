Feature: 
	Como jugador
	Quiero poder iniciar partida
	Para jugar

Scenario: Debo poder iniciar una partida
	Given que abri el juego
	When inicie la partida
	Then debo ver "p1 X vs p2 O"
