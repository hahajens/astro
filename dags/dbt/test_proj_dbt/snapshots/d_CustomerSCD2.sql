{% snapshot customer_history %}

{{
   config(
       target_database='TESTPROJ_DBT_DB',
       target_schema='TRANSFORM',
       unique_key='CustomerId',

       strategy='check',
       check_cols=['CustomerNm'],
   )
}}


SELECT 
      C_CUSTOMER_SK AS CustomerSK
    , C_CUSTOMER_ID AS CustomerId
    , CONCAT(TRIM(C_FIRST_NAME), ' ', TRIM(C_LAST_NAME)) AS CustomerNm  
    , CONCAT(C_CUSTOMER_ID, ' - ', TRIM(C_FIRST_NAME), ' ', TRIM(C_LAST_NAME)) AS CustomerIdNm
    , LOADDATE

FROM 
-- TESTPROJ_DBT_DB.STAGING.CUSTOMER_STG 
 {{ source('stg', 'customer') }} 

{% endsnapshot %}

