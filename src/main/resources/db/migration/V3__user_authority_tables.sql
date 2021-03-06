create table users (
    username VARCHAR(50) NOT NULL PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    enabled boolean NOT NULL
);

create table authorities (
    username VARCHAR(50) NOT NULL,
    authority VARCHAR(50) NOT NULL,
    constraint fk_authorities_users foreign key(username) references users(username)
);

create unique index ix_auth_username on authorities (username,authority);

--create table groups (
--  id bigint generated by default as identity(start with 0) primary key,
--  group_name VARCHAR(50) not null
--);
--
--create table group_authorities (
--  group_id bigint not null,
--  authority varchar(50) not null,
--  constraint fk_group_authorities_group foreign key(group_id) references groups(id)
--);
--
--create table group_members (
--  id bigint generated by default as identity(start with 0) primary key,
--  username varchar(50) not null,
--  group_id bigint not null,
--  constraint fk_group_members_group foreign key(group_id) references groups(id)
--);