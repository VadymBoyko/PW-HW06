--Средний балл, который определенный преподаватель ставит определенному студенту.
select ROUND(avg(grade), 2)
from grades g
  inner join disciplines d on d.id = g.discipline_id
 where g.student_id  = 10
   and d.teacher_id = 3;