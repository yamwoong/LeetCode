SELECT  MAX(ACTIVITY_DATE)      AS DAY
     ,  COUNT(ACTIVITY_DATE)    AS ACTIVE_USERS
  FROM  (
            SELECT  USER_ID
                 ,  TO_CHAR(ACTIVITY_DATE, 'YYYY-MM-DD')  AS ACTIVITY_DATE
              FROM  ACTIVITY
             WHERE  ACTIVITY_DATE BETWEEN TO_CHAR(TO_DATE('20190727') - INTERVAL '29' DAY) AND '20190727' 
             GROUP BY USER_ID, ACTIVITY_DATE
        )
 GROUP BY ACTIVITY_DATE
 ORDER BY ACTIVITY_DATE