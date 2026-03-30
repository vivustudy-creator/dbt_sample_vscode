with seed_data as (
    select * from {{ ref('sample_seed') }}
)

select
    id,
    name,
    value,
    value * 2 as value_double
from seed_data
