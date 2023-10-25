
{{ config(materialized='table') }}

with account as (

select ID as id,
       INDUSTRY as industry,
       SALES_SEGMENT as sales_segment
from {{ ref('seed__account') }}
),




select *
from account



