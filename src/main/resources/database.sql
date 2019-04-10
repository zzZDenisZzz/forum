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

-- Table: topics
create table topics
(
  id serial primary key,
  theme text not null,
  topic_date timestamp(0) without time zone default now()
);

-- Table: posts
create table posts
(
  id serial primary key,
  message text not null,
  posting_date timestamp(0) without time zone default now(),
  topic_id int not null,

  foreign key (topic_id) references topics(id),

  unique (topic_id)
);

-- Insert data
insert into users values (1,'Admin','$2a$04$8hYx7aVAiAR.wWE0UsjngeAFyu/dZm8oRRM2lgd26F4SUwOqlqjvu');

insert into roles values(1,'USER');
insert into roles values (2,'ADMIN');

insert into user_roles values (1,2);

insert into topics values (1, 'Welcome to the "Green Stone"');
insert into topics values (2, 'Topic Test');

insert into posts values (1,'TEST Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque ratione nulla
            quisquam porro consectetur, hic voluptatibus non officia neque iusto quod debitis ipsum repudiandae,
            blanditiis natus accusamus est odit dolorem!','2011-05-16 15:36:38',1);

insert into posts values (2,'TEST Lorem ip odit dolorem!','2011-05-16 18:36:38',2);