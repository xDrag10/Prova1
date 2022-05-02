/*Autore (cioè Nome e Cognome) e Titolo dei romanzi di autori russi, ordinati per 
cognome e nome dell’autore*/

select a.Nome, a.Cognome, r.Titolo
from autore a, romanzo r
where r.Autore = a.ID and (a.Nazionalità = 'inglese')
order by a.Cognome

/*Titolo dei romanzi di autori nati nel ventesimo secolo, ordinati per cognome e nome 
dell’autore e – a parità di autore – di data di pubblicazione*/

select r.Titolo
from romanzo r, autore a
where r.Autore = a.ID and (a.DataNascita > 1899 and a.DataNascita < 2000)
order by a.Cognome, r.AnnoPubblicazione

/*Titolo e anno di pubblicazione di romanzi di autori viventi*/

select r.Titolo, r.AnnoPubblicazione
from romanzo r, autore a
where r.Autore = a.ID and (a.DataMorte is null)

/*Romanzi di scrittori viventi, oppure morti ma non a Torino*/

select r.*
from romanzo r, autore a
where r.Autore = a.ID and (a.DataMorte is null or a.LuogoMorte != 'Torino')

/*Titolo e anno di pubblicazione dei romanzi di scrittori nati a Roma*/

select r.Titolo, r.AnnoPubblicazione
from romanzo r, autore a
where r.Autore = a.ID and (a.LuogoNascita = 'Roma')

/*Romanzi con titolo che inizia per “Tokyo”*/

select r.*
from romanzo r
where r.Titolo like 'Tokyo%'

/*Romanzi con la parola “Sposi” nel titolo*/

select r.*
from romanzo r
where r.Titolo like '%Sposi%'

/*Romanzi con penultima lettera “i” nel titolo*/

select r.*
from romanzo r
where r.Titolo like '%i_'

/*Romanzi il cui titolo termina per “blues”*/

select r.*
from romanzo r
where r.Titolo like '%blues'

/*Romanzi pubblicati del ventesimo secolo e con la parola “Zeno” nel titolo*/

select r.*
from romanzo r
where r.Titolo like '%zeno%' and r.AnnoPubblicazione > 1899 and r.AnnoPubblicazione < 2000

/*Romanzi pubblicati prima del 1900 e con la parola “Sposi” nel titolo, scritta l’iniziale 
maiuscola o minuscola*/

select r.*
from romanzo r
where r.Titolo like '%Sposi%' and r.AnnoPubblicazione < 1900

/*Romanzi di Alessandro Manzoni*/

select r.*
from romanzo r, autore a
where r.Autore = a.ID and (a.Nome = 'Alessandro' and a.Cognome = 'Manzoni')

/*Titoli dei romanzi scritti da Luigi Pirandello, escludendo eventuali duplicati*/

select r.Titolo
from romanzo r, autore a
where r.Autore = a.ID and (a.Nome = 'Luigi' and a.Cognome = 'Pirandello')