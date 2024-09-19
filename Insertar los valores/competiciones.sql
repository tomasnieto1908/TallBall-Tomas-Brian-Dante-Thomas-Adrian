-- Insert

INSERT INTO competiciones (Nombre)
VALUES ("Copa de la liga"),
	   ("Liga profesional"),
       ("Copa Argentina");


-- Select 

SELECT Nombre FROM competiciones WHERE ID = 1;


-- Update

UPDATE competiciones SET Nombre = 'copA de la Liga'
WHERE ID = 1;


-- Delete

DELETE FROM competiciones
WHERE ID = 1;


-- New Insert

INSERT INTO competiciones (ID, Nombre) 
VALUES (1, 'Copa de la Liga')
