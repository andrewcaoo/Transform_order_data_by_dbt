select
    R_COMMENT as comment,
    R_NAME as region_name,
    R_REGIONKEY AS region_key
from
    {{ source('tpch', 'region') }}