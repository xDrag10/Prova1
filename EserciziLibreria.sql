/*Autore"(cioè"Nome"e"Cognome)"e"Titolo"dei"romanzi"di"autori"russi,"ordinati"per"
cognome"e"nome"dell’autore*/

select a.Nome, a.Cognome, r.Titolo
from autore a, romanzo r
where r.Autore = a.ID and (a.Nazionalità = 'inglese')
order by a.Cognome

/*Titolo"dei"romanzi"di"autori"nati"nel"ventesimo"secolo,"ordinati"per"cognome"e"nome"
dell’autore"e"–"a"parità"di"autore"–"di"data"di"pubblicazione*/

select r.Titolo
from romanzo r, autore a
where r.Autore = a.ID and (a.DataNascita > 1899 and a.DataNascita < 2000)
order by a.Cognome, r.AnnoPubblicazione


