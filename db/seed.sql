DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;

create table users (
    id serial primary key,
    email varchar(100),
    hash varchar(250)
);

create table if not exists posts (
    id serial primary key,
    users_id int references users(id),
    content varchar(250),
    created_at date
);