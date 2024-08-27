select
    md5(cast(coalesce(cast(L_ORDERKEY as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(L_LINENUMBER as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) as order_item_key,
    L_COMMITDATE as commit_date,
    L_DISCOUNT as discount_percentage,
    L_EXTENDEDPRICE as extended_price,
    L_LINENUMBER as line_number,
    L_LINESTATUS as line_status,
    L_ORDERKEY as order_key,
    L_PARTKEY as part_key,
    L_QUANTITY as quantity,
    L_RECEIPTDATE as receipt_date,
    L_RETURNFLAG as return_flag,
    L_SHIPDATE as ship_date,
    L_SHIPINSTRUCT as ship_instruct,
    L_SHIPMODE as ship_mode,
    L_SUPPKEY as supp_key,
    L_TAX as tax
from
    snowflake_sample_data.tpch_sf1.lineitem