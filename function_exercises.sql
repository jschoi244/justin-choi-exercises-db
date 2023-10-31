use employees;

select
    *
from
    employees
where (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M'
ORDER BY  last_name ASC, first_name ASC;

select
    CONCAT(first_name, last_name)
from
    employees
where last_name like 'E%'
  AND last_name like '%E'
ORDER BY emp_no ASC;

select
    *
from
    employees
where last_name like '%q%'
  AND last_name not like '%qu%';

select
    *
from
    employees
where first_name like '%q%';

select
    *
from
    employees
where
    day(birth_date) = 25
    AND month(birth_date) = 12;

select
    *
from
    employees
where
        day(birth_date) = 25
  AND month(birth_date) = 12
    AND year(hire_date)
    between 1990 and 2000
    order by hire_date DESC
LIMIT 1;

SELECT *,
       DATEDIFF(NOW(), hire_date) AS days_worked
FROM employees
WHERE YEAR(hire_date) >= 1990
  AND YEAR(hire_date) <= 1999
  AND MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
ORDER BY hire_date DESC;

