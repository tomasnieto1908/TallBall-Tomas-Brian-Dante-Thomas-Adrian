CREATE TABLE Comp_Equipo (
    ID INT PRIMARY KEY,
    ID_Copa_de_la_Liga INT,
    ID_Liga_Profesional INT,
    ID_Copa_Argentina INT,
    ID_Equipo INT,
    FOREIGN KEY (ID_Copa_de_la_Liga) REFERENCES Copa_De_La_Liga(ID),
    FOREIGN KEY (ID_Liga_Profesional) REFERENCES Liga_Profesional(ID),
    FOREIGN KEY (ID_Copa_Argentina) REFERENCES Copa_Argentina(ID),
    FOREIGN KEY (ID_Equipo) REFERENCES Equipos(ID)
);
