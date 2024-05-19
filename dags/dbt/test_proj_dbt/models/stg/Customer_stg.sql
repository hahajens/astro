SELECT  C_CUSTOMER_SK
       , C_CUSTOMER_ID
       , C_FIRST_NAME
       , C_LAST_NAME
       , GETDATE() AS LoadDate
FROM 
       {{source('ERP', 'customer')}}