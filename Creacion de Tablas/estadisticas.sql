CREATE TABLE estadisticas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_Equipo INT NOT NULL,
    ID_Competicion INT NOT NULL,
    Amarillas_Recibidas INT,
    Rojas_Recibidas INT,
    Fouls_Cometidos INT,
    Porcentaje_Posesion DECIMAL(5, 2),
    Penales_a_Favor INT,
    FOREIGN KEY (ID_Equipo) REFERENCES equipo(ID),
    FOREIGN KEY (ID_Competicion) REFERENCES competiciones(ID)
);
