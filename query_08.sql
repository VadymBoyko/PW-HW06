--08. Найти средний балл, который ставит определенный преподаватель по своим предметам.
select round(avg(g.grade), 2)
from grades g
  inner join disciplines d on d.id = g.discipline_id
where d.teacher_id  = 1;

-- АБО
select d.name, round(avg(g.grade), 2)
from grades g
  inner join disciplines d on d.id = g.discipline_id
where d.teacher_id  = 1
group by d.name;