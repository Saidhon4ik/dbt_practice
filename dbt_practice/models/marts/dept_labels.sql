SELECT
    name,
    department,
    salary,
    {{ department_label('department') }} as dept_label
FROM {{ ref('stg_employees') }}