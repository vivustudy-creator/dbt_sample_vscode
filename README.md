# sample_dbt_project

A simple dbt project scaffold containing:

- `models/sample_model.sql` (refers to `seed`)
- `seeds/sample_seed.csv`
- `dbt_project.yml`

## setup

1. Create a profile in `~/.dbt/profiles.yml` (or `profiles.yml` in this repo with `--profiles-dir .`).
2. Set `profile: sample_dbt_profile` in `dbt_project.yml`.

## run

`dbt seed`
`dbt run`
`dbt test`
