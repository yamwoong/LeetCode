SELECT  EB.NAME AS Employee
  FROM  Employee    EA
     ,  Employee    EB
 WHERE  EA.ID   = EB.MANAGERID
   AND  EB.SALARY > EA.SALARY