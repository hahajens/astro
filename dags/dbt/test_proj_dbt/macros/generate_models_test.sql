{% macro generate_model_By_Year(year) %}

    SELECT 
        d.Year
        , SUM(f.Quantity) AS Quantity
        , SUM(f.SalesPrice) AS SalesPrice
        , SUM(f.NetAmount) AS NetAmount
    FROM 
        {{source('presentation', 'sales' )}} f 
    LEFT JOIN 
        {{ source ('presentation', 'date') }} d ON d.DATESK = f.DATESK
    WHERE d.year = {{year}}
    GROUP BY d.Year

{% endmacro %}       



{# with EmployeesByStoreManager AS ( 
    
SELECT DISTINCT StoreManager, SUM( StoreEmployees ) AS StoreEmployees
FROM {{ source('presentation', 'store') }}
GROUP BY StoreManager

) #}



