/*N.1 Calcolare il codice dei programmatori che sono stati autori di
almeno un programma scritto in Java dopo il 2000.*/

select  p.Codice
from programmatore p join programma j on j.anno > 2000
where j.Linguaggio = "Java"
group by p.Codice

/*N.2 Calcolare il nome e la categoria dei programmatori
che sono stati autori di almeno un programma scritto
in un linguaggio diverso da Python, ordinando il
risultato rispetto al nome dei programmatori.*/

select  p.Nome, p.Categoria
from programmatore p join autore a on p.Codice = a.Codice 
    join programma j on j.Id = a.Id
where j.Linguaggio != "Python"