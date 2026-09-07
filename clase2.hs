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

data Posicion = Arco | Defensa | Mediocampo | Delantera

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
esDfc (Futbolista p Defensa d a) = True
esDfc d = False

-- 🔥️🗣️Dado un deportista, devuelve True si su mano o pierna habil es la derecha, False caso contrario 
esDiestro :: Deportista -> Bool
esDiestro (Futbolista Derecha p d a) = True
esDiestro (Tenista Derecha t a) = True
esDiestro d = False

contarVelocistas :: [Deportista] -> Int
contarVelocistas [] = 0
contarVelocistas ((Velocista a):xs) = 1 + contarVelocistas xs
contarVelocistas (d:xs) = contarVelocistas xs

contarFutbolistas :: [Deportista] -> Posicion -> Int
contarFutbolistas [] z = 0
contarFutbolistas ((Futbolista p Defensa d a):xs) Defensa = 1 + contarFutbolistas xs Defensa
contarFutbolistas ((Futbolista p Arco d a):xs) Arco = 1 + contarFutbolistas xs Arco
contarFutbolistas ((Futbolista p Mediocampo d a):xs) Mediocampo = 1 + contarFutbolistas xs Mediocampo
contarFutbolistas ((Futbolista p Delantera d a):xs) Delantera = 1 + contarFutbolistas xs Delantera
contarFutbolistas (d:xs) z = contarFutbolistas xs z

-- Dado una lista de deportistas, devuelve True Si alguno es Messi (Un Futbolista Zurdo, Dorsal 10, Delantera y mide 170cm) Caso Contrario False
algunoesMessi :: [Deportista] -> Bool 
algunoesMessi [] = False
algunoesMessi ((Futbolista Izquierda Delantera 10 170):xs) = True
algunoesMessi ((x:xs)) = algunoesMessi xs

type GasolinaEnLitros = Int
type CantidadRuedas = Int
data Motor = Nafta | Diesel | Electrico | Hibrido
data Automotor = Auto Motor GasolinaEnLitros
               | Camion Motor GasolinaEnLitros CantidadRuedas
               
contarTanquesVacios :: [Automotor] -> Int
contarTanquesVacios [] = 0
contarTanquesVacios ((Auto m 0):xs) = 1 + contarTanquesVacios xs
contarTanquesVacios ((Camion m 0 r):xs) = 1 + contarTanquesVacios xs
contarTanquesVacios (a:xs) = contarTanquesVacios xs

type Nombre = String
type Director = Nombre
type Duracion = Int
type Estreno = Duracion
type EstrenoTemporada = Duracion
type NroCapitulo = Duracion
type Temporada = Duracion
data Video = Pelicula Nombre Director Duracion Estreno
           | CapSerie Nombre NroCapitulo Temporada EstrenoTemporada deriving (Show, Eq) 

elPadrino :: Video 
elPadrino = Pelicula "El Padrino" "Francis Ford Coppola" 177 1972


breakingBadS01E01 :: Video
breakingBadS01E01 = CapSerie "BreakingBad" 1 1 2008

-- Dado un Video, devuelve True si el video es el primer capıtulo de la primera temporada de una serie, False caso contrario.
esPrimerCapitulo :: Video -> Bool
esPrimerCapitulo (CapSerie n 1 1 f) = True
esPrimerCapitulo v = False

esEstreno2024 :: Video -> Bool
esEstreno2024 (Pelicula n d l 2026) = True
esEstreno2024 v = False


-- que dada una lista de de videos, devuelve la duraci ́on de la pel ́ıcula m ́as larga. En caso que no haya pel ́ıculas devuelve 0.
duracionPeliMasLarga :: [Video] -> Int
duracionPeliMasLarga [] = 0
duracionPeliMasLarga ((Pelicula n d l f):xs) = max l (duracionPeliMasLarga xs)
duracionPeliMasLarga (v:xs) = duracionPeliMasLarga xs


type Artista = Nombre
type Temas = [String]
data Lanzamiento = Album Nombre Artista Temas Estreno
                 | Sencillo Nombre Artista Duracion Estreno deriving (Show, Eq)

clicsModernos :: Lanzamiento
clicsModernos = Album "Clics Modernos" "Charly Garcia" ["Nos siguen pegando abajo", "Dos Cero Uno", "Nuevos trapos"] 1983

astros :: Lanzamiento
astros = Sencillo "Astros" "Ciro y los Persas" 251 2012

comoAli :: Lanzamiento
comoAli = Sencillo "Como Ali" "Ciro y los Persas" 211 2003

minsencillosArtista :: [Lanzamiento] -> Artista -> Int
minsencillosArtista [] n = 0
minsencillosArtista ((Sencillo n a d e):xs) s | a == s = d + minsencillosArtista xs s
                                              | a /= s = minsencillosArtista xs s
minsencillosArtista (x:xs) s = minsencillosArtista xs s





















