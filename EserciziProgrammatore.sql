select  p.Codice
from programmatore p join programma j on j.anno > 2000
where j.Linguaggio = "Java"
group by p.Codice
