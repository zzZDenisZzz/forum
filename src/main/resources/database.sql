--- Table: users
create table users
(
  id       serial primary key,
  username text not null,
  password varchar(255)
);

--- Table: roles
create table roles
(
  id   serial primary key,
  name varchar(30)
);

-- Table for mapping user and roles: user_roles
create table user_roles
(
  user_id int not null,
  role_id int not null,

  foreign key (user_id) references users(id),
  foreign key (role_id) references roles(id),

  unique (user_id,role_id)
);

create table topic
(
  id serial primary key,
  theme text not null,
  topic_date timestamp(0) without time zone default now()
);

create table posts
(
  id serial primary key,
  theme text not null,
  posting_date timestamp(0) without time zone default now(),
  topic_id int not null,

  foreign key (topic_id) references topic(id),

  unique (topic_id)
);

-- Insert data
insert into users values (1,'Admin','$2a$04$8hYx7aVAiAR.wWE0UsjngeAFyu/dZm8oRRM2lgd26F4SUwOqlqjvu');

insert into roles values(1,'ROLE_USER');
insert into roles values (2,'ROLE_ADMIN');

insert into user_roles values (1,2);

insert into topic values (1, 'Welcome to the "Green Stone"');