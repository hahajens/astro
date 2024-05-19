{{
  config(
    materialized = 'table',
    )
}}

{{ dbt_utils.deduplicate(
    relation = source('stg', 'customer'),
    partition_by = 'C_CUSTOMER_ID',
    order_by = 'LoadDate'
) }}