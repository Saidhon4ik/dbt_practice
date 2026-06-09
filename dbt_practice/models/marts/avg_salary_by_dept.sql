SELECT
department,
AVG(salary) as avg_salary,
COUNT(*) as employees
FROM {{ref('stg_employees')}}
group by department