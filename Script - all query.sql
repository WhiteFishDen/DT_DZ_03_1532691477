select department_name, financing, departments_id from departments; --задание 1
select group_name as Имя_Группы, raiting as Рейтиг_группы from _groups; --задание 2
select surname, (premium*100)/salary as процент_ставки_к_надбавке,
		(premium*100)/(salary+premium) as процент_ставки_к_зарплате
from teachers;--задание 3 
select surname from teachers
where is_professor = '1' and salary > 1050; -- задание 5
select department_name from departments
where financing < 11000 or financing > 25000; -- задание 6
select faculty_name from faculties 
where faculty_name != 'computer science'; --- задание 7
select surname, _position from teachers
where is_professor = '0'; -- задание 8
select surname, _position, salary, premium from teachers
where is_assistant = '1' and  premium >=160 and premium <= 550; -- задание 9
select surname, salary from teachers
where is_assistant = '1'; -- задание 10
select surname, _position from teachers
where employment_date < '2000-01-01'; -- задание 11
select department_name as Name_of_Department from departments
where department_name < 'software development'
order by department_name ; -- задание 12
select surname from teachers
where is_assistant = '1' and salary+premium <= 1200; -- задание 13
select group_name from _groups
where raiting >=2 and raiting <=4;--задание 14
select surname from teachers 
where is_assistant = '1' and salary < 550 or premium < 200; -- задание 15


