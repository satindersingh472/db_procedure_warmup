insert into team (name,city)values('calgary flames','calgary'),('edmonton oilers','edmonton'),('roughriders','regina');

insert into player (name,`number`,points,team_id)values('sam','001','200',1),('sat','002','300',1),('jag','003','400',1),
('nav','011','400',2),('gem','012','400',2),('reet','013','600',2),
('maan','021','500',3),('sandhu','022','800',3),('raj','023','100',3);

SELECT p.name,p.points ,p.`number`,t.name 
from player p inner join team t ON p.team_id = t.id
order by p.points desc;

call team_score(3);
call team_score(2);
call team_score (1);

SELECT t.name,sum(p.points)
from team t inner join player p on p.team_id = t.id
GROUP BY t.id
order by p.points desc;

call total_points();