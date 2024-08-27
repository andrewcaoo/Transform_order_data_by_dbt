
  create or replace   view DBT_DB.dbt_schema.stg_tpch_supplier
  
   as (
    select
    S_ACCTBAL as acctbal,
    S_ADDRESS as address,
    S_COMMENT as comment,
    S_NAME as name,
    S_NATIONKEY as nationkey,
    S_PHONE as phone,
    S_SUPPKEY as suppkey
from 
    snowflake_sample_data.tpch_sf1.supplier
  );

