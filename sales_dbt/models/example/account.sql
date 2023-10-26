
{{ config(materialized='table', unique_key='id') }}

WITH account AS (
    SELECT DISTINCT
        ID AS id,
        INDUSTRY AS industry,
        SALES_SEGMENT AS sales_segment
    FROM {{ ref('seed__account') }}
)
SELECT * FROM account



