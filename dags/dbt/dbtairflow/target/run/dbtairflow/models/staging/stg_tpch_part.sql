
  create or replace   view DBT_DB.dbt_schema.stg_tpch_part
  
   as (
    select
    P_BRAND as brand,
    P_COMMENT as comment,
    P_NAME as name,
    P_PARTKEY as part_key,
    P_RETAILPRICE as retail_price,
    P_SIZE as part_size,
    P_TYPE as part_type
from
    snowflake_sample_data.tpch_sf1.part
  );

