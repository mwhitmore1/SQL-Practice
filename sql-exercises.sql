--1
--SELECT CategoryName, Description FROM Categories;

--2
--SELECT ContactName, CustomerID, CompanyName FROM Customers WHERE City = 'London';

--3
--SELECT * FROM Suppliers WHERE Fax IS NOT NULL AND (ContactTitle = 'Sales Representative' OR ContactTitle = 'Marketing Manager'); 

--4
--SELECT OrderID FROM Orders WHERE RequiredDate > '1997-01-01' AND RequiredDate < '1998-01-01' AND Freight < 100.0;

--5
--SELECT CompanyName, ContactName FROM Customers WHERE ContactTitle = 'Owner' AND Country IN ('Mexico', 'Sweden', 'Germany');;

--6
--SELECT COUNT(Discontinued) AS DicontinuedCount FROM Products WHERE Discontinued = 1;

--7
--SELECT CategoryName, Description FROM Categories WHERE CategoryName LIKE 'Co%';

--8
--SELECT CompanyName, City, Country, PostalCode FROM Suppliers WHERE Address LIKE '%rue%' ORDER BY CompanyName;

--9
--SELECT ProductID, SUM(Quantity) AS TotalQuantity FROM [Order Details] GROUP BY ProductID;

--10
--SELECT c.ContactName, c.Address FROM Customers AS c JOIN Orders AS o ON o.CustomerID = c.CustomerID JOIN Shippers AS s ON o.ShipVia = s.ShipperID WHERE s.CompanyName = 'Speedy Express';

--11???
--SELECT s.CompanyName, s.ContactName, s.ContactName, s.Region  FROM Suppliers AS s;

--12
--SELECT p.* FROM Products AS p JOIN Categories AS c ON p.CategoryID = c.CategoryID WHERE c.CategoryName = 'Condiments';

--13
--SELECT * FROM Customers AS c LEFT JOIN Orders AS o ON o.CustomerID IS NULL;

--14
--INSERT INTO Shippers (CompanyName) VALUES ('Amazon');

--15
--UPDATE Shippers SET CompanyName = 'Amazon Prime Shipping' WHERE CompanyName = 'Amazon';

--16
--SELECT s.CompanyName, CAST(SUM(o.Freight) AS int) AS FreightTotal  FROM Shippers AS s LEFT JOIN Orders AS o ON s.ShipperID = o.ShipVia GROUP BY s.CompanyName;

--17
--SELECT LastName+', '+FirstName AS DisplayName FROM Employees;

--18
--INSERT INTO Customers (CustomerID, ContactName, CompanyName) VALUES ('MWHIT', 'Michael Whitmore', 'Mwhimore');
--INSERT INTO Orders (CustomerID) VALUES ('MWHIT');
--INSERT INTO [Order Details] (OrderID, ProductID) VALUES (11078, 6);

--19
--DELETE FROM [Order Details] WHERE OrderID = 11078;
--DELETE FROM Orders WHERE CustomerID = 'MWHIT';
--DELETE FROM Customers WHERE CustomerID = 'MWHIT';

--20
--SELECT ProductID, ProductName+': '+CAST(UnitsInStock AS nvarchar) FROM Products WHERE UnitsInStock > 100;
