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
    *
from
    employees
where last_name like 'E%'
   OR last_name like '%E';
select
    *
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