--06. Найти список студентов в определенной группе.
select s.id, s.fullname
from students s
where s.group_id = 2;