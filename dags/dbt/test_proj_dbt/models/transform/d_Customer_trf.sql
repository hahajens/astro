SELECT 

      C_CUSTOMER_SK AS CustomerSK
    , C_CUSTOMER_ID AS CustomerId
    , CONCAT(TRIM(C_FIRST_NAME), ' ', TRIM(C_LAST_NAME)) AS CustomerNm  
    , CONCAT(C_CUSTOMER_ID, ' - ', TRIM(C_FIRST_NAME), ' ', TRIM(C_LAST_NAME)) AS CustomerIdNm
    , LOADDATE
FROM  {{ source('stg', 'customer') }}
