Feature: Juego de Black Jack

Scenario: Pagina Principal
Given abro el juego
Then debo ver "Black Jack"

Scenario: Pedir Carta
Given abro el juego
When pido carta
Then debo ver "Carta: "

Scenario: Plantarse
Given abro el juego
When me planto
Then debo ver "Resultado: "

Scenario: Vuelvo a Jugar
Given abro el juego
When me planto
And elijo volver a jugar
Then debo ver "Black Jack"

Scenario: Pido una carta y me da un siete
Given abro el juego
When pido carta y me da un 7
Then debo ver "Suma: 7"

Scenario: Pido dos cartas, me da un siete y luego un cinco 
Given abro el juego
When pido carta y me da un 7
When pido carta y me da un 5
Then debo ver "Suma: 12"

Scenario: Pido tres cartas, me da un siete, cinco y diez 
Given abro el juego
When pido carta y me da un 7
When pido carta y me da un 5
When pido carta y me da un 10
Then debo ver "PERDISTE"

