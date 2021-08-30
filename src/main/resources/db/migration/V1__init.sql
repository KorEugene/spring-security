create table users (
  id                    bigserial,
  username              varchar(30) not null unique,
  password              varchar(80) not null,
  email                 varchar(50) unique,
  primary key (id)
);

create table roles (
  id                    serial,
  role_name                  varchar(50) not null,
  primary key (id)
);

create table users_roles (
  user_id               bigint not null,
  role_id               int not null,
  primary key (user_id, role_id),
  foreign key (user_id) references users (id),
  foreign key (role_id) references roles (id)
);

insert into roles (role_name)
values
('ROLE_USER'), ('ROLE_ADMIN');

insert into users (username, password, email)
values
--user/user
('user', '$2a$12$PRH5GDUcarSJ.maFoHKsWe3aZctVBv3v58Z2kvd2mEgv0wRHv3RZ6', 'user@gmail.com'),
--admin/admin
('admin', '$2a$12$9xSgxzeNkBTrKXjmyx1tTuArvRybplc1ukKgQBzTojCr01r2uIZg2', 'admin@gmail.com');

insert into users_roles (user_id, role_id)
values
(1, 1),
(2, 2);