SELECT  PRODUCT_ID
     ,  NVL(ROUND(MUL / UNITS_SUM, 2), 0)   AS AVERAGE_PRICE
  FROM  (
            SELECT  P.PRODUCT_ID
                 ,  SUM(U.UNITS)            AS UNITS_SUM
                 ,  SUM(P.PRICE * U.UNITS)  AS MUL 
              FROM  PRICES      P
                 ,  UNITSSOLD   U
             WHERE  P.PRODUCT_ID    = U.PRODUCT_ID(+)
               AND  U.PURCHASE_DATE(+) BETWEEN START_DATE AND END_DATE
             GROUP BY P.PRODUCT_ID
        )