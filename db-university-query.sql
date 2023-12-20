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

-- 4)

-- 5) Da quanti dipartimenti è composta l’università?
select count(*)
from departments d ;

