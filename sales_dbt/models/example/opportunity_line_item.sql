
{{ config(materialized='table', unique_key='id') }}

WITH opportunity_line_item AS (

    SELECT DISTINCT
        ID AS id,
        OPPORTUNITYID AS opportunity_id,
        UNITPRICE AS unit_price,
        QUANTITY AS quantity,
        TOTALPRICE AS total_price,
        PRODUCT AS product
    FROM {{ ref('seed__opportunity_line_item') }}
)


SELECT * FROM opportunity_line_item



