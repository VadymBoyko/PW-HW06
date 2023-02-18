--02. Найти студента с наивысшим средним баллом по определенному предмету.
select s.id, s.fullname, Round(avg(g.grade), 2)
from students s
  inner join grades g on s.id  = g.student_id
  inner join disciplines d on d.id = g.discipline_id
where d.name  = 'Дискретна математика'
group by s.id, s.fullname
order by avg(g.grade) DESC
LIMIT 1;