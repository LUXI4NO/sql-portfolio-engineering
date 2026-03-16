# Sistema de Gestión Académica - Diseño y Análisis SQL

Este proyecto se centra en el diseño, implementación y explotación de una base de datos relacional para la gestión de una institución educativa. Cubre desde la arquitectura del modelo Entidad-Relación hasta la ejecución de consultas analíticas avanzadas para la toma de decisiones.

[![MySQL Version](https://img.shields.io/badge/MySQL-8.0%2B-blue?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![SQL Queries](https://img.shields.io/badge/SQL-Advanced_Queries-orange?style=for-the-badge&logo=sqlite&logoColor=white)](https://en.wikipedia.org/wiki/SQL)
[![Database Design](https://img.shields.io/badge/DB_Design-Normalized-brightgreen?style=for-the-badge&logo=databricks&logoColor=white)](https://en.wikipedia.org/wiki/Database_normalization)

## Indice

1. [Visualización del Modelo (DER)](#visualizacion-del-modelo-der)
2. [Estructura del Proyecto](#estructura-del-proyecto)
3. [Entidades Principales](#entidades-principales)
4. [Consultas de Análisis de Datos](#consultas-de-analisis-de-datos)
5. [Contacto](#contacto)

## Visualizacion del Modelo (DER)

![Diagrama Entidad Relación](https://github.com/LUXI4NO/sql-portfolio-engineering/blob/main/UNAJ%20-%20Sistema%20de%20Gestion%20Estudiantil%20-%20SQL/Model/DER.png)

*El modelo utiliza una arquitectura normalizada en 3FN para garantizar la integridad referencial y evitar la redundancia de datos.*

## Estructura del Proyecto

El repositorio está organizado de forma lógica para seguir el ciclo de vida de una base de datos:

- **01_schema_definition.sql**: Script de creación de base de datos, tablas y restricciones (DDL).
- **02_data_seed.sql**: Set de datos de prueba para poblar el sistema (DML).
- **03_analytics_queries.sql**: 10 consultas técnicas para la extracción de KPIs académicos.

## Entidades Principales

Información clave gestionada en el sistema:
- **Estudiantes:** Datos personales, DNI único y seguimiento de fecha de ingreso.
- **Profesores:** Gestión de especialidades docentes vinculadas a materias.
- **Inscripciones:** Control de estados (Regular/Libre) y ciclos lectivos.
- **Calificaciones:** Registro granular de notas por instancia de examen.

## Consultas de Analisis de Datos

### 1. Rendimiento Académico
Cálculo de promedios por materia utilizando funciones de agregación (`AVG`) y agrupamientos (`GROUP BY`).

### 2. Auditoría de Carga Horaria
Identificación de materias críticas cuya carga horaria supera el promedio general mediante el uso de **Subqueries**.

### 3. Seguimiento de Alumnos Libres
Filtros avanzados para detectar estudiantes con calificaciones insuficientes, permitiendo una intervención administrativa temprana.

### 4. Distribución Operativa
Análisis de la cantidad de alumnos inscriptos por turno (Mañana, Tarde, Noche) para optimizar el uso de aulas y recursos.

## Contacto

[![Gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:alvarezlucianoezequiel@gmail.com)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/luciano-alvarez-332843285/)
