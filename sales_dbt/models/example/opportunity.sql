
{{ config(materialized='table', unique_key='id') }}

WITH opportunity AS (
    SELECT DISTINCT
        ID AS id,
        ACCOUNTID AS account_id,
        START_DATE AS start_date,
        END_DATE AS end_date
    FROM {{ ref('seed__opportunity') }}
)

SELECT * FROM opportunity



