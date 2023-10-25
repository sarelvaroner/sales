
{{ config(materialized='table') }}



with opportunity_line_item as (

select
    ID as id,
    OPPORTUNITYID as opportunity_id,
    UNITPRICE as unit_price,
    QUANTITY as quantity,
    TOTALPRICE as total_price,
    PRODUCT as product
from {{ ref('seed__opportunity_line_item') }}
)


select *
from opportunity_line_item



