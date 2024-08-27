select
    P_BRAND as brand,
    P_COMMENT as comment,
    P_NAME as name,
    P_PARTKEY as part_key,
    P_RETAILPRICE as retail_price,
    P_SIZE as part_size,
    P_TYPE as part_type
from
    {{ source('tpch', 'part') }}