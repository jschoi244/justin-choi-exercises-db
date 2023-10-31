select distinct
    title
from
    titles;
select distinct
   last_name
from
    employees
where last_name like 'E%'
  AND last_name like '%E'
group by
    last_name;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

select distinct
    last_name
from
    employees
where last_name like '%q%'
  AND last_name not like '%qu%';

select
    count(*)
from
    employees
where (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
group by  gender;
