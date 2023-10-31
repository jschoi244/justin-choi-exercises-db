use employees;
select
    *
from
    employees
where (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
    AND gender = 'M';
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
   AND last_name like '%E';
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
