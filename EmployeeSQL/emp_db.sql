-- List the following details of each employee: employee number, last name, first name, gender, and salary.

-- select * from employees;
	select * from salaries;
	select e.emp_no, e.last_name, e.first_name,e.gender, s.salary
		from employees as e
		join salaries as s
		on e.emp_no = s.emp_no;
		
--List employees who were hired in 1986.
select * from employees where hire_date between '1986-01-01' and '1986-12-31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select d.dept_no, t.dept_name, d.emp_no, e.last_name, e.first_name, d.from_date, d.to_date
    from dept_manager as d
	join departments as t
    on d.dept_no = t.dept_no
    join employees as e
    on d.emp_no = e.emp_no;
	
--List the department of each employee with the following information: employee number, last name, first name, and department name.
select t.dept_name, p.emp_no, e.last_name, e.first_name
    from dept_emp as p
    join departments as t
    on p.dept_no = t.dept_no
    join employees as e
    on p.emp_no = e.emp_no

--List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees where first_name = 'Hercules' and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select t.dept_name, p.emp_no, e.last_name, e.first_name
    from dept_emp as p
    join departments as t
    on p.dept_no = t.dept_no
    join employees as e
    on p.emp_no = e.emp_no where t.dept_name = 'Sales';
	
--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select t.dept_name, p.emp_no, e.last_name, e.first_name
    from dept_emp as p
    join departments as t
    on p.dept_no = t.dept_no
    join employees as e
    on p.emp_no = e.emp_no where t.dept_name = 'Sales' and t.dept_name = 'Development';
--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.