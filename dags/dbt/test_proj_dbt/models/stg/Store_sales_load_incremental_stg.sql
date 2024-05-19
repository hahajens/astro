{{
  config(
    materialized = 'incremental',
    unique_key = 'SS_TICKET_NUMBER',
    )
}}

SELECT 
  SS_SOLD_DATE_SK
, SS_ITEM_SK
, SS_CUSTOMER_SK
, SS_STORE_SK
, SS_TICKET_NUMBER
, SS_QUANTITY
, SS_LIST_PRICE
, SS_SALES_PRICE
, SS_NET_PAID
, SS_NET_PROFIT
, LoadedTimeStamp
FROM {{source('stg', 'sales_incr')}}

{% if is_incremental() %}

  WHERE LoadedTimeStamp >= coalesce((select max(LoadedTimeStamp) from {{ this }}), '1900-01-01')

{% endif %}
