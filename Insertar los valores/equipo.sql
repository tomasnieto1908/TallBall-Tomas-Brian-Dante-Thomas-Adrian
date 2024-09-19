INSERT INTO equipo (Nombre_Equipo, Apodo_Equipo, Estadio_Equipo)
VALUES 
('River Plate', 'Los Millonarios', 'Estadio Monumental'),
('Boca Juniors', 'Xeneizes', 'La Bombonera'),
('Independiente', 'El Rojo', 'Estadio Libertadores de América'),
('Racing Club', 'La Academia', 'Estadio Presidente Perón'),
('San Lorenzo', 'Los Cuervos', 'Estadio Pedro Bidegain'),
('Vélez Sarsfield', 'El Fortín', 'Estadio José Amalfitani'),
('Estudiantes', 'Los Pincharratas', 'Estadio Jorge Luis Hirschi'),
('Gimnasia y Esgrima La Plata', 'El Lobo', 'Estadio Juan Carmelo Zerillo'),
('Newells Old Boys', 'La Lepra', 'Estadio Marcelo Bielsa'),
('Rosario Central', 'El Canalla', 'Estadio Gigante de Arroyito'),
('Argentinos Juniors', 'El Bicho', 'Estadio Diego Armando Maradona'),
('Huracán', 'El Globo', 'Estadio Tomás Adolfo Ducó'),
('Lanús', 'El Granate', 'Estadio Ciudad de Lanús'),
('Banfield', 'El Taladro', 'Estadio Florencio Sola'),
('Talleres', 'La T', 'Estadio Mario Alberto Kempes'),
('Belgrano', 'Los Piratas', 'Estadio Julio César Villagra'),
('Riestra', 'Los Malevos', 'Estadio Guillermo Laza'),
('Unión', 'El Tatengue', 'Estadio 15 de Abril'),
('Atlético Tucumán', 'El Decano', 'Estadio Monumental José Fierro'),
('Central Córdoba', 'El Ferroviario', 'Estadio Alfredo Terrera'),
('Platense', 'El Calamar', 'Estadio Ciudad de Vicente López'),
('Sarmiento', 'El Verde', 'Estadio Eva Perón'),
('Instituto', 'La Gloria', 'Estadio Presidente Perón'),
('Barracas Central', 'El Guapo', 'Estadio Claudio Fabián Tapia'),
('Tigre', 'El Matador', 'Estadio José Dellagiovanna'),
('Defensa y Justicia', 'El Halcón', 'Estadio Norberto Tomaghello'),
('Independiente Rivadavia', 'La Lepra Mendocina', 'Estadio Bautista Gargantini'),
('Godoy Cruz', 'El Tomba', 'Estadio Feliciano Gambarte');


-- SELECT --

SELECT * FROM equipo WHERE Nombre_Equipo = "River Plate" 

-- INSERT --

INSERT INTO equipo (Nombre_Equipo)
VALUES ("Colon");

-- UPDATE --

UPDATE equipo SET Nombre_Equipo = "Colado" WHERE Nombre_Equipo = "Colon"

-- DELETE --

DELETE FROM equipo
WHERE Nombre_Equipo = "Colado"