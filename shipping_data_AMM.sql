SELECT * FROM create_shipping_AAM.CONTAINERS;

BEGIN;
INSERT INTO CONTAINERS
(container_ID, Height, Weight, Length, ship_ID) VALUES
(4567323, 43, 4500, 340, 'TD'),
(4595475, 43, 4500, 340, 'TD'),
(4528543, 43, 4500, 340, 'TD'),
(4536545, 43, 4500, 340, 'TD'),
(4586504, 43, 4500, 340, 'MB'),
(4519543, 43, 4500, 340, 'MB'),
(4567328, 43, 4500, 340, 'MB'),
(4518654, 43, 4500, 340, 'MB'),
(4512364, 43, 4500, 340, 'PP'),
(4565432, 43, 4500, 340, 'PP'),
(4567983, 43, 4500, 340, 'PP'),
(4598321, 43, 4500, 340, 'PP'),
(4563421, 43, 4500, 340, 'US'),
(4573221, 43, 4500, 340, 'US'),
(4548832, 43, 4500, 340, 'US'),
(4567123, 43, 4500, 340, 'US'),
(4589251, 43, 4500, 340, 'MA'),
(4535879, 43, 4500, 340, 'MA'),
(4568443, 43, 4500, 340, 'MA'),
(4524724, 43, 4500, 340, 'MA');

SELECT * FROM create_shipping_AAM.PORTS;
INSERT INTO PORTS
(Port_Name, City, Country) VALUES
('Port of London', 'London', 'England'),
('Port of Aberdeen', 'Aberdeen', 'Scotland'),
('Boston Seaport', 'Boston, MA', 'USA'),
('Port of Tacoma', 'New York, NY', 'USA'),
('Port of San Diego', 'San Diego, CA', 'USA'),
('Port of Los Angeles', 'Los Angeles, CA', 'USA'),
('Port of Houston', 'Houston, TX', 'USA'),
('Port of New Orleans', 'Nwe Orleans, LA', 'USA'),
('Port of Miami', 'Miami, FL', 'USA'),
('Port of Charleston', 'Charleston, SC', 'USA');


SELECT * FROM create_shipping_AAM.SHIPS;
INSERT INTO SHIPS
	(Ship_Name, Displacement, Captain_Name, Crew, Home_Port, Year_Built) VALUES 
    ('Thunder Dome', 77300, 'Log John', 120, 'Port of London', 2010),
    ('Master Blaster', 7730, 'George', 120, 'Boston Seaport', 2008),
    ('Party Pal', 7730, 'John McClain', 120, 'Port of San Diego', 2018),
    ('Under Siege', 7730, 'Chief Ryback', 120, 'Port of Houston', 2005),
    ('Moving Apache', 7730, 'Martin Riggs', 120, 'Port of Miami', 2009);

COMMIT;