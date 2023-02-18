--Оценки студентов в определенной группе по определенному предмету на последнем занятии.
select s.id, s.fullname, g.grade, g.date_of
from grades g
  inner join students s on s.id = g.student_id
where g.discipline_id = 2
  and s.group_id = 2
  and g.date_of = (select max(date_of) -- находим последнее занятие для данной группы по данному предмету
                   from grades g2
                     inner join students s2 on s2.id = g2.student_id
                   where g2.discipline_id = g.discipline_id
                     and s2.group_id = s.group_id);