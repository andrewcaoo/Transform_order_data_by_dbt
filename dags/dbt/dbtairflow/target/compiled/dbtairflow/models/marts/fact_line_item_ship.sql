with final as (
    select
        order_item_key,
        order_key,
        part_key,
        supp_key,
        commit_date,
        receipt_date,
        return_flag,
        ship_date,
        ship_instruct,
        ship_mode
    from
        DBT_DB.dbt_schema.stg_tpch_line_items as part_key
)

select
    *
from
    final