# sample_dbt_project

A simple dbt project scaffold containing:

- `models/sample_model.sql` (refers to `seed`)
- `models/vs_customer.sql` (loads from Snowflake RAW.JAFFLE_SHOP.CUSTOMERS)
- `seeds/sample_seed.csv`
- `dbt_project.yml`

## setup

1. Install Python 3.11:
   - Download from: https://www.python.org/downloads/release/python-3110/
   - Install and ensure it's added to PATH
   - Verify: `python --version` should show 3.11.x

2. Install dbt with Snowflake adapter:
   ```bash
   pip install dbt-core dbt-snowflake
   ```
   Verify: `dbt --version`

3. For Snowflake: `profile: snowflake_profile` is already set with credentials (uses default database for the role)

## run

`dbt seed --profiles-dir .`
`dbt run --models vs_customer --profiles-dir .`
`dbt test --profiles-dir .`
