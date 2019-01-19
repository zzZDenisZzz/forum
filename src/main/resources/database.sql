--- Table: users
create table users (
 id serial primary key,
 username text not null,
 password char(50)
);

-- Table: roles
create table roles (
  id serial primary key,
  name char(100)
);

-- Table for mapping user and roles: user_roles
create table user_roles (
  user_id int not null,
  role_id int not null,

  foreign key (user_id) references users (id),
  foreign key (role_id) references roles (id),

  unique (user_id, role_id)
);

-- Insert data
insert into users values (1,'zzZDenysZzz','qweasdzxc');

insert into roles values(1,'ROLE_USER');
insert into roles values (2,'ROLE_ADMIN');

insert into user_roles values (1,2);