SELECT 
    S_STORE_SK
    , S_STORE_ID
    , S_STORE_NAME 
    , S_NUMBER_EMPLOYEES
    , S_MANAGER
    , S_DIVISION_ID
    , S_DIVISION_NAME
    , S_COMPANY_ID
    , S_COMPANY_NAME
    , GETDATE() AS LoadDate

FROM {{source('ERP', 'store')}}