CREATE TABLE jugadores (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Cantidad_de_Goles INT,
    Cantidad_de_Asistencias INT,
    ID_Equipo INT,
    Nombre_Jugador TINYTEXT,
    FOREIGN KEY (ID_Equipo) REFERENCES equipos(ID)
);

--River--
INSERT INTO Jugadores (Cantidad_Goles, Cantidad_Asistencias, ID_Equipo, Nombre_Jugador)
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

INSERT INTO Jugadores (Cantidad_Goles, Cantidad_Asistencias, ID_Equipo, Nombre_Jugador)
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
INSERT INTO Jugadores (Cantidad_Goles, Cantidad_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
-- Jugadores principales
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
INSERT INTO Jugadores (Cantidad_Goles, Cantidad_Asistencias, ID_Equipo, Nombre_Jugador)
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


--San Lorenzo--
INSERT INTO Jugadores (Cantidad_Goles, Cantidad_Asistencias, ID_Equipo, Nombre_Jugador)
VALUES
(15, 4, 5, 'Matías Rojas'),
(10, 8, 5, 'Maximiliano Romero'),
(8, 6, 5, 'Gabriel Hauche'),
(7, 10, 5, 'Johan Carbonero'),
(6, 3, 5, 'Jonathan Gómez'),
(5, 4, 5, 'Aníbal Moreno'),
(4, 7, 5, 'Nicolás Oroz'),
(3, 2, 5, 'Emiliano Vecchio'),
(3, 3, 5, 'Tomás Chancalay'),
(2, 1, 5, 'Gonzalo Piovi'),
(2, 3, 5, 'Leonardo Sigali'),
(1, 4, 5, 'Iván Pillud'),
(1, 2, 5, 'Facundo Mura'),
(1, 0, 5, 'Paolo Guerrero'),
(0, 0, 5, 'Gabriel Arias'), 
(0, 0, 5, 'Matías Tagliamonte'), 
(2, 1, 5, 'Edwin Cardona'),
(1, 2, 5, 'Juan Ignacio Nardoni'),
(1, 0, 5, 'Agustín Ojeda'),
(1, 0, 5, 'Nicolás Reniero'),
(0, 0, 5, 'Emiliano Insúa'),
(0, 0, 5, 'Eugenio Mena'),
(0, 0, 5, 'Lucas Orban'),
(0, 0, 5, 'Fernando Prado');