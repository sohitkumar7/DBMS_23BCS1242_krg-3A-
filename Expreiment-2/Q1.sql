CREATE TABLE Employee ( 
    EmpID INT PRIMARY KEY, 
    Ename VARCHAR(100), 
    Department VARCHAR(50), 
    ManagerId INT,  
    FOREIGN KEY (ManagerId) REFERENCES Employee(EmpID) 
); 

 
INSERT INTO Employee (EmpID, Ename, Department, ManagerId) VALUES  
(1, 'Alice', 'HR', NULL),            
(2, 'Bob', 'Finance', 1),        
(3, 'Charlie', 'IT', 1),         
(4, 'David', 'HR', 2),               
(5, 'Eve', 'HR', 3),                 
(6, 'Frank', 'Finance', 2); 

  
SELECT E1.Ename AS [EmployeeName], E2.Ename AS [ManagerName], E1.Department AS [Employee_Dept], E2.DEPT AS [ManagerDept] 
FROM  
Employee AS E1 
LEFT OUTER JOIN 
Employee AS E2 
ON  
E1.ManagerId = E2.EmpID 