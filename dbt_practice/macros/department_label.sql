{% macro department_label(dept_column) %}
    CASE
        WHEN {{ dept_column }} = 'engineering' THEN '🛠 Tech'
        WHEN {{ dept_column }} = 'finance' THEN '💰 Finance'
        WHEN {{ dept_column }} = 'hr' THEN '👥 HR'
        WHEN {{ dept_column }} = 'marketing' THEN '📣 Marketing'
        ELSE 'Other'
    END
{% endmacro %}