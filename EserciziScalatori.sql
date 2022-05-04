/*N.1 Calcolare l'insieme (non il multi-insieme) delle coppie (A,B)
tali che A è uno scalatore e B è un continente in cui A ha
effettuato una scalata.*/

select s.CF, n.Continente
from scalatore s join scalata t on s.CF = t.Scalatore
    join nazione n on n.Nome = t.Nazione

/*N.2 Per ogni scalatore nato prima del 1980, calcolare
tutti i continenti in cui ha effettuato una scalata,
ordinando il risultato per codice fiscale e, a parità di
codice fiscale, per il nome del continente.*/

select n.Continente, s.CF
from scalatore s join scalata t on s.Cf = t.Scalatore
    join nazione n on n.Nome = t.nazione
where s.annoNascita < 1980
order by s.CF, n.continente

/*N.3 Calcolare le nazioni (mostrando, per ciascuna, anche il
continente) nelle quali è stata effettuata almeno una scalata
da uno scalatore minorenne.*/

select n.nome, n.Continente
from nazione n join scalata t on n.Nome = t.Nazione
    join scalatore s on s.CF = t.Scalatore
where (t.anno - s.annoNascita) < 18

/*N.4 Per ogni nazione, calcolare il numero di scalate effettuate da
scalatori nati in quella nazione.*/

select n.Nome, count(*) as nScalate
from nazione n join scalata t on n.Nome = t.Nazione
    join scalatore s on s.CF = t.Scalatore
where n.Nome = s.nazioneNascita
group by n.Nome

/*N.6 Calcolare codice fiscale, nazione di nascita, continente di
nascita di ogni scalatore nato in un continente diverso
dall’America, e, solo se egli ha effettuato almeno una scalata,
affiancare queste informazioni alle nazioni in cui ha effettuato
scalate.*/

select s.CF, s.nazioneNascita, n.Continente, t.nazione
from nazione n left join scalatore s on n.Nome = s.nazioneNascita
    join scalata t on s.CF = t.Scalatore
        
where n.continente != "America" and s.CF =t.scalatore

/*N.7 Per ogni nazione e per ogni anno, calcolare il numero di
scalate effettuate in quella nazione e in quell’anno, ma solo se
tale numero è maggiore di 1. Nel risultato le nazioni dello
stesso continente devono essere mostrati in tuple contigue, e
le tuple relative allo stesso continente devono essere ordinate
per anno.*/




