SELECT name, department, salary
FROM {{ ref('stg_employees') }}
WHERE salary > (SELECT AVG(salary) FROM {{ ref('stg_employees') }})