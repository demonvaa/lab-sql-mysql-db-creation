USE lab_mysql;

-- las filas duplicadas son la 5 y la 6 con ese nombre , NO LA 4
DELETE FROM cars where id = 5;

SELECT * FROM cars;