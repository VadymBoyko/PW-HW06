--01. Найти 5 студентов с наибольшим средним баллом по всем предметам.
select s.id, s.fullname, Round(avg(g.grade), 2) as Avg_Grade
from students s
  inner join grades g on s.id  = g.student_id
group by s.id, s.fullname
order by avg(g.grade) DESC
LIMIT 5;