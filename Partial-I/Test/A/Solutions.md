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
    nombre_materia,
    AVG(calificacion) AS promedio_calificacion
FROM
    calificaciones
WHERE
    calificacion IS NOT NULL
GROUP BY
    nombre_materia
ORDER BY
    promedio_calificacion DESC;
```

2.
```SQL
SELECT
    DISTINCT a.nombre,
    a.apellido
FROM
    alumnos AS a
INNER JOIN
    calificaciones AS c
USING(expediente)
ORDER BY
    a.apellido;
```

3.
```SQL
SELECT
    a.nombre,
    a.apellido,
    MAX(c.calificacion) AS calificacion_maxima
FROM
    alumnos AS a
LEFT JOIN
    calificaciones AS c
ON
    a.expediente = c.expediente
WHERE
    c.calificacion IS NOT NULL
GROUP BY
    a.expediente, a.nombre, a.apellido;
```