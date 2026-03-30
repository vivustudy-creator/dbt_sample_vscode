# sample_dbt_project

A simple dbt project scaffold containing:

- `models/sample_model.sql` (refers to `seed`)
- `models/vs_customer.sql` (loads from Snowflake RAW.JAFFLE_SHOP.CUSTOMERS)
- `seeds/sample_seed.csv`
- `dbt_project.yml`

## setup

1. Install dbt with Snowflake adapter:
   ```bash
   pip install dbt-core dbt-snowflake
   ```
   Note: Requires Python 3.8-3.11. Current Python 3.14 may cause installation issues.

2. For local testing: `profile: sample_dbt_profile` in `dbt_project.yml`
3. For Snowflake: `profile: snowflake_profile` in `dbt_project.yml`, update credentials in `profiles.yml`
   - Set environment variable: `SNOWFLAKE_PASSWORD=Snowflake@8197339944`
   - Update role and warehouse in `profiles.yml`

## run

`dbt seed`
`dbt run`
`dbt test`
