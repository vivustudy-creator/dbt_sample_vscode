# sample_dbt_project

A simple dbt project scaffold containing:

- `models/sample_model.sql` (refers to `seed`)
- `models/vs_customer.sql` (loads from Snowflake RAW.JAFFLE_SHOP.CUSTOMERS)
- `seeds/sample_seed.csv`
- `dbt_project.yml`

## setup

1. For local testing: `profile: sample_dbt_profile` in `dbt_project.yml`
2. For Snowflake: `profile: snowflake_profile` in `dbt_project.yml`, update credentials in `profiles.yml`

## run

`dbt seed`
`dbt run`
`dbt test`
