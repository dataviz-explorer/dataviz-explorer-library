# 📚 DataViz Explorer Library Database

## Project Overview
A relational database management system for both a **Physical Library** and a **Digital Content Library** built using PostgreSQL. Designed and documented by **Noreen Lewis | DataViz Explorer®**

---

## 🏛️ Part 1 — Physical Library

### Technologies Used
- PostgreSQL 16
- psql (Command Line Interface)
- SQL (DDL, DML, DQL)
- Schema Design
- Entity Relationship Diagram (ERD)

### Database Schema
- **Schema Name:** dataviz_library
- **Total Tables:** 6

### Tables
| Table | Description |
|-------|-------------|
| author | Stores author details |
| book | Stores book details linked to author |
| branch | Stores library branch locations |
| member | Stores library member details |
| loan | Links members to books (many-to-many) |
| fine | Stores fines linked to loans |

### Relationships
| Table | Relationship | Table |
|-------|-------------|-------|
| author | One-to-Many | book |
| book | Many-to-Many | member |
| member | Many-to-One | branch |
| loan | One-to-Many | fine |

### How to Run
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

### Sample Queries
- All books with their authors
- All active loans with member and book details
- All unpaid fines with member details
- Total fines per member

### Portfolio Documentation
See [dataviz_library_portfolio.pdf](dataviz_library_portfolio.pdf) for full documentation.

---

## 💻 Part 2 — Digital Content Library Extension

### Overview
An extension of the physical library database to support digital content including eBooks, Videos, Podcasts and Online Courses. Shares the existing **member** and **author** tables.

### New Tables Added
| Table | Description |
|-------|-------------|
| content_type | Stores content categories — eBook, Video, Podcast, Course |
| platform | Stores hosting platforms e.g. YouTube, Spotify, Coursera |
| digital_content | Stores all digital items linked to author, type and platform |
| digital_loan | Records member access to individual digital content items |
| subscription_plan | Defines available subscription plans and pricing |
| subscription | Records member subscriptions to plans |
| review | Stores member ratings and reviews of digital content |

### Relationships
| Table | Relationship | Table |
|-------|-------------|-------|
| author | One-to-Many | digital_content |
| content_type | One-to-Many | digital_content |
| platform | One-to-Many | digital_content |
| digital_content | Many-to-Many | member (via digital_loan) |
| member | Many-to-Many | subscription_plan (via subscription) |
| digital_content | One-to-Many | review |
| member | One-to-Many | review |

### How to Run
1. Run each file in `digital/tables/` in this order:
   - content_type.sql
   - platform.sql
   - digital_content.sql
   - digital_loan.sql
   - subscription_plan.sql
   - subscription.sql
   - review.sql
2. Run `digital/data/digital_sample_data.sql`
3. Run queries in `digital/queries/`

### Sample Queries
- All digital content with type and platform
- All active digital loans with member details
- All active subscriptions with plan details
- Average rating per digital content
- Total subscription revenue per plan

### Portfolio Documentation
See [dataviz_digital_library_portfolio.pdf](dataviz_digital_library_portfolio.pdf) for full documentation.

---

## 📁 Folder Structure
```
dataviz-explorer-library/
├── .github/
│   └── FUNDING.yml
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
├── digital/
│   ├── tables/
│   │   ├── content_type.sql
│   │   ├── platform.sql
│   │   ├── digital_content.sql
│   │   ├── digital_loan.sql
│   │   ├── subscription_plan.sql
│   │   ├── subscription.sql
│   │   └── review.sql
│   ├── data/
│   │   └── digital_sample_data.sql
│   ├── queries/
│   │   ├── query1_content_type_platform.sql
│   │   ├── query2_active_digital_loans.sql
│   │   ├── query3_active_subscriptions.sql
│   │   ├── query4_avg_ratings.sql
│   │   └── query5_subscription_revenue.sql
│   └── dataviz_digital_library_portfolio.pdf
├── dataviz_library_portfolio.pdf
├── LICENSE
└── README.md
```

  🤝 Connect
- ❤️ Sponsor: [Support This Project](https://ko-fi.com/datavizexplorer)
- 🌐 Website: [DataViz Explorer](https://datavizexplorer.org/dir)
- 🔗 LinkedIn: [Noreen Lewis](https://linkedin.com/in/noreen-lewis-dve1)
