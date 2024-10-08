---
tags:
  - Git
  - SQL
---
## Teoría
1. a
2. Los dos hacen filtros pero `HAVING` lo hace sobre grupos después del `GROUP BY`.
3. c
4. a
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

3.
```SQL
SELECT
    a.nombre,
    a.apellido,
    c.calificacion
FROM
    calificaciones AS c
INNER JOIN
    alumnos AS a
USING(expediente)
WHERE c.calificacion > (
    SELECT AVG(calificacion)
    FROM calificaciones
    WHERE calificacion IS NOT NULL
);
```