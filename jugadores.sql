CREATE TABLE jugadores (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Cantidad_de_Goles INT,
    Cantidad_de_Asistencias INT,
    ID_Equipo INT,
    Nombre_Jugador TINYTEXT,
    FOREIGN KEY (ID_Equipo) REFERENCES equipos(ID)
);

--River--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(17, 5, 1, 'Lucas Beltrán'),
(14, 3, 1, 'Pablo Solari'),
(12, 7, 1, 'Ignacio Fernández'),
(10, 12, 1, 'Esequiel Barco'),
(8, 9, 1, 'Nicolás De La Cruz'),
(6, 4, 1, 'Miguel Borja'),
(4, 1, 1, 'Rodrigo Aliendro'),
(2, 0, 1, 'Enzo Pérez'),
(3, 2, 1, 'Milton Casco'),
(2, 6, 1, 'Santiago Simón'),
(0, 3, 1, 'Franco Armani'), 
(1, 0, 1, 'Robert Rojas'),
(5, 1, 1, 'José Paradela'),
(3, 2, 1, 'Leandro González Pirez'),
(0, 0, 1, 'Paulo Díaz'),
(0, 1, 1, 'Andrés Herrera'),
(0, 0, 1, 'Jonatan Maidana'),
(1, 0, 1, 'Matías Suárez'),
(2, 1, 1, 'Agustín Palavecino'),
(0, 0, 1, 'Elías Gómez'),
(1, 1, 1, 'Brian Corbalan'),
(0, 0, 1, 'David Martínez');

--Boca--

INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(12, 4, 2, 'Darío Benedetto'),
(9, 6, 2, 'Luis Vázquez'),
(8, 5, 2, 'Sebastián Villa'),
(6, 7, 2, 'Óscar Romero'),
(7, 2, 2, 'Luca Langoni'),
(4, 9, 2, 'Pol Fernández'),
(3, 3, 2, 'Martín Payero'),
(2, 1, 2, 'Norberto Briasco'),
(1, 5, 2, 'Alan Varela'),
(3, 2, 2, 'Frank Fabra'),
(2, 4, 2, 'Luis Advíncula'),
(1, 1, 2, 'Nicolás Figal'),
(0, 0, 2, 'Marcos Rojo'), 
(0, 0, 2, 'Facundo Roncaglia'),
(0, 0, 2, 'Adrian Gamarra'),
(0, 0, 2, 'Agustín Rossi'),
(0, 0, 2, 'Sergio Romero'), 
(2, 0, 2, 'Exequiel Zeballos'),
(1, 0, 2, 'Cristian Medina'),
(0, 1, 2, 'Marcelo Weigandt'),
(0, 0, 2, 'Valentín Barco'),
(1, 0, 2, 'Ezequiel Fernández'),
(2, 1, 2, 'Nicolás Orsini'),
(0, 0, 2, 'Esteban Rolón'),
(0, 0, 2, 'Bruno Valdez'),
(0, 0, 2, 'Miguel Merentiel');

--Independiente--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(8, 4, 3, 'Martín Cauteruccio'),
(5, 2, 3, 'Matías Giménez Rojas'),
(4, 3, 3, 'Rodrigo Márquez'),
(3, 7, 3, 'Iván Marcone'),
(2, 5, 3, 'Braian Martínez'),
(3, 2, 3, 'Baltasar Barcia'),
(2, 4, 3, 'Damián Pérez'),
(1, 1, 3, 'Luciano Gómez'),
(1, 0, 3, 'Sergio Ortiz'),
(1, 2, 3, 'Ayrton Costa'),
(2, 0, 3, 'Joaquín Laso'),
(1, 0, 3, 'Javier Báez'),
(0, 0, 3, 'Milton Álvarez'), 
(0, 0, 3, 'Rodrigo Rey'), 
(2, 1, 3, 'Agustín Mulet'),
(1, 2, 3, 'Nicolás Vallejo'),
(1, 1, 3, 'Patricio Ostachuk'),
(0, 0, 3, 'Edgar Elizalde'),
(0, 0, 3, 'Sergio Barreto'),
(0, 0, 3, 'Kevin López'),
(1, 0, 3, 'Gabriel Hachen'),
(0, 0, 3, 'Lucas Rodríguez');

--Racing--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(15, 4, 4, 'Matías Rojas'),
(10, 8, 4, 'Maximiliano Romero'),
(8, 6, 4, 'Gabriel Hauche'),
(7, 10, 4, 'Johan Carbonero'),
(6, 3, 4, 'Jonathan Gómez'),
(5, 4, 4, 'Aníbal Moreno'),
(4, 7, 4, 'Nicolás Oroz'),
(3, 2, 4, 'Emiliano Vecchio'),
(3, 3, 4, 'Tomás Chancalay'),
(2, 1, 4, 'Gonzalo Piovi'),
(2, 3, 4, 'Leonardo Sigali'),
(1, 4, 4, 'Iván Pillud'),
(1, 2, 4, 'Facundo Mura'),
(1, 0, 4, 'Paolo Guerrero'),
(0, 0, 4, 'Gabriel Arias'), 
(0, 0, 4, 'Matías Tagliamonte'), 
(2, 1, 4, 'Edwin Cardona'),
(1, 2, 4, 'Juan Ignacio Nardoni'),
(1, 0, 4, 'Agustín Ojeda'),
(1, 0, 4, 'Nicolás Reniero'),
(0, 0, 4, 'Emiliano Insúa'),
(0, 0, 4, 'Eugenio Mena'),
(0, 0, 4, 'Lucas Orban'),
(0, 0, 4, 'Fernando Prado');


-- San Lorenzo 2023 --
INSERT INTO Jugadores (Cantidad_Goles, Cantidad_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(15, 4, 5, 'Adam Bareiro'),
(10, 8, 5, 'Pablo De Blasis'),
(8, 6, 5, 'Nicolás Fernández'),
(7, 10, 5, 'Ezequiel Cerutti'),
(6, 3, 5, 'Gonzalo Maroni'),
(5, 4, 5, 'Jalil Elias'),
(4, 7, 5, 'Federico Gattoni'),
(3, 2, 5, 'Agustín Martegani'),
(3, 3, 5, 'Tomás Conechny'),
(2, 1, 5, 'Facundo Pérez'),
(2, 3, 5, 'Lucas Melano'),
(1, 4, 5, 'Gino Infantino'),
(1, 2, 5, 'Sergio Rochet'),
(1, 0, 5, 'Juan Ramírez'),
(0, 0, 5, 'Guido Rodríguez'), 
(0, 0, 5, 'Hernán López'), 
(2, 1, 5, 'Leonardo Burián'),
(1, 2, 5, 'Juan Ramírez'),
(1, 0, 5, 'Tomas Nieto'),
(1, 0, 5, 'Cristian González'),
(0, 0, 5, 'Emiliano Insúa'),
(0, 0, 5, 'Eugenio Mena'),
(0, 0, 5, 'Lucas Orban'),
(0, 0, 5, 'Fernando Prado');



--Velez Sarsfield--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(6, 1, 6, 'Santiago Castro'),
(5, 3, 6, 'Claudio Aquino'),
(4, 0, 6, 'Lucas Janson'),
(3, 1, 6, 'Walter Bou'),
(2, 2, 6, 'José Florentín'),
(2, 1, 6, 'Abiel Osorio'),
(1, 2, 6, 'Francisco Ortega'),
(1, 1, 6, 'Lucas Pratto'),
(1, 0, 6, 'Braian Romero'),
(1, 0, 6, 'Diego Godín'),
(1, 0, 6, 'Joaquín García'),
(1, 1, 6, 'Lautaro Gianetti'),
(0, 3, 6, 'Francisco Pizzini'),
(0, 0, 6, 'Leonardo Burián'),
(2, 0, 6, 'Gianluca Prestianni'),
(1, 0, 6, 'Julián Fernández'),
(0, 1, 6, 'Mateo Seoane'),
(0, 0, 6, 'Gastón Gómez');
(1, 1, 6, 'Braian Cufré'),
(0, 2, 6, 'Leonardo Jara'),
(0, 0, 6, 'Elías Gómez'),
(1, 0, 6, 'Diego Valentín Gómez'),
(1, 0, 6, 'Tomás Guidara'),
(0, 0, 6, 'Santiago Caseres');
(0, 3, 6,"Dante Bracamonte")


--Estudiantes de la plata--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(10, 5, 7, 'Lucas Beltrán'),
(8, 7, 7, 'Sergio Agüero'),
(7, 6, 7, 'Matías Almeyda'),
(6, 4, 7, 'Nicolás Martínez'),
(5, 8, 7, 'Giovanni Simeone'),
(5, 3, 7, 'Alejandro Gómez'),
(4, 5, 7, 'Rodrigo Aliendro'),
(4, 2, 7, 'Juan Ramírez'),
(3, 6, 7, 'Federico Fernández'),
(3, 4, 7, 'Esteban Pucci'),
(2, 5, 7, 'Agustín Vuletich'),
(2, 3, 7, 'Juan Ignacio Surraco'),
(2, 2, 7, 'Facundo Castelli'),
(1, 4, 7, 'Matías Suárez'),
(1, 3, 7, 'Cristian Martínez'),
(1, 2, 7, 'Ezequiel Miralles'),
(1, 1, 7, 'Fidel Martínez'),
(1, 0, 7, 'Tomás Papaleo'),
(0, 3, 7, 'Emiliano Papa'),
(0, 2, 7, 'Francisco Carra'),
(0, 1, 7, 'Alejandro Rey'),
(0, 0, 7, 'Juan Insaurralde'),
(0, 0, 7, 'Lucas Menossi'),
(0, 0, 7, 'Fernando Márquez');


--Gimnasia y Esgrima La Plata
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(2, 1, 8, 'Leonardo Morales'),
(4, 3, 8, 'Cristian Tarragona'),
(1, 1, 8, 'Franco Soldano'),
(0, 2, 8, 'Ignacio Miramón'),
(0, 1, 8, 'Nicolás Colazo'),
(3, 2, 8, 'Pablo de Blasis'),
(0, 0, 8, 'Nelson Insfrán'),
(2, 4, 8, 'Matías Miranda'),
(1, 2, 8, 'Juan Cruz Esquivel'),
(0, 0, 8, 'Marcos Ledesma'),
(1, 1, 8, 'Enzo Martínez'),
(0, 0, 8, 'Agustín Bolívar'),
(0, 2, 8, 'Martín Fernández'),
(1, 1, 8, 'Valentín Rodríguez'),
(0, 1, 8, 'Brian Blasi'),
(0, 0, 8, 'Rodrigo Gallo'),
(0, 0, 8, 'Sebastián Cocimano'),
(3, 0, 8, 'Eric Ramírez'),
(2, 0, 8, 'Nicolás Contin'),
(1, 0, 8, 'Ivo Mammini'),
(0, 0, 8, 'Gustavo Canto'),
(0, 0, 8, 'Yonathan Cabral'),
(1, 1, 8, 'Juan Pintado'),
(0, 0, 8, 'Rodrigo Castillo');


--Newells Old Boys--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(10, 5, 9, 'Ignacio Ramírez'),
(8, 6, 9, 'Francisco González'),
(7, 4, 9, 'Juan Manuel García'),
(6, 3, 9, 'Gabriel Carabajal'),
(5, 7, 9, 'Lucas Besozzi'),
(4, 2, 9, 'Misael Jaime'),
(4, 1, 9, 'Fernando Cardozo'),
(3, 4, 9, 'Juan Ignacio Méndez'),
(2, 1, 9, 'Brian Calderara'),
(2, 3, 9, 'Leonel Vangioni'),
(1, 2, 9, 'Esteban Fernández'),
(1, 1, 9, 'Armando Méndez'),
(0, 0, 9, 'Lucas Hoyos'),
(0, 0, 9, 'Ramiro Macagno'),
(2, 0, 9, 'Matko Miljevic'),
(1, 3, 9, 'Tomás Pérez'),
(1, 0, 9, 'Angelo Martino'),
(0, 0, 9, 'Tomás Jacob'),
(0, 0, 9, 'Gustavo Velázquez'),
(0, 0, 9, 'David Sotelo'),
(1, 0, 9, 'Giovani Chiaverano'),
(2, 1, 9, 'Mateo Silvetti'),
(0, 0, 9, 'Julián Contrera'),
(3, 2, 9, 'Rodrigo Fernández Cedrés');


--Rosario Central--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(11, 6, 10, 'Alejo Véliz'),
(8, 9, 10, 'Jaminton Campaz'),
(6, 5, 10, 'Luca Martínez Dupuy'),
(7, 4, 10, 'Ignacio Malcorra'),
(3, 6, 10, 'Lautaro Giaccone'),
(2, 4, 10, 'Francesco Lo Celso'),
(3, 3, 10, 'Gino Infantino'),
(4, 2, 10, 'Walter Montoya'),
(2, 1, 10, 'Jonatan Candia'),
(2, 1, 10, 'Luciano Ferreyra'),
(1, 3, 10, 'Kevin Ortiz'),
(0, 0, 10, 'Jorge Broun'),
(1, 0, 10, 'Facundo Mallo'),
(0, 0, 10, 'Carlos Quintana'),
(0, 0, 10, 'Damián Martínez'),
(2, 1, 10, 'Alan Rodríguez'),
(0, 0, 10, 'Gaspar Servio'),
(1, 0, 10, 'Marco Ruben'),
(0, 0, 10, 'Kevin Silva'),
(0, 0, 10, 'Valentino Quintero'),
(0, 0, 10, 'Facundo Agüero'),
(1, 1, 10, 'Tomás O Connor'),
(1, 2, 10, 'Franco Ibarra'),
(1, 0, 10, 'Maximiliano Lovera');


--Argentinos Juniors-- 
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(12, 6, 11, 'Gabriel Ávalos'),
(10, 4, 11, 'Francisco González Metilli'),
(7, 5, 11, 'Thiago Nuss'),
(5, 3, 11, 'Javier Cabrera'),
(4, 2, 11, 'Luciano Sánchez'),
(4, 1, 11, 'Federico Redondo'),
(3, 4, 11, 'Miguel Torrén'),
(2, 5, 11, 'Lucas Villalba'),
(3, 1, 11, 'Luciano Gondou'),
(2, 2, 11, 'Alan Rodríguez'),
(1, 0, 11, 'Gastón Verón'),
(0, 2, 11, 'Matías Vera'),
(1, 1, 11, 'Kevin Mac Allister'),
(0, 0, 11, 'Federico Lanzillota'),
(0, 0, 11, 'Franco Moyano'),
(1, 1, 11, 'Julián Fernández'),
(1, 0, 11, 'Pablo Minissale'),
(1, 2, 11, 'Leonel González'),
(1, 1, 11, 'Emanuel Herrera'),
(0, 0, 11, 'Miguel Acosta'),
(0, 0, 11, 'Gonzalo Siri'),
(0, 1, 11, 'Alan Lescano'),
(0, 0, 11, 'Jonathan Galván'),
(0, 0, 11, 'Leonardo Heredia');


--Huracán--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(5, 1, 12, 'Ignacio Pussetto'),
(3, 0, 12, 'Héctor Fértoli'),
(1, 2, 12, 'Walter Mazzantti'),
(1, 0, 12, 'Rodrigo Echeverría'),
(2, 0, 12, 'Williams Alarcón'),
(0, 1, 12, 'Lucas Carrizo'),
(0, 1, 12, 'César Ibáñez'),
(0, 1, 12, 'Franco Alfonso'),
(0, 0, 12, 'Fernando Tobio'),
(0, 0, 12, 'Agustino Spina'),
(0, 0, 12, 'Sebastián Meza'),
(0, 0, 12, 'Alan Soñora'),
(0, 0, 12, 'Marcelo Pérez'),
(0, 0, 12, 'Fabio Pereyra'),
(0, 0, 12, 'Rodrigo Cabral'),
(0, 0, 12, 'Guillermo Benítez'),
(0, 0, 12, 'Lucas Souto'),
(0, 0, 12, 'Agustín Toledo'),
(0, 0, 12, 'Juan Cruz Komar'),
(0, 0, 12, 'Leandro Garate'),
(0, 0, 12, 'Hernán Galíndez'),
(0, 0, 12, 'Nicolás Cordero'),
(0, 0, 12, 'Ramón Ábila'),
(0, 0, 12, 'Marcelo Díaz'),
(0, 0, 12, 'Matías Cóccaro');


-- Lanús --
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(10, 5, 13, 'Gustavo Bou'),
(8, 4, 13, 'Marcelino Moreno'),
(6, 2, 13, 'Ezequiel Muñoz'),
(7, 3, 13, 'Agustín Medina'),
(5, 6, 13, 'Lucas Acosta'),
(4, 5, 13, 'Nicolás Morgantini'),
(3, 2, 13, 'Carlos Izquierdoz'),
(2, 1, 13, 'Ramiro Carrera'),
(1, 1, 13, 'Gonzalo Pérez'),
(1, 0, 13, 'Facundo Sánchez'),
(0, 0, 13, 'Nicolás Cláa'),
(0, 0, 13, 'Nahuel Losada'),
(0, 0, 13, 'Gustavo Calderari'),
(0, 0, 13, 'Leonel Cardozo'),
(0, 0, 13, 'Thiago Laplace'),
(1, 2, 13, 'Luciano Romero'),
(2, 1, 13, 'Elías Brito'),
(3, 0, 13, 'Martin González'),
(2, 3, 13, 'Dylan Aquino'),
(4, 4, 13, 'Raúl Loaiza'),
(1, 1, 13, 'Agustín Rodríguez'),
(1, 1, 13, 'Salvio'),
(3, 2, 13, 'Nery Domínguez'),
(0, 0, 13, 'Mariano Gerez');


-- Banfield --
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(5, 3, 14, 'Juan Manuel Cruz'),
(4, 2, 14, 'Santiago Silva'),
(3, 1, 14, 'Gonzalo Luján'),
(2, 4, 14, 'Eric Remedi'),
(2, 3, 14, 'Alejandro Cabrera'),
(2, 2, 14, 'Ezequiel Bonifacio'),
(1, 1, 14, 'Martín Cañete'),
(1, 2, 14, 'Yvo Calleros'),
(0, 0, 14, 'Marcelo Barovero'),
(0, 0, 14, 'Emanuel Coronel'),
(0, 0, 14, 'Alexis Maldonado'),
(0, 0, 14, 'Gabriel Aranda'),
(0, 0, 14, 'Luis Del Pino Mago'),
(0, 0, 14, 'Luciano Recalde'),
(0, 0, 14, 'Pedro Souto'),
(0, 0, 14, 'Emanuel Insúa'),
(0, 0, 14, 'Cristian Núñez'),
(0, 0, 14, 'Jesús Soraire'),
(0, 0, 14, 'Matías González'),
(0, 0, 14, 'Lautaro Ríos'),
(0, 0, 14, 'Gabriel Arias'),
(0, 0, 14, 'Joaquín Ibáñez'),
(0, 0, 14, 'Ezequiel Centurión'),
(0, 0, 14, 'Federico Fernández');


--Talleres--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(5, 2, 15, 'Nahuel Bustos'),
(4, 1, 15, 'Michael Santos'),
(3, 2, 15, 'Federico Girotti'),
(2, 3, 15, 'Lautaro Ovando'),
(1, 4, 15, 'Blas Riveros'),
(6, 1, 15, 'Diego Valoyes'),
(2, 2, 15, 'Bruno Barticciotto'),
(3, 3, 15, 'Rodrigo Garro'),
(1, 1, 15, 'Matías Catalán'),
(4, 0, 15, 'Nicolás Pasquini'),
(2, 1, 15, 'Javier Vallejo'),
(0, 1, 15, 'Tomás Palacios'),
(0, 0, 15, 'Gastón Benavídez'),
(1, 0, 15, 'Kevin Pereira'),
(3, 0, 15, 'Christian Oliva'),
(1, 0, 15, 'Diego Ortegoza'),
(2, 1, 15, 'Alan Franco'),
(0, 0, 15, 'Matías Gómez'),
(1, 1, 15, 'Luis Sequeira'),
(2, 2, 15, 'Gonzalo Alves'),
(3, 2, 15, 'Vicente Fernández'),
(2, 1, 15, 'Favio Álvarez'),
(1, 0, 15, 'Agustín Galarza'),
(0, 0, 15, 'Ramiro Enríquez'),
(0, 0, 15, 'José Romero');


--Belgrano--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(0, 1, 16, 'Nicolás Losada'),
(0, 0, 16, 'Matías Ibacache'),
(1, 0, 16, 'Lucas Diarte'),
(1, 0, 16, 'Alejo Rébola'),
(3, 2, 16, 'Juan Barinaga'),
(0, 0, 16, 'Nicolás Meriano'),
(0, 0, 16, 'Francisco Facello'),
(0, 0, 16, 'Santiago Longo'),
(0, 2, 16, 'Gabriel Compagnucci'),
(1, 1, 16, 'Matías García'),
(1, 0, 16, 'Ezequiel Godoy'),
(1, 0, 16, 'Emanuel Rolón'),
(0, 0, 16, 'Francisco Oliver'),
(0, 0, 16, 'Ibrahim Hesar'),
(10, 1, 16, 'L. Passerini'),
(13, 1, 16, 'Pablo Vegetti'),
(1, 0, 16, 'Fernando Bordagaray'),
(2, 6, 16, 'U. Sánchez'),
(1, 1, 16, 'Mateo Miño'),
(1, 1, 16, 'M. Marín'),
(1, 0, 16, 'S. Lencioni'),
(0, 0, 16, 'T. Castro'),
(0, 0, 16, 'J. Susvielles'),
(0, 1, 16, 'P. Chavarría'),
(0, 0, 16, 'N. Schiappacasse');


--Riestra--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(1, 0, 17, 'Matías Giordano'),
(0, 0, 17, 'Joaquín Ibáñez'),
(0, 0, 17, 'Nicolás Ferreyra'),
(1, 0, 17, 'Lucas Damián'),
(2, 1, 17, 'Diego Dabove'),
(0, 1, 17, 'Agustín Piz'),
(0, 0, 17, 'Ezequiel Rojas'),
(0, 0, 17, 'Cristian Dávila'),
(1, 0, 17, 'Gabriel Sosa'),
(1, 1, 17, 'Joaquín Ibáñez'),
(3, 0, 17, 'Facundo Castro'),
(1, 2, 17, 'Nicolás Gómez'),
(0, 0, 17, 'Javier Ávalos'),
(0, 0, 17, 'Leonardo Sánchez'),
(4, 1, 17, 'Ezequiel Bullaude'),
(2, 2, 17, 'Agustín Rodríguez'),
(1, 0, 17, 'Lucas Martínez'),
(0, 0, 17, 'Joaquín Quiroga'),
(0, 0, 17, 'Gonzalo Rodríguez'),
(1, 0, 17, 'Pablo Ruíz'),
(0, 1, 17, 'Gonzalo Berón'),
(0, 0, 17, 'Matías Ríos'),
(0, 0, 17, 'Fernando González'),
(0, 0, 17, 'Maximiliano Ríos'),
(0, 0, 17, 'Diego Pérez');


--Unión--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(0, 0, 18, 'Sebastián Meza'),
(0, 1, 18, 'Matías García'),
(0, 0, 18, 'Joaquín Ibáñez'),
(1, 0, 18, 'Lucas Esquivel'),
(1, 1, 18, 'Nicolás Cordero'),
(2, 2, 18, 'Joaquín Paparato'),
(0, 0, 18, 'Jonathan Valle'),
(1, 0, 18, 'Mauro Luna Diale'),
(3, 1, 18, 'Gonzalo Acevedo'),
(4, 1, 18, 'Diego Polenta'),
(0, 0, 18, 'Nicolás Andereggen'),
(0, 0, 18, 'Ezequiel Cañete'),
(0, 0, 18, 'Brian Blasi'),
(2, 0, 18, 'Enrique Bologna'),
(0, 1, 18, 'Lucas González'),
(1, 0, 18, 'Rafael Carranza'),
(0, 0, 18, 'Gonzalo Verdún'),
(1, 0, 18, 'Tomás González'),
(2, 0, 18, 'Francisco González'),
(0, 1, 18, 'Fernando Torrent'),
(0, 0, 18, 'Alejandro González'),
(0, 0, 18, 'Brian Fernández'),
(0, 0, 18, 'Fernando Zuqui'),
(1, 1, 18, 'Joaquín Ibáñez'),
(0, 0, 18, 'Leonardo Burián');


--Atlético Tucumán--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(0, 0, 19, 'Tomás Marchiori'),
(0, 1, 19, 'Matías Catalán'),
(1, 0, 19, 'Leonardo Heredia'),
(2, 0, 19, 'Enzo Díaz'),
(1, 2, 19, 'Sergio Ortiz'),
(0, 0, 19, 'Ramiro Carrera'),
(1, 1, 19, 'Juan Ramírez'),
(3, 0, 19, 'Cristian Menéndez'),
(0, 0, 19, 'Diego Rodríguez'),
(0, 0, 19, 'Lucas Melano'),
(0, 0, 19, 'Lucas Acosta'),
(0, 0, 19, 'Joaquín Ibáñez'),
(2, 1, 19, 'Ignacio Maestro'),
(1, 1, 19, 'Matías Alustiza'),
(4, 1, 19, 'Gonzalo Sosa'),
(0, 1, 19, 'Ramiro Funes'),
(1, 0, 19, 'Santiago Silva'),
(0, 0, 19, 'Matías Orozco'),
(0, 0, 19, 'Joaquín Ibáñez'),
(1, 0, 19, 'Cristian González'),
(0, 1, 19, 'Diego Rodríguez'),
(0, 0, 19, 'Gonzalo Luján'),
(0, 0, 19, 'Nicolás Romero'),
(1, 0, 19, 'Javier Toledo'),
(0, 0, 19, 'Facundo Buonanotte');


--Central Córdoba--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(0, 0, 20, 'Diego Rodríguez'),
(0, 1, 20, 'Gonzalo Montiel'),
(1, 0, 20, 'Diego Valoyes'),
(2, 1, 20, 'Leonardo Sequeira'),
(3, 0, 20, 'Matías Ramírez'),
(0, 0, 20, 'Nicolás Fernández'),
(1, 1, 20, 'Facundo Castelli'),
(0, 0, 20, 'Carlos Rodríguez'),
(1, 0, 20, 'Nicolás Martínez'),
(0, 0, 20, 'Ezequiel Bullaude'),
(0, 0, 20, 'Lucas Melano'),
(1, 0, 20, 'Cristian Vega'),
(2, 2, 20, 'Gonzalo Berón'),
(0, 0, 20, 'Ezequiel Cañete'),
(1, 0, 20, 'Agustín Bianchi'),
(0, 0, 20, 'Joaquín Ibáñez'),
(0, 0, 20, 'Franco Bianchi'),
(0, 0, 20, 'Fernando Godoy'),
(0, 0, 20, 'Nicolás Ferreyra'),
(0, 1, 20, 'Lucas Gómez'),
(0, 0, 20, 'Maximiliano Comba'),
(0, 0, 20, 'Sebastián Lomónaco'),
(0, 0, 20, 'Nicolás Vázquez'),
(0, 0, 20, 'Diego García'),
(0, 0, 20, 'Ignacio Schott');


--Platense--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(0, 0, 21, 'Matías Pardo'),
(0, 1, 21, 'Juan Cruz Kaprof'),
(2, 0, 21, 'Mauro Bogado'),
(1, 1, 21, 'Nicolás Servetto'),
(3, 0, 21, 'Rodrigo Contreras'),
(0, 0, 21, 'Santiago Biglieri'),
(1, 0, 21, 'Lautaro Acosta'),
(1, 2, 21, 'Franco Baldassarra'),
(0, 0, 21, 'Brian Mansilla'),
(0, 0, 21, 'Nicolás Mazzola'),
(0, 1, 21, 'Ezequiel Bullaude'),
(1, 0, 21, 'Leonel Olszanski'),
(0, 0, 21, 'Fernando Araujo'),
(0, 0, 21, 'Joaquín Ibáñez'),
(4, 1, 21, 'Ignacio Vázquez'),
(2, 1, 21, 'Gonzalo Bergessio'),
(1, 0, 21, 'Pablo Ledesma'),
(0, 0, 21, 'Gastón Suso'),
(0, 0, 21, 'Gonzalo Curuchet'),
(1, 1, 21, 'Diego Martínez'),
(0, 0, 21, 'Nicolás Cordero'),
(0, 0, 21, 'Lucas Vera'),
(0, 0, 21, 'Julio Vázquez'),
(0, 0, 21, 'Ramiro Enrique'),
(0, 0, 21, 'Maximiliano Cuadra');


--Sarmiento--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(0, 0, 22, 'Fernando Aijón'),
(0, 1, 22, 'Joaquín Ibáñez'),
(1, 0, 22, 'Lucas Melano'),
(2, 1, 22, 'Brian Fernández'),
(3, 0, 22, 'Diego Torres'),
(1, 0, 22, 'Ezequiel Bullaude'),
(0, 0, 22, 'Nicolás Fernández'),
(1, 0, 22, 'Gonzalo Varela'),
(0, 0, 22, 'Fernando García'),
(0, 1, 22, 'Juan Manuel García'),
(1, 0, 22, 'Gonzalo Berón'),
(0, 0, 22, 'Maximiliano Comba'),
(1, 0, 22, 'Matías Rojas'),
(0, 0, 22, 'Santiago Vázquez'),
(1, 2, 22, 'Ezequiel Centurión'),
(0, 0, 22, 'Agustín Arce'),
(0, 0, 22, 'Sebastián Lomónaco'),
(1, 0, 22, 'Javier Toledo'),
(0, 0, 22, 'Ramiro Díaz'),
(0, 0, 22, 'Fernando López'),
(0, 0, 22, 'Diego García'),
(0, 0, 22, 'Nicolás López'),
(1, 0, 22, 'Franco Fernández'),
(0, 0, 22, 'Matías Quintana'),
(0, 0, 22, 'Joaquín Ibáñez');


--Instituto--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(0, 0, 23, 'Matías Fernández'),
(1, 0, 23, 'Joaquín Ibáñez'),
(2, 1, 23, 'Lucas Melano'),
(3, 0, 23, 'Fernando Rodríguez'),
(0, 0, 23, 'Nicolás Mazzola'),
(1, 1, 23, 'Santiago Rodríguez'),
(0, 0, 23, 'Diego Rodríguez'),
(2, 0, 23, 'Gonzalo Varela'),
(1, 0, 23, 'Javier Toledo'),
(0, 1, 23, 'Ezequiel Bullaude'),
(0, 0, 23, 'Maximiliano Comba'),
(1, 0, 23, 'Brian Fernández'),
(0, 0, 23, 'Agustín Arce'),
(1, 2, 23, 'Fernando García'),
(0, 0, 23, 'Facundo González'),
(0, 0, 23, 'Matías Rojas'),
(0, 0, 23, 'Lucas Melano'),
(0, 0, 23, 'Joaquín Ibáñez'),
(1, 0, 23, 'Carlos Rodríguez'),
(0, 1, 23, 'Fernando López'),
(0, 0, 23, 'Diego García'),
(0, 0, 23, 'Nicolás López'),
(1, 0, 23, 'Franco Fernández'),
(0, 0, 23, 'Sebastián Lomónaco'),
(0, 0, 23, 'Agustín Bianchi');


--Barracas Central--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(0, 0, 24, 'Matías Moya'),
(1, 0, 24, 'Agustín Ojeda'),
(2, 1, 24, 'Carlos Arce'),
(3, 0, 24, 'Martín Cauteruccio'),
(1, 0, 24, 'Nicolás Sosa'),
(0, 0, 24, 'Leonardo Sequeira'),
(1, 2, 24, 'Pablo Mouche'),
(0, 1, 24, 'Ezequiel Fernández'),
(0, 0, 24, 'Joaquín Ibáñez'),
(0, 0, 24, 'Nicolás Fernández'),
(2, 0, 24, 'Ezequiel Bullaude'),
(0, 0, 24, 'Facundo González'),
(1, 0, 24, 'Javier Toledo'),
(0, 0, 24, 'Diego Rodríguez'),
(1, 1, 24, 'Juan Cruz Komar'),
(0, 0, 24, 'Lucas Melano'),
(0, 0, 24, 'Nicolás López'),
(1, 0, 24, 'Fernando Rodríguez'),
(0, 0, 24, 'Brian Fernández'),
(0, 0, 24, 'Agustín Bianchi'),
(0, 0, 24, 'Lucas Melano'),
(1, 0, 24, 'Diego García'),
(0, 0, 24, 'Sebastián Lomónaco'),
(0, 0, 24, 'Carlos Rodríguez'),
(0, 0, 24, 'Nicolás Ferreyra');


--Tigre--
INSERT INTO jugadores (Cantidad_de_Goles, Cantidad_de_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(1, 1, 25, 'Mateo Retegui'),
(0, 2, 25, 'Lucas Menossi'),
(3, 0, 25, 'Facundo Colidio'),
(2, 1, 25, 'Nicolás Reniero'),
(1, 0, 25, 'Santiago Montiel'),
(0, 1, 25, 'Joaquín Ibáñez'),
(1, 1, 25, 'Lucas Blondel'),
(0, 0, 25, 'Diego González'),
(1, 0, 25, 'Cristian Medina'),
(0, 0, 25, 'Sebastián Prediger'),
(0, 0, 25, 'Alan Ruiz'),
(1, 0, 25, 'Gabriel Hauche'),
(0, 0, 25, 'Ezequiel Bullaude'),
(0, 0, 25, 'Nahuel Gallardo'),
(2, 1, 25, 'Fernando Valenzuela'),
(1, 0, 25, 'Ivan Spreen'),
(0, 0, 25, 'Agustín Martegani'),
(0, 0, 25, 'Joaquín Ibáñez'),
(0, 0, 25, 'Lucas Melano'),
(1, 0, 25, 'Carlos Rodríguez'),
(0, 0, 25, 'Diego García'),
(0, 0, 25, 'Nicolás López'),
(0, 0, 25, 'Sebastián Lomónaco'),
(0, 0, 25, 'Facundo González'),
(0, 0, 25, 'Ramon Ferreyra');
