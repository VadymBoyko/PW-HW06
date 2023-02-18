--05. Найти какие курсы читает определенный преподаватель.
select d.id, d.name
from disciplines d
where d.teacher_id  = 3;