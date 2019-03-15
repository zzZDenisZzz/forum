--- Table: users
create table users
(
  id       serial primary key,
  username text not null,
  password varchar(255)
);