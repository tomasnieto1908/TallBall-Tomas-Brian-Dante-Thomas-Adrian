///
-- Ejemplo de partidos en la Liga Profesional
--    INSERT INTO partidos (ID, Local, Visitante, Fecha, ID_Competicion, Goles_Local, Goles_Visitante)
VALUES
(1, 1, 2, '2023-09-15', 2, 2, 1),  -- River Plate vs Boca Juniors
(2, 3, 4, '2023-09-16', 2, 1, 1),  -- Racing Club vs Independiente
(3, 5, 6, '2023-09-17', 2, 3, 2),  -- San Lorenzo vs Huracán
(4, 7, 8, '2023-09-18', 2, 0, 0),  -- Vélez Sarsfield vs Estudiantes
(5, 9, 10, '2023-09-19', 1, 2, 2); -- Gimnasia LP vs Lanús

-- Ejemplo de partidos en la Copa Argentina
--INSERT INTO partidos (ID, Local, Visitante, Fecha, ID_Competicion, Goles_Local, Goles_Visitante)
VALUES
(6, 11, 12, '2023-10-01', 2, 1, 0), -- Banfield vs Argentinos Juniors
(7, 13, 14, '2023-10-02', 2, 2, 3), -- Defensa y Justicia vs Talleres
(8, 15, 16, '2023-10-03', 2, 1, 1), -- Colón vs Unión
(9, 17, 18, '2023-10-04', 2, 0, 0), -- Newell's Old Boys vs Rosario Central
(10, 19, 20, '2023-10-05', 2, 3, 2); -- Godoy Cruz vs Atlético Tucumán


//
---INSERT INTO partidos (ID, Local, Visitante, Fecha, ID_Competicion, Goles_Local, Goles_Visitante)
VALUES 
(1, (SELECT ID FROM equipo WHERE Nombre_Equipo = 'Rosario Central'), (SELECT ID FROM equipo WHERE Nombre_Equipo = 'Argentinos Juniors'), 20230101, 1, 1, 0),
(2, (SELECT ID FROM equipo WHERE Nombre_Equipo = 'River Plate'), (SELECT ID FROM equipo WHERE Nombre_Equipo = 'Central Córdoba'), 20230101, 1, 2, 0),
--(3, (SELECT ID FROM equipo WHERE Nombre_Equipo = 'Racing Club'), (SELECT ID FROM equipo WHERE Nombre_Equipo = 'Belgrano'), 20230101, 1, 0, 0),
--(4, (SELECT ID FROM equipo WHERE Nombre_Equipo = 'San Lorenzo'), (SELECT ID FROM equipo WHERE Nombre_Equipo = 'Independiente'), 20230101, 1, 1, 1);