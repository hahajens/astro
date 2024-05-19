SELECT
    D_DATE_SK
    , D_DATE
    , D_YEAR
    , D_HOLIDAY
    , D_WEEKEND
    , GETDATE() AS LoadDate
FROM {{source('ERP', 'date')}}

