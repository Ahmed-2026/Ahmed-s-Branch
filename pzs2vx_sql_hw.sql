SELECT Name FROM country WHERE Continent = "South America"

SELECT Name, Population FROM country WHERE Name = 'Germany'

SELECT Name FROM city WHERE CountryCode = (SELECT Code FROM country WHERE Name = 'Japan');

SELECT Name, Population FROM country WHERE Continent = 'Africa' ORDER BY Population DESC LIMIT 3;

SELECT Name, LifeExpectancy FROM country WHERE Population >= 1000000 and Population <= 5000000 ORDER BY LifeExpectancy DESC;

SELECT country.Name FROM country JOIN countrylanguage ON country.Code = countrylanguage.CountryCode WHERE countrylanguage.Language = 'French' AND countrylanguage.IsOfficial = 'T'





SELECT Album.Title FROM Album JOIN Artist ON Album.ArtistId = Artist.ArtistId WHERE Artist.Name = 'AC/DC' ORDER BY Album.Title;

SELECT Customer.FirstName, Customer.LastName, Customer.Email FROM Customer WHERE Customer.Country = 'Brazil';

SELECT Name FROM Playlist ORDER BY Name;

SELECT COUNT(*) AS RockTrackCount FROM Track JOIN Genre ON Track.GenreId = Genre.GenreId WHERE Genre.Name = 'Rock';

SELECT FirstName, LastName FROM Employee WHERE ReportsTo = (SELECT EmployeeId FROM Employee WHERE FirstName = 'Nancy' AND LastName = 'Edwards');

SELECT Customer.CustomerId, Customer.FirstName, Customer.LastName, SUM(Invoice.Total) AS TotalSales FROM Customer JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId GROUP BY Customer.CustomerId, Customer.FirstName, Customer.LastName ORDER BY TotalSales DESC;




CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Description TEXT,
    Price DECIMAL(5,2),
    Category VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(7,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);




INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber) VALUES
('John', 'Doe', 'john.doe@email.com', '555-1234'),
('Jane', 'Smith', 'jane.smith@email.com', '555-5678'),
('Bob', 'Johnson', 'bob.johnson@email.com', '555-9012'),
('Alice', 'Williams', 'alice.williams@email.com', '555-3456'),
('Charlie', 'Brown', 'charlie.brown@email.com', '555-7890');

INSERT INTO Products (ProductName, Description, Price, Category) VALUES
('Espresso', 'Strong black coffee', 2.50, 'Hot Drinks'),
('Cappuccino', 'Espresso with steamed milk and foam', 3.50, 'Hot Drinks'),
('Iced Latte', 'Espresso with cold milk and ice', 4.00, 'Cold Drinks'),
('Blueberry Muffin', 'Freshly baked muffin', 2.75, 'Pastries'),
('Chocolate Croissant', 'Buttery croissant with chocolate', 3.25, 'Pastries');

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2024-09-01', 6.00),
(2, '2024-09-02', 7.25),
(3, '2024-09-03', 4.00),
(4, '2024-09-04', 9.75),
(5, '2024-09-05', 5.75);





SELECT * FROM Customers;

SELECT ProductName, Price FROM Products ORDER BY Price DESC;

SELECT COUNT(*) AS TotalOrders FROM Orders;








