
{{ config(materialized='table') }}


--MRR per monthly customer:
--Total Monthly Recurring Revenue (MRR) for each customer.
--Assume all the line items are MRR



SELECT
    account_id,
    month_date,
    SUM(mrr) AS mrr
FROM {{ref('mrr')}}
GROUP BY month_date, account_id



