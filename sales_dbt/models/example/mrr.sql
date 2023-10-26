
{{ config(materialized='table') }}


--Your final model should have at least the following columns:
--Customer_id  / product_id
--month
--mrr

--

-- I assumed that opportunity ends and become a deal, this is why i choose "end_date" as month.
-- I also assumed that I should use one or more of this: Customer_id  / product_id so i used both.



SELECT
    op.account_id AS account_id,
    oli.product,
    {{ date_trunc("month", "end_date") }} AS month_date,
    SUM(oli.total_price) AS mrr
FROM {{ref('opportunity')}} AS op
INNER JOIN  {{ref('opportunity_line_item')}} oli
        ON oli.opportunity_id = op.id
WHERE op.end_date IS NOT NULL
GROUP BY end_date, account_id, product



