--Link : https://www.youtube.com/watch?v=aHShJ0hQtFc&list=PLBTZqjSKn0IeKBQDjLmzisazhqQy4iGkb&index=22

--DDL
create table exams (student_id int, subject varchar(20), marks int);
delete from exams;
insert into exams values (1,'Chemistry',91),(1,'Physics',91)
,(2,'Chemistry',80),(2,'Physics',90)
,(3,'Chemistry',80)
,(4,'Chemistry',71),(4,'Physics',54);

|------------|-----------|-------|
| student_id | subject   | marks |
|------------|-----------|-------|
|          1 | Chemistry |    91 |
|------------|-----------|-------|
|          1 | Physics   |    91 |
|------------|-----------|-------|
|          2 | Chemistry |    80 |
|------------|-----------|-------|
|          2 | Physics   |    90 |
|------------|-----------|-------|
|          3 | Chemistry |    80 |
|------------|-----------|-------|
|          4 | Chemistry |    71 |
|------------|-----------|-------|
|          4 | Physics   |    54 |
|------------|-----------|-------|




select student_id			
from exams			
where subject in ('Chemistry','Physics')			
group by student_id			
having count(distinct subject)>1 and count(distinct marks)=1			

