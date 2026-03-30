@echo off
echo Setting up environment...
set SNOWFLAKE_PASSWORD=Snowflake@8197339944

echo Running dbt seed...
dbt seed --profiles-dir .

echo Running dbt run for vs_customer...
dbt run --models vs_customer --profiles-dir .

echo Running dbt test...
dbt test --profiles-dir .

echo Done!