CREATE DATABASE IF NOT EXISTS homeworkSQL5;
USE homeworkSQL5;

CREATE TABLE cars (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	model VARCHAR(55),
    cost INT);

INSERT INTO cars (id, model, cost) VALUES (1, 'Audi', 52642);
INSERT INTO cars (id, model, cost) VALUES (2, 'Mercedes', 57127);
INSERT INTO cars (id, model, cost) VALUES (3, 'Skoda', 9000);
INSERT INTO cars (id, model, cost) VALUES (4, 'Volvo', 29000);
INSERT INTO cars (id, model, cost) VALUES (5, 'Bentley', 35000);
INSERT INTO cars (id, model, cost) VALUES (6, 'Citroen', 21000);
INSERT INTO cars (id, model, cost) VALUES (7, 'Hummer', 41400);
INSERT INTO cars (id, model, cost) VALUES (8, 'Volkswagen', 21600);

SELECT * FROM cars;
    

CREATE VIEW cheap_cars AS
SELECT *
FROM cars
WHERE cost < 25000;

SELECT * FROM cheap_cars;

ALTER VIEW cheap_cars AS
SELECT *
FROM cars
WHERE cost < 30000;

SELECT * FROM cheap_cars;

CREATE VIEW skoda_audi AS
SELECT *
FROM cars
WHERE model IN ('Skoda', 'Audi');

SELECT * 
FROM skoda_audi;

