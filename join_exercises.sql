SELECT
    d.dept_name AS Department,
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Name Manager'
FROM employees as e
    JOIN dept_manager
        ON e.emp_no = dept_manager.emp_no
    JOIN dept_emp as de
        ON de.emp_no = e.emp_no
    JOIN departments as d
        ON d.dept_no = de.dept_no
WHERE e.gender = 'f'

select
    t.title as title,
    count(e.emp_no) as Total
from employees as e
    join titles as t
        on e.emp_no = t.emp_no
    join dept_emp as de
        on de.emp_no = e.emp_no
where de.dept_no = 'd009'
group by t.title;

select
    d.dept_name AS 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
    s.salary AS Salary
from dept_manager as de
    join departments as d
        on d.dept_no = de.dept_no
    join salaries as s
        on s.emp_no = de.emp_no
    join employees as e
        on e.emp_no = de.emp_no;

select * from dept_manager;