SELECT 
    S_STORE_SK AS StoreSK
    , S_STORE_ID AS StoreId
    , S_STORE_NAME AS StoreNm
    , CONCAT(S_STORE_ID, ' - ', S_STORE_NAME) AS StoreIdNm
    , S_NUMBER_EMPLOYEES AS StoreEmployees
    , S_MANAGER AS StoreManager
    , S_DIVISION_ID AS DivisionId
    , S_DIVISION_NAME AS DivisionNm
    , CONCAT(S_DIVISION_ID, ' - ', S_DIVISION_NAME) AS DivisionIdNm
    , S_COMPANY_ID AS CompanyId
    , S_COMPANY_NAME AS CompanyName
    , CONCAT(S_COMPANY_ID, ' - ', S_COMPANY_NAME) AS CompanyIdNm
    , LoadDate

FROM {{ source('stg', 'store') }}