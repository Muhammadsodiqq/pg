DROP  TABLE IF EXISTS colors cascade ;
DROP  TABLE IF EXISTS details cascade ;

DROP  TABLE details cascade ;

CREATE TABLE colors(
    color_id serial not null primary key ,
    name varchar(16) not null
);


CREATE TABLE details(
    detail_id serial not null primary key ,
    hex char(6) not null ,
    rgb varchar(11),
    color_id int not null references colors(color_id)
);

comment on table colors is 'Ranglar';
comment on table details is 'Detallar';


