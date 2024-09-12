CREATE TABLE Comp_Equipo (
    ID INT PRIMARY KEY,
    ID_Competicion INT,
    ID_Equipo INT,
    FOREIGN KEY (ID_Competicion) REFERENCES Competiciones(ID),
    FOREIGN KEY (ID_Equipo) REFERENCES Equipo(ID)
);
