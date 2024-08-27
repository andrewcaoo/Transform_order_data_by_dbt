
  
    

        create or replace transient table DBT_DB.dbt_schema.int_order_items_sum
         as
        (select 
    order_key,
    sum(extended_price) as gross_item_sales_amount,
    sum(item_discount_amount) as item_discount_amount
from
    DBT_DB.dbt_schema.int_order_items
group by
    order_key
        );
      
  