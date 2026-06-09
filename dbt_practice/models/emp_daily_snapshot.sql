{{ config(materialized='incremental') }}

-- Incremental model: on first run loads all data,
-- on subsequent runs only adds new rows
-- where hire_date is newer than the latest date already in the table

SELECT
    id,
    name,
    department,
    salary,
    hire_date
FROM {{ ref('employees_5000') }}

{% if is_incremental() %}
    -- Only load rows newer than what's already in the table
    WHERE hire_date > (SELECT MAX(hire_date) FROM {{ this }})
{% endif %}