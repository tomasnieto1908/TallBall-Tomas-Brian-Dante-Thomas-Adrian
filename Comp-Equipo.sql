CREATE TABLE comp_equipo (
    ID INT PRIMARY KEY,
    ID_Competicion INT,
    ID_Equipo INT,
    FOREIGN KEY (ID_Competicion) REFERENCES competiciones(ID),
    FOREIGN KEY (ID_Equipo) REFERENCES equipo(ID)
);

