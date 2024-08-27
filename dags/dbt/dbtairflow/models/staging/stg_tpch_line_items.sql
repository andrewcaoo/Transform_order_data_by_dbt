select
    {{
        dbt_utils.generate_surrogate_key([
            'L_ORDERKEY',
            'L_LINENUMBER'
        ])
    }} as order_item_key,
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
    {{ source('tpch', 'lineitem') }}
