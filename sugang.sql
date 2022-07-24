## database;
CREATE DATABASE sugang;
USE sugang;
##class 
CREATE TABLE class (
    grade int not NULL,
    subject varchar(10) not NULL,
    name varchar(10) not NULL,
    id int primary key,
    time int not null,
    credit int not NULL,
    professor varchar(10) not null,
    date varchar(20) not null,
    room varchar(10) not null
);

CREATE TABLE major  (
    id int not NULL,
    name varchar(10) not null,
    FOREIGN key (id) REFERENCES class (id)
);

create Table univ (
    id int not NULL,
    name varchar(10) not null,
    FOREIGN KEY (id) REFERENCES class (id)
);

CREATE TABLE user (
    id VARCHAR(15) PRIMARY KEY,
    name VARCHAR(10) not null,
    password VARCHAR(20) not null,
    grade INT not null
);

CREATE TABLE user_applylist (
    user_id VARCHAR(15) not null,
    class_id int not null,
    FOREIGN KEY (user_id) REFERENCES user (id),
    FOREIGN KEY (class_id) REFERENCES class (id)
);
