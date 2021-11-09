CREATE TABLE users(
    user_id serial primary key ,
    username varchar (32) not null ,
    contact varchar (12) not null
);

CREATE TABLE foods (
    food_id serial primary key ,
    foodname varchar (32) not null
);
CREATE TABLE orders (
    order_id serial primary key ,
    user_id int not null references users(user_id),
    food_id int not null references foods(food_id),
    count int not null
);

INSERT INTO users(username,contact) VALUES ('Muhammad','998917910420');
INSERT INTO users(username,contact) VALUES ('Hacker','998917910430');
INSERT INTO users(username,contact) VALUES ('Fozil','998917910460');


INSERT INTO foods(foodname) VALUES ('burger');
INSERT INTO foods(foodname) VALUES ('lavash');
INSERT INTO foods(foodname) VALUES ('cola');
INSERT INTO foods(foodname) VALUES ('classic');


INSERT INTO orders(user_id, food_id,count) VALUES (1,1,1);
INSERT INTO orders(user_id, food_id,count) VALUES (3,3,2);
INSERT INTO orders(user_id, food_id,count) VALUES (2,4,1);
INSERT INTO orders(user_id, food_id,count) VALUES (2,1,1);


SELECT
       o.order_id,
       f.foodname,
       u.username,
       o.count
FROM orders o
    INNER JOIN foods f USING (food_id)
    INNER JOIN users u USING (user_id)
WHERE user_id = 2;
