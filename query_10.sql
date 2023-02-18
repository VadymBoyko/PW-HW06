--10. Список курсов, которые определенному студенту читает определенный преподаватель.
select distinct d.id, d.name
from grades g
  inner join disciplines d on d.id = g.discipline_id
 where g.student_id  = 10
   and d.teacher_id = 3;

--АБО
select d.id, d.name
from disciplines d
where d.teacher_id = 4
  and exists(select 1
             from grades g
             where g.discipline_id  = d.id
               and g.student_id = 10);