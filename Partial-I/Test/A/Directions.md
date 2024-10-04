---
tags:
  - Git
  - SQL
---
# Teoría
**Opción múltiple**

1. En el comando:

```bash
git commit -m "mensaje"
```

¿Para qué sirve la bandera `-m`

a) Indica el nombre del archivo que se está comprometiendo.

b) Especifica el mensaje del commit directamente desde la línea de comandos.

c) Crea un commit sin revisar los cambios.

d) Elimina archivos temporales antes de hacer el commit.

---
**Opción múltiple**

2. ¿En qué casos se usan la 4ta y 5ta forma normal?

a) Como excepciones o casos avanzados que van más allá de las primeras tres formas normales.

b) Cuando una tabla tiene valores duplicados y claves primarias mal definidas.

c) Cuando se necesita reducir el tamaño de la base de datos eliminando claves foráneas.

d) Cuando se quiere aumentar la redundancia de datos para mejorar el rendimiento de consultas complejas.

---
**Pregunta abierta**

3. ¿En qué forma normal se eliminan los grupos repetidos?

---
**Pregunta abierta**

4. Explica la diferencia entre la cláusula `WHERE` y la cláusula `HAVING`.

---
**Opción múltiple**

5. Dado el siguiente query:

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

# Práctica
1. Escribe un query para obtener el promedio de calificaciones por cada materia en la tabla calificaciones. Incluye solo aquellas materias que tienen al menos una calificación registrada. Ordena del mejor promedio al peor promedio.
2. Escribe un query que muestre el nombre y apellido de los alumnos que tienen al menos una calificación registrada. Ordena el resultado por apellido.
3. Escribe un query que muestre el nombre, apellido y calificación máxima de cada alumno. Considera solo las materias en las que el alumno ha recibido calificación.
