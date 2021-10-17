--{{ config(materialized='table') }}

with customer_order_summary as (

    select agent_name, 
        cust_name, 
        count(ord_num) total_order_count, 
        sum(ord_amount) total_order_amount, 
        sum(advance_amount) total_advance_amount 
     from {{ source('aws_staging_data', 'agents')}}
        left join {{ source('aws_staging_data', 'customer') }} using (agent_code) 
        left join {{ source('aws_staging_data', 'orders') }} using (cust_code)
    group by agent_name, cust_name
),

final as (
    select agent_name, 
        cust_name, 
        total_order_count, 
        {{ cents_to_dollars('total_order_amount') }}  as total_order_amount, 
        total_advance_amount 
    from customer_order_summary
)

select * from final