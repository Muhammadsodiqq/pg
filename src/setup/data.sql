CREATE DATABASE budget;

CREATE TABLE expense (
    expense_id serial primary key ,
    expense_name varchar (128)not null ,
    expense_cost smallint not null ,
    expense_date timestamptz default current_timestamp
);

CREATE TABLE income (
    income_id serial primary key ,
    income_name varchar (128)not null ,
    income_cost smallint not null ,
    income_date timestamptz default current_timestamp
);

INSERT INTO expense( expense_name, expense_cost) VALUES ('ovqat',500);
INSERT INTO expense( expense_name, expense_cost) VALUES ('kvartira',1500);
