SELECT  NAME
  FROM  (
            SELECT  NVL(REFEREE_ID, 0) AS REFEREE_ID
                 ,  NAME
              FROM  CUSTOMER
        )
 WHERE REFEREE_ID NOT IN('2')