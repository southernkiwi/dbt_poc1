with agg_order_summary as (
    select agent_name, 
           cust_name,
           sum(total_order_amount + total_advance_amount) total_amount
    from {{ ref('customer_order_summary_model') }}
    group by agent_name, cust_name

),

final as (
    select *
    from agg_order_summary
)

select * from final