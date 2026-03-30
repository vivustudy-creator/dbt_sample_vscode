# sample_dbt_project

A simple dbt project scaffold containing:

- `models/sample_model.sql` (refers to `seed`)
- `models/vs_customer.sql` (loads from Snowflake RAW.JAFFLE_SHOP.CUSTOMERS)
- `seeds/sample_seed.csv`
- `dbt_project.yml`

## setup

1. Install Python 3.11 and dbt with Snowflake adapter:
   ```bash
   # Install Python 3.11 from https://www.python.org/downloads/
   # Then install dbt
   pip install dbt-core dbt-snowflake
   ```

2. Set environment variable:
   ```bash
   export SNOWFLAKE_PASSWORD=Snowflake@8197339944
   ```

3. For local testing: Change `profile: sample_dbt_profile` in `dbt_project.yml`
2. For Snowflake: `profile: snowflake_profile` is already set with credentials (uses default database for the role)

## run

`dbt seed --profiles-dir .`
`dbt run --models vs_customer --profiles-dir .`
`dbt test --profiles-dir .`
