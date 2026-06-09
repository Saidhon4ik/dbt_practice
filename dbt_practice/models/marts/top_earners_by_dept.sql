WITH ranked AS (
    SELECT
        name,
        department,
        salary,
        row_number() OVER (PARTITION BY department ORDER BY salary DESC) as rank
    FROM {{ ref('stg_employees') }}
)
SELECT * FROM ranked
WHERE rank <= 3