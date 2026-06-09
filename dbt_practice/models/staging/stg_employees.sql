-- Staging model: basic cleaning of raw employees data
-- Rename columns, cast types, filter bad data

SELECT
    id,
    UPPER(name) as name,
    LOWER(department) as department,
    salary,
    hire_date
FROM {{ ref('employees_5000') }}
WHERE salary > 0
  AND name IS NOT NULL