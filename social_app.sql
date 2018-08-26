create database if not exists social_app;

use social_app;


drop table if exists comments;
drop table if exists posts;
drop table if exists users;

create table users (
    id int(3) not null auto_increment,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    user_name varchar(10) not null,
    phone_number int(10),
    email varchar(100) not null,
    password varchar(10) not null,
    primary key(id)
);
create table posts (
    post_id int(3) not null auto_increment,
    contents varchar(255) not null,
    user_id int(3) not null,
    foreign key (user_id) references users (id),
    primary key(post_id)
);
create table comments (
    comment_id int(3) not null auto_increment,
    user_id int(3) not null,
    post_id int(3) not null,
    contents varchar(255) not null,
    foreign key (user_id) references users (id),
    foreign key (post_id) references posts (post_id),
    primary key(comment_id)
);