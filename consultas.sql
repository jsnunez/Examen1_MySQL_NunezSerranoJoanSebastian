-- ##################################################
-- ################# Examen 1 consultas ##############
-- #############el universitario ##############
-- ##########################################

use ElUniversitario;


-- Devuelve un listado con los nombres de todos los profesores y los departamentos
-- que tienen vinculados. El listado también debe mostrar aquellos profesores que 
-- no tienen ningún departamento asociado. El listado debe devolver cuatro columnas,
-- nombre del departamento, primer apellido, segundo apellido y nombre del profesor.
-- El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del 
-- departamento, apellidos y el nombre.


select d.nombre ,p.apellido2 , p.apellido1 , p.nombre
from profesor p inner join departamento d 
on p.id_departamento = d.id
order by d.nombre
;



-- Devuelve un listado con los profesores que no están asociados a un departamento.

SELECT p.nombre,p.apellido1 ,p.apellido2 
from profesor p inner join departamento d 
where  p.id_departamento  is null


-- Devuelve un listado con los departamentos que no tienen profesores asociados.

SELECT DISTINCT  d.nombre from departamento d 
inner join profesor p  
where (p.id_departamento = d.id ) 


-- Devuelve un listado con los profesores que no imparten ninguna asignatura




-- Devuelve un listado con las asignaturas que no tienen un profesor asignado.

SELECT a.nombre 
from asignatura a 
WHERE a.id_profesor is null


-- Devuelve un listado con todos los departamentos que tienen alguna asignatura 
-- que no se haya impartido en ningún curso escolar. El resultado debe mostrar 
-- el nombre del departamento y el nombre de la asignatura que no se haya impartido nunca.



-- Devuelve el número total de alumnas que hay.

SELECT COUNT(*) FROM alumno


-- Calcula cuántos alumnos nacieron en 1999.

select * FROM alumno a
WHERE year(a.fecha_nacimiento)= 1999

-- Calcula cuántos profesores hay en cada departamento. 
-- El resultado sólo debe mostrar dos columnas, una con 
-- el nombre del departamento y otra con el número de 
-- profesores que hay en ese departamento. El resultado
-- sólo debe incluir los departamentos que tienen profesores asociados 
-- y deberá estar ordenado de mayor a menor por el número de profesores.


-- Devuelve todos los datos del alumno más joven.

