--07. Найти оценки студентов в отдельной группе по определенному предмету.
select s.id, s.fullname, g.grade, g.date_of
from grades g
  inner join students s on s.id  = g.student_id
where s.group_id = 2
  and g.discipline_id = 3
order by g.date_of;