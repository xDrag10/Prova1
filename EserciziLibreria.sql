/*Autore"(cioè"Nome"e"Cognome)"e"Titolo"dei"romanzi"di"autori"russi,"ordinati"per"
cognome"e"nome"dell’autore*/

select a.Nome, a.Cognome, r.Titolo
from autore a, romanzo r
where r.Autore = a.ID and (a.Nazionalità = 'inglese')
order by a.Cognome

/**/