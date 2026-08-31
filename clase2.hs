data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si deriving (Eq, Ord, Show)
data Carrera = Matematica | Fisica | Computacion | Astronomia deriving (Eq, Show)

minElemento :: Ord a => [a] -> a
minElemento [x] = x
minElemento (x:xs) = min x (minElemento xs)

titulo :: Carrera -> String
titulo Matematica = "Licenciatura en Matematica"
titulo Fisica = "Licenciatura en Fisica"
titulo Computacion = "Licenciatura en Ciencias de la Computacion"
titulo Astronomia = "Licenciatura en Astronomia"

-- Ciclista, Tenista, etc construyen un deportista. Modalidad es un TIPO.
type Altura = Int
type ManoHabil = PiernaHabil
type Dorsal = Int

data Modalidad = Carretera | Pista | Monte | BMX

data Posicion = Gk | Dfc | Mc | Dc | Ei | Ed

data PiernaHabil = Derecha | Izquierda

data TipoReves = UnaMano | DosManos

data Deportista = Ajedrecista
                | Ciclista Modalidad --Ciclista: CONSTRUCTOR con un argumento, Modalidad: Argumento- Tipo
                | Velocista Altura
                | Tenista ManoHabil TipoReves Altura
                | Futbolista PiernaHabil Posicion Dorsal Altura
                
                
-- Dado un deportista, devuelve True si es un velocista que mide mas de 170cm, False caso contrario.

velocistaAlto :: Deportista -> Bool
velocistaAlto (Velocista a) = (a>170) --Utilizamos el constructor de tipos para el pattern matching
velocistaAlto f = False


-- Dado un deportista, deuvelve True si es un tenista, False caso contrario
esTenista :: Deportista -> Bool
esTenista (Tenista t m a) = True
esTenista d = False
-- Dado un deportista, devuelve True si es defensor, False caso contrario

esDfc :: Deportista -> Bool
esDfc (Futbolista p Dfc d a) = True
esDfc d = False

-- Dado un deportista, devuelve True si su mano o pierna habil es la derecha, False caso contrario 
esDiestro :: Deportista -> Bool
esDiestro (Futbolista Derecha p d a) = True
esDiestro (Tenista Derecha t a) = True
esDiestro d = False















