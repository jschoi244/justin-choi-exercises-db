select distinct
    last_name
from
    employees
limit 10;

select
    emp_no
from
    salaries
order by
    salary DESC
limit 5 offset 45;