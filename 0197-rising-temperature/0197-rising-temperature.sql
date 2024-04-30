SELECT  *
  FROM  (
            SELECT  CASE WHEN RECORDDATE <> LAG(RECORDDATE) OVER(ORDER BY RECORDDATE) + INTERVAL '1' DAY        THEN NULL
                         WHEN TEMPERATURE = LAG(TEMPERATURE) OVER(ORDER BY RECORDDATE)                          THEN NULL
                         WHEN GREATEST(TEMPERATURE, LAG(TEMPERATURE) OVER(ORDER BY RECORDDATE)) = TEMPERATURE   THEN ID
                    END AS ID
              FROM  WEATHER
        )
 WHERE  ID IS NOT NULL