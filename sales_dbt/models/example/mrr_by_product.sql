
{{ config(materialized='table') }}

--
--Please make it possible to slice the data by:
--Product

--

SELECT
    product,
    month_date,
    SUM(mrr) AS mrr
FROM {{ref('mrr')}}
WHERE product = 'Customer Support'
GROUP BY month_date, product





