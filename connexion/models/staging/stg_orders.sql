with source as (
    select * from {{ source('my_dbt_db', 'raw_orders') }}
),
renamed as (
    select
        id as orders_id,
        customer as orders_customer,
        ordered_at as orders_ordered_at,
        store_id as orders_store_id,
        subtotal as orders_subtotal,
        tax_paid as orders_tax_paid,
        order_total as orders_order_total
        
    from source
)
select * from renamed