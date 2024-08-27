
  
    

        create or replace transient table DBT_DB.dbt_schema.fct_orders
         as
        (with int_order_items as (
    select
        line_item.order_item_key,
        line_item.part_key,
        line_item.line_number,
        line_item.extended_price,
        orders.order_key,
        orders.customer_key,
        orders.order_date,
        
    (-1 * line_item.extended_price * line_item.discount_percentage)::decimal(16, 2)
 as item_discount_amount
    from
        DBT_DB.dbt_schema.stg_tpch_orders as orders
    join
        DBT_DB.dbt_schema.stg_tpch_line_items as line_item
            on orders.order_key = line_item.order_key
    order by
        orders.order_date
),

final as (
    select 
        order_key,
        sum(extended_price) as gross_item_sales_amount,
        sum(item_discount_amount) as item_discount_amount
    from
        int_order_items
    group by
        order_key
)

-- final as (
--     select
--         orders.*,
--         order_item_summary.gross_item_sales_amount,
--         order_item_summary.item_discount_amount
--     from
--         DBT_DB.dbt_schema.stg_tpch_orders as orders
--     join
--         int_order_items_sum as order_item_summary
--             on orders.order_key = order_item_summary.order_key
--     order by 
--         orders.order_date
-- )

select * from final
        );
      
  