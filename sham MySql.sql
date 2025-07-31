create database Employes
use Employes
CREATE TABLE study(
Emp_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
department VARCHAR(70) NOT NULL,
year INT NOT NULL);
INSERT INTO
Study(Emp_id,name,department,year)VALUES
(007,'Siva','SE','7'),
(008,'Vani','AI','8'),
(009,'Bolo','MEC','9'),
(010,'Sunthar','STAF','10');

SELECT*FROM Study;

UPDATE  Study
SET name='Vadakkan',
department='BCA',
year=3 WHERE Emp_id=127;

INSERT INTO Study(Emp_id,name,department,year)
VALUES (150,'sdfc','MSC CS',2);
SELECT * FROM Study;

ALTER TABLE Study
ADD phone_num VARCHAR(13);

UPDATE Study 
SET phone_num = '123465788' WHERE Emp_id = 007;

UPDATE Study 
SET phone_num = '987654321' WHERE Emp_id = 008;

UPDATE Study 
SET phone_num = '9998999899' WHERE Emp_id = 009;

UPDATE Study 
SET phone_num = '999222333' WHERE Emp_id = 010;

UPDATE Study 
SET phone_num = '9992211333' WHERE Emp_id = 150;