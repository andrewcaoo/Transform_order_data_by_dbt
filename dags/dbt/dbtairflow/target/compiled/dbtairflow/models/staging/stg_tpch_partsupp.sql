select
    PS_AVAILQTY as avail_qty,
    PS_COMMENT as comment,
    PS_PARTKEY as part_key,
    PS_SUPPKEY as supp_key,
    PS_SUPPLYCOST as supply_cost
from
    snowflake_sample_data.tpch_sf1.partsupp