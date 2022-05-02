/*persone maggiorenni, con nome e regione di nascita*/
select p.Nome, c.Regione
from persona p, città c
where p.Età > 17 and (p.CittàNascita = c.Nome)

/*coppie <genitore,figlio> nati nella stessa città*/

select genia.Genitore, genia.Figlio
from persona pf join genia on pf.Nome = genia.Figlio
    join persona pg on pg.Nome = genia.Genitore
where pf.CittàNascita = pg.CittàNascita

/*città in cui è nato almeno un genitore di oltre 50 anni*/

select p.CittàNascita
from genia g join persona p on g.Genitore = p.Nome
where p.Età > 50

/*vogliamo sapere chi sono i nonni*/

select f.Genitore
from genia f join genia g on f.Figlio = g.Genitore