# Sistema de Gestión de Bibliotecas - Diseño y Análisis SQL

Este proyecto consiste en el diseño e implementación de una base de datos relacional para la administración de inventario, usuarios y flujo de préstamos en una biblioteca. Se pone especial énfasis en la integridad referencial y en la generación de reportes de gestión de activos.

[![MySQL Version](https://img.shields.io/badge/MySQL-8.0%2B-blue?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![SQL Queries](https://img.shields.io/badge/SQL-Advanced_Queries-orange?style=for-the-badge&logo=sqlite&logoColor=white)](https://en.wikipedia.org/wiki/SQL)
[![Database Design](https://img.shields.io/badge/DB_Design-Normalized-brightgreen?style=for-the-badge&logo=databricks&logoColor=white)](https://en.wikipedia.org/wiki/Database_normalization)

## Índice

1. [Visualización del Modelo (DER)](#visualización-del-modelo-der)
2. [Estructura del Proyecto](#estructura-del-proyecto)
3. [Entidades Principales](#entidades-principales)
4. [Consultas de Análisis de Datos](#consultas-de-análisis-de-datos)
5. [Contacto](#contacto)

## Visualización del Modelo (DER)

![Diagrama Entidad Relación](https://github.com/LUXI4NO/Sistema-gestion-biblioteca-sql/blob/main/Model/DER.png?raw=true)

*El modelo aplica normalización en **3FN** y motor **InnoDB** para asegurar transacciones ACID y consistencia en el stock de libros.*

## Estructura del Proyecto

El repositorio sigue un flujo lógico de despliegue técnico:

- **01_schema_definition.sql**: Definición de objetos (DDL), restricciones de integridad (Checks) y claves foráneas.
- **02_data_seed.sql**: Carga inicial de datos (DML) incluyendo autores, catálogo y registros de usuarios.
- **03_analytics_queries.sql**: Set de consultas para auditoría de stock, morosidad y métricas de catálogo.

## Entidades Principales

- **Libros:** Control de stock, ISBN único y vinculación con catálogo de autores.
- **Autores:** Normalización de metadatos de autores para evitar redundancia.
- **Usuarios:** Registro de lectores con datos de contacto validados.
- **Préstamos:** Gestión de estados (Pendiente/Devuelto/Vencido) y control de fechas críticas.

## Consultas de Análisis de Datos

### 1. Auditoría de Inventario
Cálculo de disponibilidad física total mediante funciones de agregación (`SUM`) y detección de títulos con stock crítico.

### 2. Gestión de Mora y Vencimientos
Filtros temporales avanzados para la identificación proactiva de préstamos cuya fecha de devolución ha expirado.

### 3. Analytics de Catálogo
Análisis de la composición de la biblioteca por autor utilizando `INNER JOIN` y segmentación por `GROUP BY`.

### 4. Seguimiento de Usuarios
Detección de usuarios con obligaciones pendientes, permitiendo una visión clara de la rotación de activos de la institución.

## Contacto

[![Gmail](https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:alvarezlucianoezequiel@gmail.com)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/luciano-ezequiel-alvarez/)