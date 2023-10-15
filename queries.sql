select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
	join salaries as s
	on (e.emp_no = s.emp_no);

select first_name, last_name, hire_date
from employees
where extract('Year' from hire_date) = 1986;

select m.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from dept_manager as m
	join departments as d
	on (m.dept_no = d.dept_no)
		join employees as e
		on (m.emp_no = e.emp_no);

select ds.dept_no, ds.dept_name, e.emp_no, e.last_name, e.first_name
from dept_emp as d
	join departments as ds
	on (d.dept_no = ds.dept_no)
		join employees as e
		on (d.emp_no = e.emp_no);
		
select * from employees
where first_name = 'Hercules'
and last_name like 'B%';

select d.dept_name, e.emp_no, e.last_name, e.first_name
from departments as d
	join dept_emp as de
	on (d.dept_no = de.dept_no)
		join employees as e
		on (de.emp_no = e.emp_no)
where d.dept_name = 'Sales';

select d.dept_name, e.emp_no, e.last_name, e.first_name
from departments as d
	join dept_emp as de
	on (d.dept_no = de.dept_no)
		join employees as e
		on (de.emp_no = e.emp_no)
where d.dept_name = 'Sales'
or d.dept_name = 'Development';

select last_name, count(last_name) as counts
from employees
group by last_name
order by counts desc;