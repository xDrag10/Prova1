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
group by n.nome

/*N.5 Per ogni continente, calcolare il numero di scalate effettuate
da scalatori nati in una nazione di quel continente.*/

select continente, count(*)
from nazione n join scalata t on n.Nome = t.Nazione
    join scalatore s on s.CF = t.Scalatore
group by n.continente

union 

select n.continente, 0
from nazione n 
where n.continente not in
    (select n.continente 
    from nazione n join scalata t on n.Nome = t.Nazione
        join scalatore s on s.CF = t.Scalatore )

/*N.6 Calcolare codice fiscale, nazione di nascita, continente di
nascita di ogni scalatore nato in un continente diverso
dall’America, e, solo se egli ha effettuato almeno una scalata,
affiancare queste informazioni alle nazioni in cui ha effettuato
scalate.*/

select s.CF, s.nazioneNascita, n.Continente, t.nazione
from nazione n left join scalatore s on n.Nome = s.nazioneNascita
    join scalata t on s.CF = t.Scalatore
        
where n.continente != "America"

/*N.7 Per ogni nazione e per ogni anno, calcolare il numero di
scalate effettuate in quella nazione e in quell’anno, ma solo se
tale numero è maggiore di 1. Nel risultato le nazioni dello
stesso continente devono essere mostrati in tuple contigue, e
le tuple relative allo stesso continente devono essere ordinate
per anno.*/

select t.Nazione, t.anno, count(*) as NumScalate
from nazione n join scalata t on n.Nome = t.Nazione
    join scalatore s on s.CF = t.Scalatore
group by t.Nazione, t.anno having NumScalate > 1
order by t.anno

/*N.8 Per ogni nazione N, calcolare il numero medio di
scalate effettuate all’anno in N da scalatori nati in
nazioni diverse da N.*/

select n.Nome, t.anno, count(*)/count(t.anno) as NumScalate 
from naznioe n join scalata t on n.Nome = t.Nazione
    join scalatore s on s.CF = t.Scalatore
where s.nazioneNascita != n.Nome
group by n.Nome, t.anno
order by t.anno





