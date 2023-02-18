--09. Найти список курсов, которые посещает определенный студент.
select distinct d.id, d.name
from grades g
  inner join disciplines d on d.id = g.discipline_id
 where g.student_id  = 10;