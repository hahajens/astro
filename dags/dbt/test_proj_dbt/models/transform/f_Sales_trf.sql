SELECT 
      SS_SOLD_DATE_SK AS DateSK
    , SS_ITEM_SK AS ItemSK
    , SS_CUSTOMER_SK AS CustomerSK 
    , SS_STORE_SK AS StoreSK 
    , SS_TICKET_NUMBER AS TicketNumber
    , SS_QUANTITY AS Quantity 
    , SS_LIST_PRICE AS ListPrice 
    , SS_SALES_PRICE AS SalesPrice
    , SS_NET_PAID AS NetAmount
    , SS_NET_PROFIT AS Profit 
FROM {{ source('stg', 'sales') }}