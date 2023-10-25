
{{ config(materialized='table') }}


select
    oli.id as oli_id,
    op.id,
    op.account_id,
    op.start_date,
    op.end_date,
    oli.unit_price,
    oli.quantity,
    oli.total_price,
    oli.product
from {{ref('opportunity_line_item')}} oli
left join{{ref('opportunity')}} as op
on oli.opportunity_id = op.id



