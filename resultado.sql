CREATE TABLE resultados (
    ID_Equipo INT,
    Equipo_Local TINYTEXT,
    Equipo_Visitante TINYTEXT,
    Goles_Local INT,
    Goles_Visitantes INT,
    ID_Copa_Argentina INT,
    ID_Liga_Profesional INT,
    ID_Copa_De_La_Liga INT,
    FOREIGN KEY (ID_Equipo) REFERENCES equipo(ID),
    FOREIGN KEY (ID_Copa_Argentina) REFERENCES competiciones(ID),
    FOREIGN KEY (ID_Liga_Profesional) REFERENCES competiciones(ID),
    FOREIGN KEY (ID_Copa_De_La_Liga) REFERENCES competiciones(ID)
);
