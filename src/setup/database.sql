CREATE DATABASE join_db;

CREATE TABLE cars_a(
    car_id serial primary key ,
    car_name varchar (32) not null,
    car_color varchar (16)
);

CREATE TABLE cars_b(
    car_id serial primary key ,
    car_name varchar (32) not null ,
    car_color varchar (16)
);

INSERT INTO cars_a (car_name, car_color) VALUES ('Maluba','black');
INSERT INTO cars_a (car_name, car_color) VALUES ('Matiz','white');
INSERT INTO cars_a (car_name, car_color) VALUES ('Nexia','grey');
INSERT INTO cars_a (car_name) VALUES ('Tiko');
INSERT INTO cars_a (car_name, car_color) VALUES ('Damas','blue');


INSERT INTO cars_b (car_name, car_color) VALUES ('Maluba','green');
INSERT INTO cars_b (car_name, car_color) VALUES ('Matiz','white');
INSERT INTO cars_b (car_name, car_color) VALUES ('Gentra','grey');
INSERT INTO cars_b (car_name, car_color) VALUES ('Cobalt','white');
INSERT INTO cars_b (car_name, car_color) VALUES ('Damas','blue');

/*INNER JOIN*/
/*
    first table - left
    second tabe - right
*/

SELECT
    cars_a.car_id car_a_id,
    cars_a.car_name car_a_name,
    cars_a.car_color car_a_color,
    cars_b.car_id car_b_id,
    cars_b.car_name car_b_name,
    cars_b.car_color car_b_color
FROM cars_a INNER JOIN cars_b ON cars_a.car_name = cars_b.car_name;


/*LEFT JOIN*/

SELECT
    cars_a.car_id car_a_id,
    cars_a.car_name car_a_name,
    cars_a.car_color car_a_color,
    cars_b.car_id car_b_id,
    cars_b.car_name car_b_name,
    cars_b.car_color car_b_color
FROM cars_a LEFT JOIN cars_b ON cars_a.car_name = cars_b.car_name;

/*RIGHT JOIN*/

SELECT
    cars_a.car_id car_a_id,
    cars_a.car_name car_a_name,
    cars_a.car_color car_a_color,
    cars_b.car_id car_b_id,
    cars_b.car_name car_b_name,
    cars_b.car_color car_b_color
FROM cars_a RIGHT JOIN cars_b ON cars_a.car_name = cars_b.car_name;

/*RIGHT OUTER  JOIN*/

SELECT
    cars_a.car_id car_a_id,
    cars_a.car_name car_a_name,
    cars_a.car_color car_a_color,
    cars_b.car_id car_b_id,
    cars_b.car_name car_b_name,
    cars_b.car_color car_b_color
FROM cars_a RIGHT JOIN cars_b ON cars_a.car_name = cars_b.car_name WHERE cars_a.car_id IS NULL ;


/*LEFT OUTER  JOIN*/

SELECT
    cars_a.car_id car_a_id,
    cars_a.car_name car_a_name,
    cars_a.car_color car_a_color,
    cars_b.car_id car_b_id,
    cars_b.car_name car_b_name,
    cars_b.car_color car_b_color
FROM cars_a LEFT JOIN cars_b ON cars_a.car_name = cars_b.car_name WHERE cars_b.car_id IS NULL ;
