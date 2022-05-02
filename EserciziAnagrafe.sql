CREATE TABLE Città (
  Nome varchar(45),
  Regione varchar(45) DEFAULT NULL,
  PRIMARY KEY (Nome)
);


INSERT INTO Città VALUES ('Ancona','Marche');
INSERT INTO Città VALUES ('Bari','Puglia');
INSERT INTO Città VALUES ('Bologna','EmiliaRomagna');
INSERT INTO Città VALUES ('Firenze','Toscana');
INSERT INTO Città VALUES ('Genova','Liguria');
INSERT INTO Città VALUES ('Livorno','Toscana');
INSERT INTO Città VALUES ('Lucca','Toscana');
INSERT INTO Città VALUES ('Milano','Lombardia');
INSERT INTO Città VALUES ('Mantova','Lombardia');
INSERT INTO Città VALUES ('Napoli','Campania');
INSERT INTO Città VALUES ('Roma','Lazio');
INSERT INTO Città VALUES ('Treviso','Veneto');
INSERT INTO Città VALUES ('Venezia','Veneto');

CREATE TABLE Genia (
  Figlio varchar(20),
  Genitore varchar(20),
  PRIMARY KEY (Figlio,Genitore)
);

INSERT INTO Genia VALUES ('Aldo','Franco');
INSERT INTO Genia VALUES ('Aldo','Maria');
INSERT INTO Genia VALUES ('Andrea','Franco');
INSERT INTO Genia VALUES ('Andrea','Maria');
INSERT INTO Genia VALUES ('AnnaMaria','Amelia');
INSERT INTO Genia VALUES ('AnnaMaria','Michelangelo');
INSERT INTO Genia VALUES ('AntonGiulio','Beatrice');
INSERT INTO Genia VALUES ('AntonGiulio','Leonardo');
INSERT INTO Genia VALUES ('Ezechiele','AnnaMaria');
INSERT INTO Genia VALUES ('Ezechiele','AntonGiulio');
INSERT INTO Genia VALUES ('Fabio','Beatrice');
INSERT INTO Genia VALUES ('Filippo','Anna');
INSERT INTO Genia VALUES ('Filippo','Luigi');
INSERT INTO Genia VALUES ('Franco','Sergio');
INSERT INTO Genia VALUES ('Giova','Maria');
INSERT INTO Genia VALUES ('Luigi','Luisa');
INSERT INTO Genia VALUES ('Maria','Luisa');
INSERT INTO Genia VALUES ('Maurizio','Lio');
INSERT INTO Genia VALUES ('Olga','Anna');
INSERT INTO Genia VALUES ('Olga','Luigi');

CREATE TABLE Persona (
  Nome varchar(20),
  Reddito decimal(10,0) DEFAULT NULL,
  Età decimal(3,0) DEFAULT NULL,
  Sesso char(1) DEFAULT NULL,
  CittàNascita varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Nome`)
);

INSERT INTO Persona VALUES ('Aldo',25,15,'M','Roma');
INSERT INTO Persona VALUES ('Amelia',79,28,'F','Milano');
INSERT INTO Persona VALUES ('Andrea',27,21,'M','Milano');
INSERT INTO Persona VALUES ('Anna',50,29,'F','Napoli');
INSERT INTO Persona VALUES ('AnnaMaria',41,30,'F','Bologna');
INSERT INTO Persona VALUES ('AntonGiulio',44,40,'M','Roma');
INSERT INTO Persona VALUES ('Beatrice',79,30,'F','Roma');
INSERT INTO Persona VALUES ('Diana',90,23,'F','Firenze');
INSERT INTO Persona VALUES ('Ezechiele',11,10,'M','Bari');
INSERT INTO Persona VALUES ('Fabio',100,49,'M','Firenze');
INSERT INTO Persona VALUES ('Filippo',26,30,'M','Genova');
INSERT INTO Persona VALUES ('Franco',60,20,'M','Treviso');
INSERT INTO Persona VALUES ('Giova',24,27,'M','Mantova');
INSERT INTO Persona VALUES ('Leonardo',79,30,'M','Roma');
INSERT INTO Persona VALUES ('Lio',100,59,'M','Lucca');
INSERT INTO Persona VALUES ('Luigi',50,40,'M','Venezia');
INSERT INTO Persona VALUES ('Luisa',75,87,'F','Napoli');
INSERT INTO Persona VALUES ('Maria',55,42,'F','Livorno');
INSERT INTO Persona VALUES ('Michelangelo',79,30,'M','Roma');
INSERT INTO Persona VALUES ('Olga',30,41,'F','Ancona');
INSERT INTO Persona VALUES ('Sergio',85,35,'M','Napoli');
INSERT INTO Persona VALUES ('Maurizio',19,19,'M','Pavia');