with data as (
  SELECT (SELECT count(agent_name)  from {{ source('aws_staging_data', 'agents') }}) agent_cnt, 
         (SELECT count(distinct agent_name) from {{ source('ANALYST_DB.MODEL','customer_order_summary_model') }}) AS summary_agent_cnt
),
validation as (
    select * from data
    where agent_cnt != summary_agent_cnt
)
select 1 from validation 

