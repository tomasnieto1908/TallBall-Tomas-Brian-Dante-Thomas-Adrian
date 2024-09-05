CREATE TABLE Partidos (
   ID INT PRIMARY KEY,                        
   Local INT,                               
   Visitante INT,                             
   Fecha INT,                               
   ID_Equipo INT,                             
   ID_Competicion INT,                        
   Goles_Local INT,                           
   Goles_Visitante INT,                      
   CONSTRAINT FK_Local FOREIGN KEY (Local) REFERENCES Equipos(ID),        
   CONSTRAINT FK_Visitante FOREIGN KEY (Visitante) REFERENCES Equipos(ID), 
   CONSTRAINT FK_Equipo FOREIGN KEY (ID_Equipo) REFERENCES Equipos(ID),    
   CONSTRAINT FK_Competicion FOREIGN KEY (ID_Competicion) REFERENCES Competicion(ID) 
);
