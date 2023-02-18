--03. Найти средний балл в группах по определенному предмету.
select g2.id, g2.name, Round(avg(g.grade), 2)
from students s
  inner join groups g2 on g2.id = s.group_id
  inner join grades g on s.id  = g.student_id
  inner join disciplines d on d.id = g.discipline_id
where d.name  = 'Дискретна математика'
group by g2.id, g2.name;