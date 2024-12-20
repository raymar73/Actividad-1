use master
IF  EXISTS (SELECT * FROM sys.databases WHERE name = 'streaming')
	 DROP DATABASE streaming;
ELSE
     CREATE DATABASE streaming;
GO
use streaming;
create table Plataformas (
  ID_Plataforma INT IDENTITY(1,1) PRIMARY KEY,
  Nombre_Plataforma varchar(255)
);
create table Series (
  ID_Serie INT IDENTITY(1,1) PRIMARY KEY,
  Titulo_Serie varchar(255),
  IDPlataforma_serie INT,
  IDDirector_Serie INT,
  IDActores_serie INT,
  IDIdiomas_serie INT,
  IdiomaAudio_Idioma bit not null,
  IdiomaSubtitulo_Idioma bit not null
);
create table Directores (
  ID_Director INT IDENTITY(1,1) PRIMARY KEY,
  Nombre_Director varchar(85),
  Apellidos_Director varchar(150),
  FechaNacimiento_Director date,
  Nacionalidad_Director varchar(55)
);
create table Actores (
  ID_Actor INT IDENTITY(1,1) PRIMARY KEY,
  Nombre_Actor varchar(85),
  Apellidos_Actor varchar(150),
  FechaNacimiento_Actor date,
  Nacionalidad_Actor varchar(55)
);
create table Idiomas (
  IDIdioma_Idioma INT IDENTITY(1,1) PRIMARY KEY,
  Nombre_Idioma varchar(155),
  ISOCode_Idioma varchar(120)
);
ALTER TABLE Series
ADD CONSTRAINT FK_Series_Plataformas
FOREIGN KEY (IDPlataforma_serie) REFERENCES Plataformas(ID_Plataforma);

ALTER TABLE Series
ADD CONSTRAINT FK_Series_Directores
FOREIGN KEY (IDDirector_Serie) REFERENCES Directores(ID_Director);

ALTER TABLE Series
ADD CONSTRAINT FK_Series_Actores
FOREIGN KEY (IDActores_serie) REFERENCES Actores(ID_Actor);

ALTER TABLE Series
ADD CONSTRAINT FK_Series_Idiomas
FOREIGN KEY (IDIdiomas_serie) REFERENCES Idiomas(IDIdioma_Idioma);
/*ingresar datos a plataformas*/
INSERT INTO Plataformas (Nombre_Plataforma) VALUES ('Netflix');
INSERT INTO Plataformas (Nombre_Plataforma) VALUES ('Disney+');
INSERT INTO Plataformas (Nombre_Plataforma) VALUES ('HBO Max');
INSERT INTO Plataformas (Nombre_Plataforma) VALUES ('Amazon Prime Video');
INSERT INTO Plataformas (Nombre_Plataforma) VALUES ('Apple TV+');
INSERT INTO Plataformas (Nombre_Plataforma) VALUES ('Apple TV+');
INSERT INTO Plataformas (Nombre_Plataforma) VALUES ('Crunchyroll');
/*ingresar datos a idiomas*/
INSERT INTO Idiomas (Nombre_Idioma,ISOCode_Idioma) VALUES ('Chino mandarín','zho');
INSERT INTO Idiomas (Nombre_Idioma,ISOCode_Idioma) VALUES ('Español','spa');
INSERT INTO Idiomas (Nombre_Idioma,ISOCode_Idioma) VALUES ('Inglés','eng');
INSERT INTO Idiomas (Nombre_Idioma,ISOCode_Idioma) VALUES ('Hindi','hin');
INSERT INTO Idiomas (Nombre_Idioma,ISOCode_Idioma) VALUES ('Árabe','ara');
INSERT INTO Idiomas (Nombre_Idioma,ISOCode_Idioma) VALUES ('Bengalí','ben');
INSERT INTO Idiomas (Nombre_Idioma,ISOCode_Idioma) VALUES ('Portugués','por');
INSERT INTO Idiomas (Nombre_Idioma,ISOCode_Idioma) VALUES ('Ruso','rus');
INSERT INTO Idiomas (Nombre_Idioma,ISOCode_Idioma) VALUES ('Japonés','jpn');
INSERT INTO Idiomas (Nombre_Idioma,ISOCode_Idioma) VALUES ('Francés','fra');
INSERT INTO Idiomas (Nombre_Idioma,ISOCode_Idioma) VALUES ('Malayo','msa');
INSERT INTO Idiomas (Nombre_Idioma,ISOCode_Idioma) VALUES ('Alemán','deu');
/*ingresar datos a Actores*/
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Jake','Gyllenhaal','19/12/1980','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Kristy','Swanson','19/12/1969','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Mike','Angelo','19/12/1989','Thailand');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Marcello','Mastroianni','19/12/1996','Italy');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Ronald','Howard','07/04/1918','England');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Gary','Coleman','08/02/1968','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Julianne','Moore','03/12/1960','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Emma','Stone','06/11/1988','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Scarlett','Johansson','22/11/1984','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Zendaya Maree','Stoermer Coleman','01/09/1996','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Nicolas','Cage','07/01/1964','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Tom','Cruise','03/07/1962','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Dakota','Fanning','23/02/1994','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Aidan','Gallagher','18/09/2003 ','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Jackie','Chan','07/04/1954','Hong Kong');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Pedro','Pascal','02/04/1977','Chile');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Bella','Ramsey','30/09/2001','England');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Eva','Green','06/07/1980','France');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Christopher','Nolan','30/07/1970','England');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Angelina','Jolie','04/06/1975','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Luke','Grimes','21/01/1984','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Matt','Damon','08/10/1970','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Morgan','Freeman','01/06/1937','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Jenna','Ortega','27/09/2002','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Ed','Lauter','30/10/1940','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Tom','Hanks','09/07/1956','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Samuel L.','Jackson','21/12/1948','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Robert','Downey Jr.','04/04/1965','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Owen','Wilson','18/11/1968','USA');
INSERT INTO Actores (Nombre_Actor,Apellidos_Actor,FechaNacimiento_Actor,Nacionalidad_Actor)
VALUES ('Keanu','Reeves','02/09/1964','Lebanon');
/*ingresar datos a Directores*/
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Quentin','Tarantino','27/03/1963','USA');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('David','Fincher','28/08/1962','USA');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Christopher','Nolan','30/07/1970','England');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Steven','Spielberg','18/12/1946','USA');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Denis','Villeneuve','3/10/1967','Canadá');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Clint','Eastwood','31/05/1930','USA');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Francis','Ford Coppola','7/04/1939','USA');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Joel','Coen','29/11/1954','USA');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Denis','Villeneuve','3/10/1967','Canadá');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Ridley','Scott','30/11/1937','England');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Blade','Runner','13/04/1982','USA');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Todd','Phillips','20/12/1970','USA');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Tim','Burton','25/08/1958','USA');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Damien','Chazelle','19/01/1985','USA');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Guy','Ritchie','10/09/1968','England');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Park','Chan-wook','23/08/1963','Corea del Sur');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Paolo','Sorrentino','31/05/1970','Italy');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Guillermo','del Toro','9/10/1964','Mexico');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Darren','Aronofsky','12/02/1969','USA');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Joel','Coen','29/11/1954','USA');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Roman','Polanski','18/08/1933','Polonia');
INSERT INTO Directores  (Nombre_Director,Apellidos_Director,FechaNacimiento_Director,Nacionalidad_Director)
VALUES ('Robert','Zemeckis','14/05/1952','USA');
/*ingresar datos a peliculas/series*/
INSERT INTO Series(Titulo_Serie,IDPlataforma_serie,IDDirector_Serie,IDActores_serie,IDIdiomas_serie,IdiomaAudio_Idioma,IdiomaSubtitulo_Idioma)
VALUES ('Forrest Gump','4','23','30','3','1','1');
INSERT INTO Series(Titulo_Serie,IDPlataforma_serie,IDDirector_Serie,IDActores_serie,IDIdiomas_serie,IdiomaAudio_Idioma,IdiomaSubtitulo_Idioma)
VALUES ('Jing cha gu shi','1','16','15','3','1','1');
INSERT INTO Series(Titulo_Serie,IDPlataforma_serie,IDDirector_Serie,IDActores_serie,IDIdiomas_serie,IdiomaAudio_Idioma,IdiomaSubtitulo_Idioma)
VALUES ('Lara Croft: Tomb Raider','2','14','24','1','1','1');
INSERT INTO Series(Titulo_Serie,IDPlataforma_serie,IDDirector_Serie,IDActores_serie,IDIdiomas_serie,IdiomaAudio_Idioma,IdiomaSubtitulo_Idioma)
VALUES ('Robin Hood: príncipe de los ladrones','6','5','27','2','1','1');
INSERT INTO Series(Titulo_Serie,IDPlataforma_serie,IDDirector_Serie,IDActores_serie,IDIdiomas_serie,IdiomaAudio_Idioma,IdiomaSubtitulo_Idioma)
VALUES ('The Marvels','5','13','31','4','1','1');

