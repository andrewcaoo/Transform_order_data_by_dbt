
  
    

        create or replace transient table DBT_DB.dbt_schema.dim_customer
         as
        (select * from DBT_DB.dbt_schema.stg_tpch_customer
        );
      
  