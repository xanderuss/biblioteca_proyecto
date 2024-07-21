-- Active: 1721569470265@@127.0.0.1@3306@biblioteca

CREATE TABLE users(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone_number INTEGER(10) NOT NULL,
    identification VARCHAR(10) NOT NULL,
    user VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE books(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    writer VARCHAR(50) NOT NULL,
    editorial VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    isbn VARCHAR(50) NOT NULL,
    features VARCHAR(500),
    date DATE NOT NULL
);

CREATE TABLE deleted_books(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    isbn varchar(50),
    date DATE NOT NULL
);

CREATE TABLE library_users(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    identification VARCHAR(10) NOT NULL,
    name VARCHAR(50) NOT NULL,
    grade INTEGER(2) NOT NULL,
    date DATE NOT NULL
    
    );

CREATE TABLE history_loan(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name_user BIGINT,
    CONSTRAINT FK_NAME_USER FOREIGN KEY (name_user) REFERENCES library_users (id),
    book_id BIGINT,
    CONSTRAINT FK_TITLE_BOOK FOREIGN KEY (book_id) REFERENCES books (id),
    loan_date DATE NOT NULL,
    entry_date DATE NOT NULL
    );

CREATE TABLE  penalties (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT,
    CONSTRAINT FK_PENALTY_USER FOREIGN KEY (user_id) REFERENCES library_users (id)
    
    );







    


);