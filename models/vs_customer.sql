{{ config(
    materialized='table',
    database='analytics',
    schema='vscode_data',
    alias='vs_customer'
) }}

select * from {{ source('jaffle_shop', 'customers') }}