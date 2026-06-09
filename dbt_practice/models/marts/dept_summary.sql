SELECT 
    department,
    COUNT(*) as total_emp,
    MIN(salary) as min_salary,
    MAX(salary) as max_salary,
    AVG(salary) as avg_salary,
    SUM(salary) as ovreall_salary
FROM {{ ref('stg_employees') }}
GROUP BY department