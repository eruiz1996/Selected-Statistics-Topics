---
tags:
  - Git
  - SQL
---
## Teoría
1. b
2. a
3. Primera forma normal (1NF)
4. Los dos hacen filtros pero `HAVING` lo hace sobre grupos después del `GROUP BY`.
5. c
## Práctica

1.
```SQL
SELECT
    AVG(edad) edad_promedio
FROM
    alumnos
WHERE
    apellido LIKE '%ez';
```

2.
```SQL
SELECT
    c.nombre_materia,
    COUNT(a.expediente) AS num
FROM
    alumnos AS a
INNER JOIN
    calificaciones AS c
USING(expediente)
WHERE 
	edad > 20
GROUP BY 
	nombre_materia
ORDER BY 
	num DESC;
```

3.
```SQL
SELECT
    nombre,
    SUM(calificacion) AS suma_calif
FROM
    alumnos
INNER JOIN
    calificaciones
USING(expediente)
WHERE
    nombre_materia = 'Matemáticas' AND calificacion IS NOT NULL
GROUP BY nombre
ORDER BY calificacion DESC
LIMIT 1 OFFSET 1;
```