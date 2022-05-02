use anagrafe;

/*persone maggiorenni, con nome e regione di nascita*/
select p.Nome, c.Regione
from persona p, città c
where p.Età > 17 and (p.CittàNascita = c.Nome)

