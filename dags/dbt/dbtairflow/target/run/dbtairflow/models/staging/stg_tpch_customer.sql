
  create or replace   view DBT_DB.dbt_schema.stg_tpch_customer
  
   as (
    select
    C_ACCTBAL as acc_tbal,
    C_ADDRESS as cust_address,
    C_COMMENT as comment,
    C_CUSTKEY as cust_key,
    C_MKTSEGMENT as mkt_segment,
    C_NAME as cust_name,
    C_NATIONKEY as nation_key,
    C_PHONE as phone
from
    snowflake_sample_data.tpch_sf1.customer
  );

