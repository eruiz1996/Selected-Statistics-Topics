---
tags:
  - Git
  - SQL
---
# Teoría
**Opción múltiple**

1. ¿En qué casos se usan la 4ta y 5ta forma normal?

a) Como excepciones o casos avanzados que van más allá de las primeras tres formas normales.

b) Cuando una tabla tiene valores duplicados y claves primarias mal definidas.

c) Cuando se necesita reducir el tamaño de la base de datos eliminando claves foráneas.

d) Cuando se quiere aumentar la redundancia de datos para mejorar el rendimiento de consultas complejas.

---
**Pregunta abierta**

2. Explica la diferencia entre la cláusula `WHERE` y la cláusula `HAVING`.

---
**Opción múltiple**

3. Dado el siguiente query:

```SQL
SELECT 
    nombre, 
    salario
FROM 
    empleados
WHERE 
    salario > 30000
ORDER BY 
    salario DESC;
```

¿Cuál es el orden de ejecución?

a) `SELECT` -> `WHERE` -> `FROM` -> `ORDER BY`

b) `WHERE` -> `FROM` -> `SELECT` -> `ORDER BY`

c) `FROM` -> `WHERE` -> `SELECT` -> `ORDER BY`

d) `FROM` -> `SELECT` -> `WHERE` -> `ORDER BY`

---
**Opción múltiple**

4. ¿Cuáles son las tres anomalías o inconsistencias a las que nos exponemos si una base de datos relacional no está normalizada?

a) Anomalía de inserción, eliminación y actualización.

b) Anomalía de selección, modificación y eliminación.

c) Anomalía de duplicación, relación y ordenación.

d) Anomalía de normalización, descomposición y proyección.

---
**Pregunta abierta**

5. Explica el siguiente meme:

![[meme.jpg]]

# Práctica
1. Obtener el promedio de la edad de los alumnos cuyo apellido termine en `'ez'`, por ejemplo *Pérez*, *Rodríguez*.  
2. Escribe query que muestre el nombre, apellido y calificación máxima de cada alumno. Considera solo las materias en las que el alumno ha recibido calificación.
3. Escribe un query para obtener el nombre y apellido de los alumnos que tienen una calificación superior al promedio.
