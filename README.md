# Proyecto: Sistema de Evaluaciones para el Centro de Capacitación “Aprende Perú”

## Descripción
Este proyecto consiste en el diseño e implementación de una base de datos y estructura para una aplicación web que permita evaluar a los estudiantes del centro de capacitación "Aprende Perú". La aplicación soporta evaluaciones de tipo cerrado (preguntas con alternativas), asignación de evaluaciones a alumnos, registro de respuestas y calificaciones.

---

## Requerimientos funcionales
- Construcción de evaluaciones clasificadas por tipo o área.
- Evaluaciones cerradas con alternativas múltiples, con única respuesta correcta.
- Puntajes asignados a cada pregunta y evaluaciones vigesimales (sobre 20 puntos).
- Control de fecha de inicio y fin para cada evaluación, además del tiempo máximo de desarrollo.
- Un estudiante solo puede presentar cada evaluación una vez.
- El administrador puede crear evaluaciones y reiniciar o eliminar intentos fallidos.
- Registro de fechas y horas de inicio y fin de cada examen.
- Los alumnos solo pueden rendir las evaluaciones a las que fueron asignados.
- Registro detallado de respuestas, puntajes y resultados de cada examen.

---

## Modelo Relacional y Base de Datos

La base de datos está construida sobre MySQL y contiene las siguientes tablas principales:

- `personas`: Datos de usuarios (alumnos, administradores).
- `administradores`: Información de usuarios con privilegios administrativos.
- `categorias`: Clasificación de evaluaciones por áreas.
- `evaluaciones`: Información de cada examen (título, duración, fechas, categoría).
- `preguntas`: Preguntas de cada evaluación con puntaje asignado.
- `alternativas`: Alternativas de cada pregunta, con indicador de la correcta.
- `asignaciones`: Relación entre alumnos y evaluaciones asignadas, registro de estado y resultados.
- `respuestas`: Respuestas marcadas por los alumnos para cada pregunta.

---

## Datos de Ejemplo

- 10 alumnos registrados.
- 5 evaluaciones creadas, cada una con 5 preguntas.
- Cada pregunta tiene 4 alternativas con una correcta definida.
- Asignaciones de evaluaciones:
  - 4 alumnos asignados a 3 evaluaciones cada uno.
  - 3 alumnos asignados a 2 evaluaciones cada uno (diferentes a los anteriores).
  - 3 alumnos sin asignaciones.
- Simulación de desarrollo para 7 alumnos, con al menos 2 desaprobados.

---

## Scripts incluidos

- Creación de la base de datos y tablas con relaciones y restricciones.
- Inserción de datos de ejemplo (alumnos, evaluaciones, preguntas, alternativas).
- Asignación de evaluaciones a alumnos.
- Actualización de estados y puntajes para simular resultados.
- Ejemplo de inserción de respuestas de los alumnos.

---

## Consultas comunes

Ejemplos de consultas que se pueden realizar para obtener información clave:

- Número total de alumnos desaprobados.
- Cantidad de alumnos aprobados en una evaluación específica.
- Número de exámenes asignados a un alumno y su estado (resueltos, pendientes).
- Mejor y peor calificación de una evaluación.
- Promedio de calificaciones de un estudiante.

---

## Recomendaciones para la implementación web

- Validar en el backend que cada alumno solo pueda presentar las evaluaciones asignadas y una sola vez.
- Controlar el tiempo de desarrollo de la evaluación con temporizador.
- Almacenar fecha y hora de inicio y fin de cada examen para seguimiento.
- Implementar roles diferenciados (administrador, alumno).
- Mostrar resultados vigesimales y calificaciones automáticas según respuestas.
