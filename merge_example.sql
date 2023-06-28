CREATE TABLE emp
(
EMP_ID INT NOT NULL,EMP_NAME VARCHAR(50),EMP_DEPT VARCHAR(50)
,EMP_SALARY MONEY,EMP_DOJ DATE)
CREATE  TABLE emp2
(EMP_ID INT NOT NULL,EMP_NAME VARCHAR(50),EMP_DEPT VARCHAR(50)
,EMP_SALARY MONEY,JOINING_DATE DATE)

INSERT INTO emp (EMP_ID,EMP_NAME,EMP_DEPT,EMP_SALARY) VALUES (3,'Radhe','HRdept',7000)
INSERT INTO emp (EMP_ID,EMP_NAME,EMP_DEPT,EMP_SALARY) VALUES (4,'Neha','ITdept',5500)
INSERT INTO emp (EMP_ID,EMP_NAME,EMP_DEPT,EMP_SALARY) VALUES (5,'GhanShyam','ITdept',4500)
INSERT INTO emp (EMP_ID,EMP_NAME,EMP_DEPT,EMP_SALARY) VALUES (12,'Suman2','HRdept',7000)

INSERT INTO emp2 VALUES (1,'RAM','HRdept',7000,GETDATE()-90)
INSERT INTO emp2 VALUES (2,'SITA','ITdept',5500,GETDATE()-100)
INSERT INTO emp2 VALUES (3,'Radhe','HRdept',7000,GETDATE()-90)
INSERT INTO emp2 VALUES (4,'Neha','ITdept',5500,GETDATE()-100)
INSERT INTO emp2 VALUES (5,'GhanShyam','ITdept',4500,GETDATE()-100)
INSERT INTO emp2 VALUES (6,'Rajeev','ADMINdept',7000,GETDATE()-190)
INSERT INTO emp2 VALUES (7,'Suman','HRdept',7000,GETDATE()-290)
INSERT INTO emp2 VALUES (8,'Suman','HRdept',7000,GETDATE()-390)

select * from emp;
select * from emp2;

MERGE emp as T_EMP
USING EMP2 AS S_EMP
ON T_EMP.EMP_ID=S_EMP.EMP_ID
WHEN MATCHED THEN
UPDATE SET T_EMP.EMP_DOJ=S_EMP.JOINING_DATE
WHEN NOT MATCHED BY TARGET THEN
INSERT (EMP_ID,EMP_NAME,EMP_DEPT,EMP_SALARY,EMP_DOJ) VALUES (
S_EMP.EMP_ID,S_EMP.EMP_NAME,S_EMP.EMP_DEPT,S_EMP.EMP_SALARY,S_EMP.JOINING_DATE)
WHEN NOT MATCHED BY SOURCE THEN
DELETE;