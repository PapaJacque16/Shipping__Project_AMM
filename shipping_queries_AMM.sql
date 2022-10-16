SELECT * FROM create_shipping_AAM.CONTAINERS;
SELECT * FROM create_shipping_AAM.PORTS;
SELECT * FROM create_shipping_AAM.SHIPS;

SELECT Height, Length AS ship_ID
FROM CONTAINERS
GROUP BY Length
ORDER BY ship_ID DESC;

SELECT Ship_Name, Captain_Name, Crew, Home_Port, Year_Built
FROM SHIPS
WHERE Year_Built = (
SELECT MIN(Year_Built)
FROM SHIPS);

SELECT COUNT(Weight), ship_ID
FROM CONTAINERS
WHERE Weight > MIN(Weight);

SELECT s.Home_Port, c.ship_ID AS Inventory
FROM SHIPS s JOIN inventory i
GROUP BY c.ship_ID
ORDER BY Inventory DESC;

SELECT Containers.Height, Containers.Height, PORTS.City
FROM PORTS
LEFT JOIN Containers ON PORTS.ship_ID=Containers.shipID;

SELECT Containers.Weight, Containers.ship_ID, PORTS.City
FROM PORTS
RIGHT JOIN Containers ON PORTS.ship_ID=Containers.shipID;

SELECT SHIPS.Displacement, PORTS.City
FROM PORTS
INNER JOIN Containers ON PORTS.Port_Name=Containers.Port_Name;

SELECT Containers.Height, Containers.ship_ID, SHIPS.Captain_Name
FROM SHIPS
LEFT JOIN Containers ON SHIPS.ship_ID=Containers.shipID;

SELECT Containers.Height, Containers.Weight, SHIPS.Home_Port
FROM SHIPS
LEFT JOIN Containers ON SHIPS.Home_Port=Containers.Home_Port;