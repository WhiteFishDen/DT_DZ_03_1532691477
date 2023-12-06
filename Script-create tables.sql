create table if not exists departments
(
    departments_id serial primary key,
    financing numeric not null default 0 check (financing>=0),
    department_name varchar(100) not null unique 
);
create table if not exists faculties
(
    faculties_id serial primary key,
    faculty_name varchar(100) not null unique,
    dean varchar(100) not null
);
create table if not exists teachers
(
	teachers_id serial primary key,
	employment_date date not null,
	is_assistant bit(1) not null default B'0',
	is_professor bit(1) not null default B'0',
	teacher_name varchar not null unique,
	_position varchar not null,
	premium numeric not null default 0 check (premium>=0),
	salary numeric not null check (salary>0),
	surname varchar not null
);
create table if not exists _groups
(
   groups_id serial primary key,
   group_name varchar(10) not null unique,
   raiting int not null check (raiting>0 and raiting<5),
   _year int not null check (_year>=1 and _year<=5)
);