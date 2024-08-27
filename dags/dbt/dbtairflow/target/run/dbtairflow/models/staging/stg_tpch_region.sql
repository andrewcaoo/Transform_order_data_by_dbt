
  create or replace   view DBT_DB.dbt_schema.stg_tpch_region
  
   as (
    select
    R_COMMENT as comment,
    R_NAME as region_name,
    R_REGIONKEY AS region_key
from
    snowflake_sample_data.tpch_sf1.region
  );

