create database Samples
use Samples
CREATE TABLE Stud(
reg_no INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
depatmaent VARCHAR(40) NOT NULL,
year INT NOT NULL);
INSERT INTO Stud(reg_no,name,depatmaent,year) VALUES 
(111,'xxx','computer Science',4),
(122,'yyy','AI&DS',3),
(124,'zzz','Information Technology',3),
(130,'abc','Cyber Security',1);
SELECT * FROM Stud;
UPDATE Stud
SET name='siva',
depatmaent='BCA',
year=3 WHERE reg_no =122;
INSERT INTO Stud(reg_no,name,depatmaent,year)
VALUES (145,'sdfg','MSC CS',2);
SELECT * FROM Stud;

ALTER TABLE Stud
ADD phone_num VARCHAR(13);
UPDATE Stud
 SET phone_num = '9876543211' WHERE reg_no = 111;
 
 UPDATE Stud
 SET phone_num = '987654329' WHERE reg_no = 122;
 
 UPDATE Stud
 SET phone_num ='876543219' WHERE reg_no = 124;
 
 UPDATE Stud
 SET phone_num ='876543219' WHERE reg_no = 130; 
 
 SELECT COUNT(*) AS tot_Student FROM Stud;
 SELECT MAX(year) AS max_yr FROM Stud;
 SELECT  MIN(year) AS min_yr FROM Stud;
 SELECT AVG(year) AS av_yr FROM Stud;
SELECT depatmaent,COUNT(*) AS dept_count FROM Stud GROUP BY depatmaent;
SELECT depatmaent,MAX(year) AS max_yr FROM Stud  GROUP BY depatmaent;

SELECT * FROM Stud
ORDER BY year ASC; 

SELECT * FROM stud 
ORDER BY name;

SELECT * FROM Stud 
ORDER BY depatmaent;

SELECT UPPER(depatmaent) AS dep_upr FROM Stud;
SELECT UPPER(name) AS name_UP FROM Stud;
SELECT LOWER(name) AS name_UP FROM Stud;
SELECT LEFT(name,2) AS srt FROM Stud;
SELECT name,LENGTH(name) AS name_ln FROM Stud;
SELECT CONCAT(name,' - ',depatmaent) AS combine 
FROM Stud;

SELECT name,year,year + 1 AS nx_yr FROM Stud;
SELECT reg_no,MOD(reg_no,2) AS odr FROM Stud;

ALTER TABLE Stud 
ADD Date_Detail DATE;

SELECT * FROM Stud;

UPDATE Stud SET Date_Detail='2021-08-18' WHERE reg_no=111;
UPDATE Stud SET Date_Detail='2022-05-03' WHERE reg_no=122;
UPDATE Stud SET Date_Detail='2023-06-13' WHERE reg_no=124;
UPDATE Stud SET Date_Detail='2024-09-22' WHERE reg_no=130;
UPDATE Stud SET Date_Detail='2025-04-01' WHERE reg_no=145;

SELECT CURDATE();
SELECT CURTIME();

SELECT reg_no,name,YEAR(Date_Detail) AS yr FROM Stud;
