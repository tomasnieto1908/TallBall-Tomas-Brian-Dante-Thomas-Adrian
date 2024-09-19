CREATE TABLE jugadores (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Cantidad_de_Goles INT,
    Cantidad_de_Asistencias INT,
    ID_Equipo INT,
    Nombre_Jugador TINYTEXT,
    FOREIGN KEY (ID_Equipo) REFERENCES equipos(ID)
);