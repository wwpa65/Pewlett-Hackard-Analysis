-- Create Retirement Titles table by joining the employees and tit employees and titles tables 
-- and filter by birth date between 1952 and 1955
SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date

INTO retirement_titles
FROM employees AS e
RIGHT JOIN titles AS t
ON (e.emp_no=t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no, from_date DESC;

select * from retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT COUNT(u.title), title
INTO retiring_titles
FROM unique_titles AS u
GROUP BY title
ORDER BY count DESC;

SELECT DISTINCT ON (emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title

INTO mentorship_eligibility
FROM employees as e
LEFT JOIN depT_emp as de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = '9999-01-01' 
AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY emp_no;

SELECT * FROM mentorship_eligibility;



