  
CREATE DATABASE LibraryDB;


USE LibraryDB;


CREATE TABLE Member (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);


CREATE TABLE Book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200),
    author VARCHAR(100),
    genre VARCHAR(50),
    available BOOLEAN
);


CREATE TABLE Borrow (
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Member(member_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id)
);

