SELECT TOP 10000000
    ss_sold_date_sk,
    ss_item_sk,
    ss_customer_sk,
    ss_store_sk,
    ss_ticket_number,
    ss_quantity,
    ss_list_price,
    ss_sales_price,
    ss_net_paid,
    ss_net_profit,
    getdate() AS loaddate
FROM
    {{ source('stg','sales') }} f

ORDER BY SS_SOLD_DATE_SK 

{#
    LEFT JOIN {{ source(
        'ERP',
        'date'
    ) }}
    d
    ON d.d_date_sk = f.ss_sold_date_sk
ORDER BY
    #}
