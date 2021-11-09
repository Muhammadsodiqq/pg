INSERT INTO colors(name) VALUES
                             ('black'),('yellow'),('red');
INSERT INTO details(hex,rgb,color_id) VALUES ('ffffff','255.255.255',3);
SELECT UPPER(c.name) FROM  colors AS c;

SELECT colors.name,details.*
FROM colors
NATURAL JOIN details;

CREATE TABLE d_colors(
    d_id serial not null primary key ,
    name varchar(62) not null
);

CREATE TABLE l_colors(
        d_id serial not null primary key ,
        name varchar(62) not null
);

INSERT INTO d_colors(name) VALUES ('d_white'),('d_blue'),('d_light');
INSERT INTO l_colors(name) VALUES ('l_black');

SELECT name from d_colors UNION SELECT name FROM l_colors ORDER BY ID DESC;
SELECT (SELECT COUNT(*) FROM d_colors) + (SELECT COUNT(*) FROM l_colors);

SELECT a.* ,b.* FROM d_colors AS a LEFT JOIN l_colors AS b ON a.name = b.name;

CREATE TYPE gender as ENUM('male','female');

CREATE TABLE users(
--     user_id  int8 generated always  as identity (increment by 10 start with 100) primary key ,
    user_id  serial primary key ,
    username character varying (32) not null,
    age int2 null,
    gender gender null
);

COMMENT ON TABLE users is 'foydalanuvchilar ro`yxati';
INSERT INTO users(username,age,gender) VALUES ('Muhammad',18, 'male');
INSERT INTO users(username,age,gender) VALUES ('Sarvar',19, 'male');
INSERT INTO users(username,age,gender) VALUES ('Nodir ',14, 'male');
INSERT INTO users(username,age,gender) VALUES ('Saidakbar',12, 'male');


SELECT * FROM users WHERE age <=20;


CREATE INDEX age_idx ON users(age) WHERE age < 20;
CREATE INDEX gender_idx ON users USING HASH (gender);
