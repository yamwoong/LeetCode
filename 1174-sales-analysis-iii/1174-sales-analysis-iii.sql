SELECT  P.PRODUCT_ID
     ,  P.PRODUCT_NAME
  FROM  PRODUCT P
     ,  (
            SELECT  PRODUCT_ID
                 ,  MAX(SALE_DATE) AS SALE_DATE
              FROM  SALES
             GROUP BY PRODUCT_ID
        )       S
 WHERE  P.PRODUCT_ID = S.PRODUCT_ID
   AND  P.PRODUCT_ID NOT IN (
                            SELECT  PRODUCT_ID
                              FROM  SALES
                             WHERE  SALE_DATE < '20190101' OR SALE_DATE > '20190331'
)