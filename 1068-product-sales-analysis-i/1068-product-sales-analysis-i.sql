SELECT  P.PRODUCT_NAME 
     ,  S.YEAR
     ,  S.PRICE
  FROM  SALES   S
     ,  PRODUCT P
 WHERE  S.PRODUCT_ID    = P.PRODUCT_ID