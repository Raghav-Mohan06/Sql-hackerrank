 select MAX(salary*months), COUNT(*) from Employee where (salary * months) >= (select MAX(salary * months) from employee);
