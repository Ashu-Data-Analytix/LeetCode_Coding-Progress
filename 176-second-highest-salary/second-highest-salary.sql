/* Write your T-SQL query statement below */
/* Write your T-SQL query statement below */
--Select MIN (Distinct (Salary)) AS SecondHighestSalary from
--(Select DISTINCT TOP 2 Salary from Employee ORDER BY SALARY DESC) AS T1 ;

SELECT 
        CASE WHEN COUNT(*) < 2 THEN NULL
    
    ELSE MIN(Salary) END AS SecondHighestSalary

FROM (SELECT DISTINCT TOP 2 Salary FROM Employee ORDER BY Salary DESC ) AS T1;
