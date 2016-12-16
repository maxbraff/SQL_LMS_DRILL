
CREATE TABLE Book 
(BookID int PRIMARY KEY,
Title varchar(35) NOT NULL,
PublisherName varchar(25) NOT NULL)

CREATE TABLE Publisher
(PublisherName varchar(25) PRIMARY KEY,
Address varchar(50) NOT NULL,
Phone varchar(13) NULL)

CREATE TABLE BookAuthors
(BookID int PRIMARY KEY,
AuthorName varchar(30) NOT NULL)

CREATE TABLE BookCopies
(BookID int NOT NULL,
BranchID int NOT NULL,
NumberOfCopies int NOT NULL)

CREATE TABLE BookLoans
(BookId int NOT NULL,
BranchID int NOT NULL,
CardNo int NOT NULL,
DateOut date NULL, 
DueDate date NULL)

CREATE TABLE LibraryBranch 
(BranchID int PRIMARY KEY,
BranchName varchar(50) NOT NULL,
Address varchar(50) NOT NULL)

CREATE TABLE Borrower 
(CardNo int PRIMARY KEY,
Name varchar(35) NOT NULL,
Address varchar(50) NOT NULL, 
Phone varchar(13) NOT NULL)


INSERT INTO Book
VALUES 
(1, 'The Shining', 'Signet'), 
(2, 'The Gunslinger', 'Signet'), 
(3, 'Firestarter', 'Signet'),
(4, 'Carrie', 'Signet'), 
(5, 'Christine', 'Signet'), 
(6, 'Pet Sematary', 'Signet'),
(7, 'The Lost Tribe', '24 West 26th Street Press'),
(8, 'Wytches Vol. 1', 'Image'),
(9, 'Neverwhere: A Novel', 'HarperCollins'), 
(10, 'American Gods', 'HarperCollins'),
(11, 'Stardust', 'HarperCollins'),
(12, 'The Haunting of Hill House', 'Penguin'),
(13, 'The Turn of the Screw', 'Open Road'), 
(14, 'Green River Killer', 'Image'), 
(15, 'A Game of Thrones', 'Bantam Books'),
(16, 'A Clash of Kings', 'Bantam Books'), 
(17, 'A Storm of Swords', 'Bantam Books'), 
(18, 'A Feast for Crows', 'Bantam Books'), 
(19, 'The London Underworld', 'Cartwright Press'), 
(20, 'The Art of War', 'KMW Publishing')


INSERT INTO Publisher
VALUES 
('Signet', '1221 NE Hayes St', '231-8754'), 
('24 West 26th Street Press', '9557 S Lumber Blvd', '434-9825'), 
('Image', '857 SE Hlloway Ave', '434-6712'), 
('HarperCollins', '2525 N Press Way', '232-5645'),
('Penguin', '6300 SW Spring St', '213-7580'),
('Open Road', '745 SE Killingsworth St', '503-747-2123'), 
('Bantam Books', '3211 N Hobb St', '434-2127'), 
('Cartwright Press', '545 SE Cloudsdale Ave', '343-6731'), 
('KMW Publishing', '9300 N ALice Rd', '503-242-2763')


INSERT INTO BookAuthors
VALUES 
(1, 'Stephen King'), 
(2, 'Stephen King'),
(3, 'Stephen King'),
(4, 'Stephen King'),
(5, 'Stephen King'),
(6, 'Stephen King'), 
(7, 'Mark Lee'),
(8, 'Scott Snyder'),
(9, 'Neil Gaiman'), 
(10, 'Neil Gaiman'), 
(11, 'Neil Gaiman'), 
(12, 'Shirley Jackson'), 
(13, 'Henry James'), 
(14, 'Jeff Jensen'), 
(15, 'George R. R. Martin'), 
(16, 'George R. R. Martin'), 
(17, 'George R. R. Martin'), 
(18, 'George R. R. Martin'), 
(19, 'Henry Mayhew'), 
(20, 'Sun Tzu')


INSERT INTO BookCopies
VALUES
(1, 1, 4), 
(2, 1, 3), 
(3, 1, 2), 
(4, 1, 3), 
(5, 1, 2), 
(6, 1, 4), 
(7, 1, 3), 
(8, 1, 2), 
(9, 1, 3), 
(10, 1, 2), 
(11, 1, 3), 
(12, 1, 2), 
(13, 1, 4), 
(14, 1, 3), 
(15, 1, 2), 
(16, 1, 4), 
(17, 1, 3),
(18, 1, 2),
(19, 1, 3),
(20, 1, 6),
(1, 2, 4), 
(2, 2, 3), 
(3, 2, 5), 
(4, 2, 3), 
(5, 2, 4), 
(6, 2, 2), 
(7, 2, 8), 
(8, 2, 3), 
(9, 2, 15), 
(10, 2, 4), 
(11, 2, 4), 
(12, 2, 2), 
(13, 2, 2), 
(14, 2, 7), 
(15, 2, 3), 
(16, 2, 2), 
(17, 2, 4),
(18, 2, 3),
(19, 2, 5),
(20, 2, 2),
(1, 3, 3), 
(2, 3, 2), 
(3, 3, 2), 
(4, 3, 5), 
(5, 3, 2), 
(6, 3, 4), 
(7, 3, 3), 
(8, 3, 2), 
(9, 3, 6), 
(10, 3, 2), 
(11, 3, 2), 
(12, 3, 3), 
(13, 3, 4), 
(14, 3, 3), 
(15, 3, 5), 
(16, 3, 2), 
(17, 3, 2),
(18, 3, 2),
(19, 3, 3),
(20, 3, 2),
(1, 4, 5), 
(2, 4, 2), 
(3, 4, 2), 
(4, 4, 3), 
(5, 4, 2), 
(6, 4, 4), 
(7, 4, 2), 
(8, 4, 6), 
(9, 4, 2), 
(10, 4, 2), 
(11, 4, 3), 
(12, 4, 3), 
(13, 4, 4), 
(14, 4, 3), 
(15, 4, 7), 
(16, 4, 2), 
(17, 4, 2),
(18, 4, 2),
(19, 4, 2),
(20, 4, 3)

INSERT INTO BookLoans
VALUES
(1, 1, 00001, '24 jun 16', '29 jun 16'),
(2, 1, 00001, '24 dec 16', '29 dec 16'),
(14, 1, 00001, '13 dec 16', '17 dec 16'), 
(5, 1, 00001, '20 dec 16', '24 dec 16'),
(3, 1, 00001, '19 dec 16', '23 dec 16'), 
(13, 1, 00001, '24 dec 16', '29 dec 16'), 
(10, 1, 00001, '23 dec 16', '25 dec 16'),
(8, 1, 00001, '13 dec 16', '17 dec 16'), 
(5, 4, 00001, '19 dec 16', '24 dec 16'),
(3, 2, 00002, '19 dec 16', '26 dec 16'), 
(1, 2, 00002, '24 dec 16', '26 dec 16'), 
(2, 3, 00002, '29 dec 16', '23 jan 17'),
(14, 1, 00002, '13 dec 16', '15 dec 16'), 
(5, 3, 00002, '20 dec 16', '28 dec 16'),
(11, 2, 00002, '15 dec 16', '23 dec 16'), 
(9, 2, 00002, '24 dec 16', '29 dec 16'), 
(19, 2, 00002, '24 dec 16', '29 dec 16'),
(13, 2, 00002, '13 dec 16', '17 dec 16'), 
(4, 3, 00002, '20 dec 16', '24 jan 17'),
(3, 4, 00002, '19 dec 16', '23 dec 16'), 
(11, 1, 00002, '23 dec 16', '29 dec 16'), 
(12, 3, 00003, '24 dec 16', '30 dec 16'),
(14, 4, 00003, '13 dec 16', '17 dec 16'), 
(5, 4, 00003, '20 dec 16', '22 dec 16'),
(3, 4, 00003, '12 dec 16', '23 dec 16'), 
(6, 3, 00004, '24 dec 16', '26 dec 16'), 
(9, 3, 00004, '20 dec 16', '31 dec 16'),
(12, 3, 00004, '11 dec 16', '17 dec 16'), 
(15, 3, 00004, '20 dec 16', '24 dec 16'),
(3, 2, 00005, '19 dec 16', '23 dec 16'), 
(7, 2, 00005, '24 dec 16', '29 dec 16'), 
(6, 2, 00005, '24 dec 16', '29 dec 16'),
(14, 4, 00005, '13 dec 16', '17 dec 16'), 
(15, 2, 00005, '20 dec 16', '24 dec 16'),
(13, 2, 00005, '19 dec 16', '23 dec 16'), 
(20, 1, 00005, '24 dec 16', '29 dec 16'), 
(5, 2, 00006, '24 dec 16', '29 dec 16'),
(14, 4, 00006, '13 dec 16', '17 dec 16'), 
(6, 4, 00006, '20 dec 16', '24 dec 16'),
(7, 2, 00006, '19 dec 16', '23 dec 16'), 
(15, 3, 00007, '24 dec 16', '29 dec 16'), 
(12, 3, 00007, '24 dec 16', '29 dec 16'),
(11, 2, 00009, '24 dec 16', '29 dec 16'), 
(20, 3, 00009, '24 dec 16', '29 dec 16'),
(14, 1, 00009, '13 dec 16', '17 dec 16'), 
(5, 4, 00009, '20 dec 16', '24 dec 16'),
(18, 4, 00009, '19 dec 16', '23 dec 16'), 
(19, 2, 00009, '24 dec 16', '29 dec 16'), 
(2, 3, 00010, '24 dec 16', '29 dec 16'),
(20, 4, 00010, '13 dec 16', '17 dec 16'), 
(15, 4, 00010, '20 dec 16', '24 dec 16'),
(3, 2, 00010, '19 dec 16', '23 dec 16')


INSERT INTO LibraryBranch
VALUES					
(1, 'Sharpstown', '1212 SE Main St'), 
(2, 'Central', '545 NW Attica Dr'),
(3, 'SOMA', '237 N James St'), 
(4, 'PSU Library', '603 SW Market St')


INSERT INTO Borrower 
VALUES 
(00001, 'John SMith', '54 N Pine St', '231-5456'), 
(00002, 'Penny Lowe', '987 SE Henry St', '864-2376'),
(00003, 'Eric Candles', '238 NE Apple Blvd', '238-6664'),
(00004, 'Jenny Hardy', '7370 SE Main Ave', '635-7896'),
(00005, 'Peter Bradley', '871 SE Emerson St', '457-8737'), 
(00006, 'Jennifer Sales', '235 NW Reservation Rd', '545-6723'), 
(00007, 'Sally Cooper', '5623 SW Junction Ave', '283-9862'), 
(00008, 'Sam Hall', '34 N Ericson Dr', '233-5865'), 
(00009, 'Tim Evers', '546 NE Willow St', '231-9645'), 
(00010, 'Lizzy Caplan', '5601 S Billington Rd', '231-9845')


/*
Now, create SQL queries that will answer the following questions:
1. How many copies of the book titled The Lost Tribe are owned by the library branch whose name
is"Sharpstown"?
2. How many copies of the book titled The Lost Tribe are owned by each library branch?
3. Retrieve the names of all borrowers who do not have any books checked out.
4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today,
retrieve the book title, the borrower's name, and the borrower's address.
5. For each library branch, retrieve the branch name and the total number of books loaned out from
that branch.
6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more
than five books checked out.
7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
copies owned by the library branch whose name is "Central"
Now, create a stored procedure that will execute one or more of those queries, based on user
choice.
Show all of your work to your instructor for a pass.
*/

--Query 1
SELECT B.Title, BC.NumberOfCopies, LB.BranchName
FROM Book AS B INNER JOIN 
BookCopies AS BC
ON B.BookID = BC.BookID
INNER JOIN LibraryBranch AS LB
ON BC.BranchID = LB.BranchID
WHERE B.Title = 'The Lost Tribe'
AND LB.BranchName = 'Sharpstown'

--Query 2
SELECT B.Title, BC.NumberOfCopies, LB.BranchName
FROM Book AS B INNER JOIN 
BookCopies AS BC
ON B.BookID = BC.BookID
INNER JOIN LibraryBranch AS LB
ON BC.BranchID = LB.BranchID
WHERE B.Title = 'The Lost Tribe'

--Query 3
SELECT B.Name, BL.DateOut, BL.DueDate
FROM Borrower AS B FULL OUTER JOIN
BookLoans AS BL
ON B.CardNo = BL.CardNo
WHERE DateOut IS NULL

--Query 4
SELECT LB.BranchName, BL.Duedate, B.title, BR.Name, BR.Address
FROM LibraryBranch AS LB FULL OUTER JOIN
BookLoans AS BL ON LB.BranchID = BL.BranchID
FULL OUTER JOIN Book AS B
ON BL.BookID = B.BookID
FULL OUTER JOIN Borrower AS BR
ON BL.CardNo = BR.CardNo
WHERE (LB.BranchName = 'Sharpstown') AND (BL.DueDate = '17 dec 16')

--Query 5
SELECT L.BranchID, L.Branchname, B.Dateout
FROM LibraryBranch AS L INNER JOIN
BookLoans AS B ON L.BranchID = B.BranchID
ORDER BY L.BranchID

--Query 6
SELECT BR.Name, BR.Address, COUNT(BL.Cardno) AS CopiesCheckedOut
FROM Borrower AS BR
FULL OUTER JOIN BookLoans AS BL
ON BR.CardNo = BL.CardNo
FULL OUTER JOIN BOOK AS B
ON BL.BookId = B.BookID
GROUP BY BR.Name, BR.Address
HAVING COUNT(BL.Cardno) > 5

--Query 7
SELECT BA.AuthorName, B.Title, LB.BranchName, BC.NumberOfCopies
FROM BookAuthors AS BA 
INNER JOIN Book AS B
ON BA.BookID = B.BookID
INNER JOIN BookCopies AS BC
ON B.BookID = BC.BookID
INNER JOIN LibraryBranch AS LB
ON BC.BranchID = LB.BranchID
WHERE BA.AuthorName = 'Stephen King'
AND LB.BranchName = 'Central'
