{{ config(materialized='table') }}

SELECT
    _airbyte_data:_id::STRING AS order_id,
    _airbyte_data:customer.id::STRING AS customer_id,
    _airbyte_data:customer.name::STRING AS customer_name,
    _airbyte_data:order_date::DATE AS order_date
FROM {{ source('airbyte_raw', 'orders') }}
