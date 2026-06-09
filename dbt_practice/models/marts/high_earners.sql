SELECT name, department, salary
FROM {{ ref('employees_5000') }}
WHERE salary > (SELECT AVG(salary) FROM {{ ref('stg_employees') }})