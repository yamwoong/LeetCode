SELECT  PATIENT_ID
     ,  PATIENT_NAME
     ,  CONDITIONS
  FROM  PATIENTS
 WHERE  CONDITIONS LIKE 'DIAB1%' OR CONDITIONS LIKE '% DIAB1%'