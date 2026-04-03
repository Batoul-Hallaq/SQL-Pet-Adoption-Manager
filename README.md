# Pet Adoption Database System

SQL-based project designed to manage a pet adoption center's operations. This project covers the full database lifecycle, from conceptual design (ER Model) to practical implementation and advanced querying.

## Project Overview
The system manages interactions between pets, potential adopters, and staff members. It ensures data integrity and provides efficient ways to track adoption applications and pet health status.

### Key Features:
* **Relational Schema:** Structured tables for Adopters, Pets, Staff, and Applications.
* **Complex Queries:** Implementation of nested subqueries (e.g., finding the oldest pet's adopter).
* **Data Aggregation:** Using `AVG` and `COUNT` for statistical reporting (e.g., average pet age).
* **Views & Joins:** Created virtual tables (Views) to simplify access to combined adoption data.

## Tech Stack
* **Language:** SQL (MySQL/PostgreSQL compatible).
* **Documentation:** ER Modeling and Relational Mapping.

## Database Structure
The project includes the following entities:
* **Adopter:** Personal and contact information.
* **Pet:** Name, species, age, gender, and health status.
* **Staff:** Roles and contact details.
* **Adoption_Application:** Links adopters to pets with specific application dates.

## Sample Queries
The repository includes scripts for:
1. Identifying healthy pets for immediate adoption.
2. Generating reports on adoption activity.
3. Tracking staff responsibilities.

## Repository Contents
* `Pet.sql`: The main script to create the database and insert sample data.
* `Query.sql`: A collection of analytical SQL queries and views.
* `DB Project report.pdf`: Detailed technical documentation including the ER Diagram.

---
*Developed as part of the Introduction to Database course.*
