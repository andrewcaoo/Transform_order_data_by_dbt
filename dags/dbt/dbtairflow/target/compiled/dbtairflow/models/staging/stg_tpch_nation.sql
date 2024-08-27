select
    N_COMMENT as comment,
    N_NAME as nation_name,
    N_NATIONKEY as nation_key,
    N_REGIONKEY as region_key
from
    snowflake_sample_data.tpch_sf1.nation