with final as (
    select
        part.part_key,
        count(part_supp.supp_key) as number_of_suppliers,
        sum(part_supp.supply_cost) as total_supply_cost,
        sum(part_supp.avail_qty) as total_supply_quantity
    from
        DBT_DB.dbt_schema.stg_tpch_part as part
    join
        DBT_DB.dbt_schema.stg_tpch_partsupp as part_supp
        on part.part_key = part_supp.part_key
    group by
        part.part_key
)

select
    *
from
    final