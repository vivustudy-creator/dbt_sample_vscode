{{ config(
    materialized='table',
    database='analytics',
    schema='vscode_data',
    alias='vs_customer'
) }}

select * from RAW.JAFFLE_SHOP.CUSTOMERS