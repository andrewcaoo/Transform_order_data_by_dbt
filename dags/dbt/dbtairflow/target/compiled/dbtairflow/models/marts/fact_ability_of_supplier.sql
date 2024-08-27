with final as (
    select
        sup.suppkey,
        count(part_supp.supp_key) as number_of_parts,
        sum(part_supp.supply_cost) as total_supply_cost,
        sum(part_supp.avail_qty) as total_supply_quantity
    from
        DBT_DB.dbt_schema.stg_tpch_supplier as sup
    join
        DBT_DB.dbt_schema.stg_tpch_partsupp as part_supp
        on sup.suppkey = part_supp.supp_key
    group by
        sup.suppkey
)

select
    *
from
    final