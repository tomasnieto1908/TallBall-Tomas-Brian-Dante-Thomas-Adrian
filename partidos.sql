CREATE TABLE Partidos (
   ID INT PRIMARY KEY,                        
   Local INT,                               
   Visitante INT,                             
   Fecha INT,                                                            
   ID_Competicion INT,                        
   Goles_Local INT,                           
   Goles_Visitante INT,                      
   CONSTRAINT FK_Local FOREIGN KEY (Local) REFERENCES Equipos(ID),        
   CONSTRAINT FK_Visitante FOREIGN KEY (Visitante) REFERENCES Equipos(ID),   
   CONSTRAINT FK_Competicion FOREIGN KEY (ID_Competicion) REFERENCES Competicion(ID) 
);
