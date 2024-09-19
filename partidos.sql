CREATE TABLE partidos (
   ID INT PRIMARY KEY,                        
   Local INT,                               
   Visitante INT,                             
   Fecha INT,                                                            
   ID_Competicion INT,                        
   Goles_Local INT,                           
   Goles_Visitante INT,                      
   CONSTRAINT FK_Local FOREIGN KEY (Local) REFERENCES equipo(ID),        
   CONSTRAINT FK_Visitante FOREIGN KEY (Visitante) REFERENCES equipo(ID),   
   CONSTRAINT FK_Competicion FOREIGN KEY (ID_Competicion) REFERENCES competiciones(ID) 
);
