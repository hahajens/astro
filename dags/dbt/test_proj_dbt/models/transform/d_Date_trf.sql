SELECT
    D_DATE_SK AS DateSK
    , DATE_PART(mm, D_DATE) as Month
    , DATE_PART(d, D_DATE) as Day
    , DATE_PART(y, D_DATE) as Year
    , DATE_PART(q, D_DATE) as Quarter
    , CONCAT(DATE_PART(y, D_DATE), '.', DATE_PART(mm, D_DATE)) AS YearmonthNo
    , D_HOLIDAY
    , D_WEEKEND
    , LoadDate
FROM {{ source('stg', 'date') }}