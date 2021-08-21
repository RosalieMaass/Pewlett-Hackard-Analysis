
-- Joining employee and titles tables
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
ti.title,
ti.from_date,
ti.to_date
INTO retire_by_title
FROM employees as e
LEFT JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;
