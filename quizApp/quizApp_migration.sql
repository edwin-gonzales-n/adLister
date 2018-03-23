create database quizapp;

use quizapp;

create table questions
(
id int not null auto_increment,
question_name varchar(250),
question_content varchar(250),
created_at timestamp,
primary key(id)
);

create table q_answers
(
id int not null auto_increment,
answer_title varchar(250),
answer_description varchar(250),
created_at timestamp,
primary key(id)
);

create table quizes
(
id int not null auto_increment,
quiz_name varchar(250),
created_at timestamp,
primary key(id)
);

create table students
(
id int not null auto_increment,
first_name varchar(100),
last_name varchar(100),
email varchar(100),
created_at timestamp,
primary key(id)
);

create table student_answers
(
id int not null auto_increment,
student_answers varchar(100),
primary key(id)
);

create table ad_pivot
(
questions_id int not null,
q_answers_id int not null,
quizes_id int not null,
students_id int not null,
students_answers_id int not null,
foreign key (questions_id) references questions(id),
foreign key (q_answers_id) references q_answers(id),
foreign key (quizes_id) references quizes(id),
foreign key (students_id) references students(id),
foreign key (students_answers_id) references student_answers(id)
);

