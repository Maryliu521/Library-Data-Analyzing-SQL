--Q1
USE db_books
GO
CREATE Procedure dbo.title_liabrarybranch1 @title VARCHAR(50), @Branchname Varchar(50)
AS
SELECT No_of_copies, BranchName
 FROM tbl_book AS b
INNER JOIN tbl_book_copies AS c ON b.Bookid = c.Bookid
INNER JOIN tbl_library_branch AS l ON c.Branchid = l.Branchid
Where Title = @title AND Branchname = @Branchname

--EXEC dbo.title_liabrarybranch1 @title='The Lost Tribe',@Branchname='Sharpstown'



--Q2
USE db_books
GO
CREATE PROCEDURE dbo.copies_of_The_Lost_Tribe @title VARCHAR(50)
AS 
SELECT No_of_copies, BranchName
FROM tbl_book AS b
INNER JOIN tbl_book_copies AS c ON b.Bookid = c.Bookid
INNER JOIN tbl_library_branch AS l ON c.Branchid = l.Branchid
WHERE title = @title;


--EXEC dbo.copies_of_The_Lost_Trible @title='The Lost Tribe';

--Q3
USE db_books
GO
CREATE PROCEDURE dbo.who_no_books1 @Bookid INT
AS
SELECT Name
FROM tbl_borrower AS p
INNER JOIN tbl_book_loans AS l ON p.CardNo = l.CardNo
INNER JOIN tbl_book AS b ON l.Bookid = b.Bookid
WHERE @Bookid IS NULL

--EXEC[dbo].[who_no_books1] @Bookid=0;


--	Q4
CREATE PROCEDURE dbo.DueDate @BranchName VARCHAR(50),@DueDate VARCHAR(50)
AS
SELECT Title,Address,Name
FROM tbl_library_branch AS lb
INNER JOIN tbl_book_loans AS bl ON lb.Branchid = bl.Branchid
INNER JOIN tbl_book AS b ON bl.Bookid = b.Bookid
INNER JOIN tbl_borrower AS p ON bl.CardNo = p.CardNo
WHERE BranchName=@BranchName AND DueDate=@DueDate;

--EXEC dbo.DueDate @BranchName = 'Sharpstown', @DueDate='2017-10-17';



--Q5
USE db_books
GO
CREATE PROCEDURE dbo.number_of_book_from_branch @BranchName VARCHAR(50)
AS
SELECT BranchName,COUNT(No_of_copies) AS totalbooks
FROM tbl_library_branch AS lb
INNER JOIN tbl_book_copies AS c ON lb.Branchid = c.Branchid
INNER JOIN tbl_book_loans AS bl ON c.Bookid = bl.Bookid
GROUP BY BranchName 
Having BranchName = @BranchName;

--EXEC dbo.number_of_book_from_branch @BranchName = 'Sharpstown'; 

--Q6
USE db_books
GO
CREATE PROCEDURE dbo.No_of_books1 @totalnumbers INT NULL
AS

SELECT Name, Address, COUNT(bl.CardNo) As TotalLoans
FROM tbl_borrower AS p
INNER JOIN tbl_book_loans AS bl ON p.CardNo = bl.CardNo
GROUP BY Name,Address
Having COUNT(bl.CardNo)>@totalnumbers ;


--EXEC dbo.No_of_books1 @totalnumbers =5

--Q7
USE db_books
GO
CREATE PROCEDURE dbo.Stephen_King_Branch @AuthorName VARCHAR(50),@BranchName VARCHAR(20)
AS
SELECT Title, COUNT(No_of_copies) AS Numbers , AuthorName,BranchName
FROM tbl_library_branch AS lb
INNER JOIN tbl_book_copies AS c ON lb.Branchid = c.Branchid
INNER JOIN tbl_book_authors AS a ON c.Bookid =a.Bookid
INNER JOIN tbl_book AS b ON a.Bookid = b.Bookid
GROUP BY Title, AuthorName,BranchName
HAVING AuthorName = @AuthorName AND BranchName = @BranchName

--Exec dbo.Stephen_King_Branch @AuthorName='Stephen King', @BranchName='Central';