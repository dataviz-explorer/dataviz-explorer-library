dataviz-explorer-library

A PostgreSQL relational database for a Library Management System
DataViz Explorer Library Database

Project Overview:
A relational database management system for a library built using PostgreSQL.
Designed and documented by Noreen Lewis | DataViz Explorer

Technologies Used:
- PostgreSQL 16
- psql (Command Line Interface)
- SQL (DDL, DML, DQL)

Database Schema:
- Schema: dataviz_library
- Tables: author, book, branch, member, loan, fine

Entity Relationship Diagram
| Table | Relationship | Table |
|-------|-------------|-------|
| author | One-to-Many | book |
| book | Many-to-Many | member |
| member | Many-to-One | branch |
| loan | One-to-Many | fine |

How to Run
1. Connect to PostgreSQL
2. Run schema/create_schema.sql
3. Run each file in tables/
4. Run data/sample_data.sql
5. Run queries in queries/

Portfolio Documentation
See docs/dataviz_library_portfolio.pdf for full documentation.

Connect
- LinkedIn: https://linkedin.com/in/noreen-lewis-dve1
- Website: https://datavizexplorer.org/dir
