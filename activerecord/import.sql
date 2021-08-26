-- table名は複数形にしなければならない
drop table if exists users;
create table users(
    id integer primary key,
    name text,
    age integer,
    created_at,
    updated_at
);

create table comments(
    id integer primary key,
    user_id integer,
    body text,
    created_at,
    updated_at
);
