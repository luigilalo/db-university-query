-- Selezionare cognome e nome tutti gli insegnanti, ordinati per cognome e poi per nome in ordine alfabetico (100)
select t.surname , t.name 
from teachers t 
order by t.surname , t.name ;
-- 2) Selezionare tutti gli insegnamenti (courses) che valgono almeno 12 crediti
select *
from courses c 
where c.cfu >=12;
-- 3) Selezionare tutti gli studenti nati nel 1990 (160)
select *
from students s 
where year(s.date_of_birth)= 1990;

-- 4) Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
select *
from courses c
where c.period = 'I semestre' and  c.`year` =1;

-- 5) Da quanti dipartimenti è composta l’università?
select count(*)
from departments d ;

-- 6) Contare tutti gli insegnanti il cui cognome termina con la “E” (8)
select count(*)
from teachers t 
where t.surname like '%E';

-- 7) Selezionare nome, cognome e codice fiscale di tutti gli studenti iscritti al Corso di Laurea in Economia, in ordine alfabetico
select s.name , s.surname , s.fiscal_code
from students s
join `degrees` d on s.degree_id = d.id 
where d.name = 'Corso di Laurea in Economia'
order by s.surname , s.name , s.fiscal_code;

-- 8) Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT *
FROM degrees d 
JOIN departments d2 ON d.department_id = d2.id 
WHERE d.`level` = 'magistrale' AND d2.name = 'Dipartimento di Neuroscienze';
