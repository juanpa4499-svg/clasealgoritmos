-- Tipos inductivos, Recursivos

data Natural = Cero | Suc Natural deriving (Show, Eq)

dos :: Natural
dos = Suc (Suc (Cero))

-- factorial :: Natural -> Natural
-- factorial Cero = Suc Cero
-- factorial (Suc n) = (Suc n) * factorial n ; No va a andar porque * solo toma datos de tipo NUM 

-- Vamos a definir nuestro propio tipo de listas


data ListaInt = Vacia | Pegar Int ListaInt deriving Show

-- l1 es la lista [1,2,7] --
l1 :: ListaInt
l1 = Pegar 1 (Pegar 2 (Pegar 7 Vacia))

sumListaInt :: ListaInt -> Int
sumListaInt Vacia = 0
sumListaInt (Pegar n xs) = n + sumListaInt xs

type Nombre = String
type Director = Nombre
type Duracion = Int
type Estreno = Duracion
type EstrenoTemporada = Duracion
type NroCapitulo = Duracion
type Temporada = Duracion
data Video = Pelicula Nombre Director Duracion Estreno
           | CapSerie Nombre NroCapitulo Temporada EstrenoTemporada deriving (Show, Eq) 
           
--lab 7   
data ColaVideo = Vacio | Encolada Video ColaVideo deriving Show

-- Definir la funci ́on pelisDelDirector :: ColaVideo -> String -> ColaVideo que dada una cola de
 -- reproducci ́on de videos q, y el nombre de un director d, devuelve la cola de reproducci ́on que tiene solamente
-- las pel ́ıculas del director d (en el mismo orden que aparecen en q).

pelisDelDirector :: ColaVideo -> String -> ColaVideo
pelisDelDirector Vacio s = Vacio
pelisDelDirector (Encolada (Pelicula n d t e) xs) s 
                    | d == s = Encolada (Pelicula n d t e) (pelisDelDirector xs s)
                    | d /= s = (pelisDelDirector xs s)
pelisDelDirector (Encolada x xs) s = pelisDelDirector xs s

elPadrino :: Video 
elPadrino = Pelicula "El Padrino" "Francis Ford Coppola" 177 1972


breakingBadS01E01 :: Video
breakingBadS01E01 = CapSerie "BreakingBad" 1 1 2008 

-- Lab 8
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
                 
data ColaLanzamiento = ColaVacia
                     | Encolado Lanzamiento ColaLanzamiento deriving Show

soloSencillos :: ColaLanzamiento -> ColaLanzamiento
soloSencillos ColaVacia = ColaVacia
soloSencillos (Encolado (Sencillo n a t e) xs) = Encolado (Sencillo n a t e) (soloSencillos xs) 
soloSencillos (Encolado x xs) = soloSencillos xs

