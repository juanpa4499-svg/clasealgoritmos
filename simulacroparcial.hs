-- Primero, tipo los argumentos de tipo String

type Rey = String -- Nombre del rey
type Contrincante = Rey -- Nombre del contrincante
type SegundoContrincante = Rey  -- Nombre del segundo contrincante
type PrimerEquipo = Rey -- Nombre del primer equipo
type SegundoEquipo = Rey -- Nombre del segundo equipo

-- Ahora, tipo los argumentos de tipo Int

type PuntosRey = Int -- Puntos del rey 
type PuntosContrincante = Int -- Puntos del contrincante
type PuntosSegundoContrincante = Int -- Puntos del segundo contrincante
type Puntos1Equipo = Int -- Puntos del primer equipo
type Puntos2Equipo = Int  -- Puntos del segundo equipo

-- Ahora con los tipos definidos, defino del tipo JuegoTenis con sus 2 constructores correspondientes:

data JuegoTenis = ReyDeLaCancha Rey PuntosRey Contrincante PuntosContrincante SegundoContrincante PuntosSegundoContrincante
                | SingleDoble PrimerEquipo Puntos1Equipo SegundoEquipo Puntos2Equipo deriving (Show, Eq)
                
rey1 :: JuegoTenis
rey1 = ReyDeLaCancha "Guillermo" 5 "Mario" 2 "Cristina" 3

singleDoble1 :: JuegoTenis
singleDoble1 = SingleDoble "Fed" 10 "Nad" 6

estaReyGanando :: JuegoTenis -> Bool
estaReyGanando (ReyDeLaCancha r pr c pc sc psc) = (pr > pc) && (pr > psc)
