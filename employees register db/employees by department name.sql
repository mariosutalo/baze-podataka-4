select e.first_name, e.last_name, d.name
from employee e left join department d
on e.department_id = d.id
where d.name = "Marketing";