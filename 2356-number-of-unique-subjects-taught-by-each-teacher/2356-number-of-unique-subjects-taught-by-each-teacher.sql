SELECT  TEACHER_ID
     ,  COUNT(SUBJECT_ID)   AS CNT
  FROM  (
            SELECT  TEACHER_ID
                 ,  SUBJECT_ID
              FROM  TEACHER
             GROUP BY TEACHER_ID, SUBJECT_ID 
        )
 GROUP BY TEACHER_ID
 