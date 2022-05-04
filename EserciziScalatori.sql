/*N.1 Calcolare l'insieme (non il multi-insieme) delle coppie (A,B)
tali che A è uno scalatore e B è un continente in cui A ha
effettuato una scalata.*/

select s.CF, n.Continente
from scalatore s join scalata t on s.CF = t.Scalatore
    join nazione n on n.Nome = t.Nazione