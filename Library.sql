use db_books

CREATE TABLE tbl_book(
Bookid INT PRIMARY KEY NOT NULL IDENTITY(1,1),
Title Varchar(100) NOT NULL,
PublisherName Varchar(100) NOT NULL
);

INSERT INTO tbl_book
(Title,PublisherName)
VALUES
('The Lost Tribe','Picador USA'),
('Pete the cat-I love my white shoes','Harper Collins'),
('The Three little pigs','Carson-dellosa'),
('Lagom','Harper Collins'),
('It','Viking'),
('Pete the cat- Saves Christmas','Harper Collins'),
('Apt Pupil','Simon&Schuster'),
('The eyes of dragon','Simon&Schuster'),
('Raising Trump','Simon&Schuster'),
('How I lost you','Simon&Schuster'),
('Thanks, Obama','Harper Collins'),
('Proof of life','Harper Collins'),
('Charming Billy','Picador USA'),
('Train Dream','Picador USA'),
('The last kingdom','Viking'),
('The marriage plot','Picador USA'),
('The mouse and the motorcycle','Harper Collins'),
('Runaway Ralph','Harper Collins'),
('Clifford the big red dog','Scholastic Corporation'),
('Clifford-birthday party','Scholastic Corporation')
;

SELECT*FROM tbl_book;



CREATE TABLE tbl_book_authors(
Bookid INT PRIMARY KEY NOT NULL IDENTITY(1,1),
AuthorName Varchar(500) NOT NULL);

INSERT INTO tbl_book_authors
(AuthorName)
VALUES
('Mark Lee'),
 ('Eric Litwin'),
('Patricia Seibert'),
('Niki Brantmark'),
('Stephen King'),
('Eric Litwin'),
('Stephen King'),
('Stephen King'),
('Ivana Trump'),
('Jenny Blackhurst'),
('David Litt'),
('J.A. Jance'),
('Alice Mcdemott'),
('Denis Johnson'),
('Bernard Cornnwell'),
('Jefferey Eugenides'),
('Beverly Cleary'),
('Beverly Cleary'),
('Norman Birdwell'),
('Norman Birdwell');

SELECT * FROM tbl_book_authors;

CREATE TABLE tbl_publisher(
Name Varchar(100) PRIMARY KEY NOT NULL,
Address Varchar(200),
Phone Varchar(50)
);

INSERT INTO tbl_publisher(
Name, Address, Phone)
VALUES
('Harper Collins','195 Broadway New York, NY, 10007','212-207-7000'),
('Viking','852 Autumn Forest Dr. Jonesboro,GA, 30236','210-222-1001'),
('Carson-Dellosa','7027 Albert Pick Rd. Greensboro, NC, 27409','336-632-0084'),
('Simon&Schuster','1230 Ave. of the Americas 10th F, New York, NY, 10020','800-223-2336'),
('Picador USA','175 5th Ave. New York, NY, 10010','646-307-5629'),
('Scholastic Corporation',' New York, NY, 10012','212-343-6100');

SELECT * FROM tbl_publisher;
USE db_books

CREATE TABLE tbl_book_loans(
Bookid INT PRIMARY KEY NOT NULL IDENTITY(1,1),
Branchid INT,
CardNo VarChar(10),
DateOut Varchar(50),
DueDate Varchar(50)
);

INSERT INTO tbl_book_loans
(Branchid,CardNo,DateOut,DueDate)
VALUES
(1,'A1','2017-01-02','2017-01-09'),
(2,'A2','2017-01-12','2017-01-19'),
(3,'A3','2017-01-12','2017-01-19'),
(4,'A8','2017-02-05','2017-02-12'),
(1,'A1','2017-10-01','2017-10-17'),
(2,'A3','2017-05-02','2017-05-09'),
(3,'A2','2017-05-03','2017-05-11'),
(4,'A4','2017-05-12','2017-05-19'),
(1,'A4','2017-09-22','2017-10-17'),
(2,'A5','2017-06-02','2017-06-08'),
(4,'A4','2017-06-21','2017-06-28'),
(3,'A6','2017-07-10','2017-07-17'),
(3,'A4','2017-07-21','2017-07-28'),
(2,'A7','2017-08-01','2017-08-08'),
(1,'A4','2017-08-20','2017-08-27'),
(4,'A1','2017-08-12','2017-08-20'),
(1,'A1','2017-09-02','2017-09-09'),
(2,'A1','2017-09-22','2017-09-29'),
(3,'A5','2017-10-02','2017-10-09'),
(4,'A6','2017-10-02','2017-10-10'),
(1,'A4','2017-10-02','2017-10-10'),
(2,'A6','2017-09-02','2017-09-10'),
(3,'A5','2017-10-02','2017-10-10'),
(4,'A7','2017-10-22','2017-10-29'),
(2,'A2','2017-10-02','2017-10-10'),
(4,'A1','2017-05-02','2017-05-10'),
(3,'A4','2017-10-02','2017-10-10'),
(1,'A6','2017-10-02','2017-10-10'),
(2,'A4','2017-10-02','2017-10-10'),
(1,'A1','2017-09-02','2017-09-09'),
(4,'A1','2017-06-02','2017-06-09'),
(2,'A2','2017-07-02','2017-07-09'),
(2,'A2','2017-07-04','2017-07-11'),
(1,'A1','2017-07-04','2017-07-11'),
(1,'A1','2017-08-01','2017-08-08'),
(1,'A3','2017-09-02','2017-09-09'),
(2,'A1','2017-09-02','2017-09-09'),
(4,'A3','2017-09-02','2017-09-09'),
(2,'A1','2017-09-02','2017-09-09'),
(3,'A4','2017-08-12','2017-08-19'),
(1,'A3','2017-09-02','2017-09-09'),
(3,'A4','2017-08-11','2017-08-19'),
(3,'A4','2017-08-12','2017-08-19'),
(1,'A1','2017-07-02','2017-07-09'),
(4,'A2','2017-07-02','2017-07-09'),
(1,'A1','2017-05-02','2017-05-09'),
(1,'A1','2017-05-02','2017-05-09'),
(3,'A1','2017-02-02','2017-02-09'),
(2,'A3','2017-01-02','2017-01-09'),
(2,'A1','2017-01-22','2017-01-29'),
(1,'A3','2017-04-02','2017-04-09')
;

SELECT * FROM tbl_book_loans;

USE db_books
CREATE TABLE tbl_book_copies(
Bookid INT PRIMARY KEY NOT NULL IDENTITY(1,1),
Branchid INT,
No_of_copies INT
);

INSERT INTO tbl_book_copies
(Branchid,No_of_copies)
VALUES
(1,3),
(2,2),
(3,4),
(4,2),
(2,3),
(2,5),
(2,4),
(4,2),
(1,4),
(2,3),
(4,4),
(3,5),
(3,2),
(2,2),
(1,3),
(4,5),
(1,3),
(2,2),
(3,4);

SELECT * FROM tbl_book_copies;


CREATE TABLE tbl_borrower(
CardNo VARCHAR(10) PRIMARY KEY NOT NULL,
Name VARCHAR(50),
Address VARCHAR(100),
Phone VARCHAR(50)
);

INSERT INTO tbl_borrower
(CardNo, Name, Address, Phone)
VALUES
('A1','John','120 NW 56th ave. portland, OR 97207','503-894-0101'),
('A2','Bob','120 NW evert rd. portland, OR 97201','503-777-0141'),
('A3','Lily','130 SW 7th ave. portland, OR 97221','503-822-3213'),
('A4','Lucy','100 NW 56th ave. portland, OR 97212','503-804-0101'),
('A5','Jim','15600 SW Harrison st. portland, OR 97234','503-234-0291'),
('A6','James','120 NW Paul st. portland, OR 97200','503-894-8422'),
('A7','Isaiah','120 NW 6th ave. portland, OR 97247','503-293-3901'),
('A8','Matthew','210 SE 78th ave. portland, OR 97307','503-097-8881')
;

SELECT * FROM tbl_borrower;

USE db_books

CREATE TABLE tbl_library_branch(
Branchid INT PRIMARY KEY NOT NULL IDENTITY(1,1),
BranchName VARCHAR(100),
Branch_Address VARCHAR(100)
);


INSERT INTO tbl_library_branch
(BranchName, Branch_Address)
VALUES
('Sharpstown','320 SW 52th Ave. Hillsboro, OR, 97709'),
('Central','110 NE cornell, Hillsboro, OR, 97009'),
('Beaverton','4200 SW West Union rd. Hillsboro, OR, 97008'),
('Hillsboro','320 NE 52th, Portland, OR, 97209')
;
USE db_books
SELECT * FROM tbl_library_branch;


Update tbl_library_branch SET BranchName = 'sharpstown' WHERE BranchName = 'sharsptown'