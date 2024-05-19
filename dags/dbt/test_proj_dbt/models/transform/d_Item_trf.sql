SELECT 
    I_ITEM_SK AS ItemSK 
    , I_ITEM_ID AS ItemId
    , I_ITEM_DESC AS ItemNm
    , CONCAT(I_ITEM_ID, ' - ', I_ITEM_DESC) AS ItemIdNm
    , I_CLASS_ID AS ItemClassId
    , UPPER(I_CLASS) AS ItemClassNm 
    , CONCAT(I_CLASS_ID, ' - ' , UPPER(I_CLASS)) AS ItemClassIdNm
    , I_CATEGORY_ID
    , I_CATEGORY
    , CONCAT (I_CATEGORY_ID, ' - ' , I_CATEGORY) AS ItemCategoryIdNm
    , LOADDATE
FROM {{ source('stg', 'item') }}
