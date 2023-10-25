
{{ config(materialized='table') }}



with opportunity as (

select
    ID as id,
    ACCOUNTID as account_id,
    START_DATE as start_date,
    END_DATE as end_date
from {{ ref('seed__opportunity') }}
)


select *
from opportunity



