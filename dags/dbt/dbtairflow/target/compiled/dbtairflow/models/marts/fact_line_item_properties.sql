with final as (
    select
        order_item_key,
        order_key,
        part_key,
        supp_key,
        discount_percentage,
        extended_price,
        line_number,
        line_status,
        quantity,
        tax
    from
        DBT_DB.dbt_schema.stg_tpch_line_items as part_key
)

select
    *
from
    final