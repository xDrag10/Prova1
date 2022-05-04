/*N.1 Calcolare l'insieme (non il multi-insieme) delle coppie (A,B)
tali che A è uno scalatore e B è un continente in cui A ha
effettuato una scalata.*/

select s.CF, n.Continente
from scalatore s join scalata t on s.CF = t.Scalatore
    join nazione n on n.Nome = t.Nazione

/*Per ogni scalatore nato prima del 1980, calcolare
tutti i continenti in cui ha effettuato una scalata,
ordinando il risultato per codice fiscale e, a parità di
codice fiscale, per il nome del continente.*/

select n.Continente, s.CF
from scalatore s join scalata t on s.Cf = t.Scalatore
    join nazione n on n.Nome = t.nazione
where s.annoNascita < 1980
order by s.CF, n.continente