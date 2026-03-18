DataViz Explorer Library Database

Project Overview:

A relational database management system for a library built using PostgreSQL.
Designed and documented by Noreen Lewis @ DataViz Explorer®

Technologies Used:

- PostgreSQL 16
- psql (Command Line Interface)
- SQL (DDL, DML, DQL)
- Schema Design
- Entity Relationship Diagram (ERD)

Database Schema:

- Schema Name: dataviz_library
- Total Tables: 6

Tables
| Table | Description |
|-------|-------------|
| author | Stores author details |
| book | Stores book details linked to author |
| branch | Stores library branch locations |
| member | Stores library member details |
| loan | Links members to books (many-to-many) |
| fine | Stores fines linked to loans |

Relationships
| Table | Relationship | Table |
|-------|-------------|-------|
| author | One-to-Many | book |
| book | Many-to-Many | member |
| member | Many-to-One | branch |
| loan | One-to-Many | fine |

Folder Structure

dataviz-explorer-library/
├── schema/
│   └── create_schema.sql
├── tables/
│   ├── author.sql
│   ├── book.sql
│   ├── branch.sql
│   ├── member.sql
│   ├── loan.sql
│   └── fine.sql
├── data/
│   └── sample_data.sql
├── queries/
│   ├── query1_books_authors.sql
│   ├── query2_active_loans.sql
│   ├── query3_unpaid_fines.sql
│   └── query4_total_fines.sql
├── docs/
│   └── dataviz_library_portfolio.pdf
├── LICENSE
└── README.md

How to Run
1. Connect to PostgreSQL
2. Run `schema/create_schema.sql`
3. Run each file in `tables/` in this order:
   - author.sql
   - book.sql
   - branch.sql
   - member.sql
   - loan.sql
   - fine.sql
4. Run `data/sample_data.sql`
5. Run queries in `queries/`

Sample Queries
- All books with their authors
- All active loans with member and book details
- All unpaid fines with member details
- Total fines per member

Portfolio Documentation:

See `dataviz_library_portfolio.pdf` for full documentation.

Connect
- LinkedIn: https://linkedin.com/in/noreen-lewis-dve1
- Website: https://datavizexplorer.org/dir`
