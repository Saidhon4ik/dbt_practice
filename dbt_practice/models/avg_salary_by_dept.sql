SELECT
department,
AVG(salary) as avg_salary,
COUNT(*) as employees
FROM {{ref('employees_5000')}}
group by department