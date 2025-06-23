create database Libary;
use Libary;

-- Book table
CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Publisher VARCHAR(100),
    ISBN VARCHAR(20),
    Year INT,
    Quantity INT
);

-- Member table
CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255),
    JoinDate DATE
);

-- Librarian table
CREATE TABLE Librarian (
    LibrarianID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

-- Issue table
CREATE TABLE Issue (
    IssueID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    LibrarianID INT,
    IssueDate DATE,
    DueDate DATE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID),
    FOREIGN KEY (LibrarianID) REFERENCES Librarian(LibrarianID)
);




-- Reservation table (optional)
CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    ReservationDate DATE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

INSERT INTO Book VALUES (1, 'Harry Potter', 'J.K. Rowling', 'Bloomsbury', '9780747532743', 1997, 3);
INSERT INTO Book VALUES (2, 'The Hobbit', 'J.R.R. Tolkien', 'HarperCollins', '9780261103344', 1937, 2);

-- Members
INSERT INTO Member VALUES (101, 'Alice', 'alice@gmail.com', '9876543210', '123 Main Street', '2023-01-15');
INSERT INTO Member VALUES (102, 'Bob', 'bob@gmail.com', '9123456789', '456 Park Ave', '2023-02-10');

-- Librarians
INSERT INTO Librarian VALUES (201, 'Clara', 'clara@library.com');

-- Issuebookbook
INSERT INTO Issue VALUES (301, 1, 101, 201, '2025-06-20', '2025-07-04');
