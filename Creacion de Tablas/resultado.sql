CREATE TABLE resultados (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_Equipo INT,
    Equipo_Local TINYTEXT,
    Equipo_Visitante TINYTEXT,
    Goles_Local INT,
    Goles_Visitantes INT,
    ID_Competicion INT,
    FOREIGN KEY (ID_Equipo) REFERENCES equipo(ID),
    FOREIGN KEY (ID_Competicion) REFERENCES competiciones(ID)
);
