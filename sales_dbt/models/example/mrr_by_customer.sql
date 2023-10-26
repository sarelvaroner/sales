
{{ config(materialized='table') }}

--
--Please make it possible to slice the data by:
--Customer (and display the customer attributes as a column in the table)

--

SELECT
    account_id,
    month_date,
    SUM(mrr) AS mrr
FROM {{ref('mrr')}}
where account_id = '0014x00000vftDHAAY'
GROUP BY month_date, account_id





