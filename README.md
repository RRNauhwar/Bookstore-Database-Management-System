# Bookstore Database Management System

SQL project for managing an Online Bookstore using PostgreSQL. Covers database design, data import, and analytical queries.

## Database Schema

| Table | Description | Records |
|-------|-------------|---------|
| Books | Book details - title, author, genre, price, stock | 500+ |
| Customers | Customer info - name, email, city, country | 200+ |
| Orders | Order transactions with quantity and total amount | 200+ |

## Project Structure

```
├── Bookstore_Schema_Setup.sql   # Database & table creation + data import
├── Bookstore_Queries.sql        # All SQL queries (Basic + Advanced)
├── Books.csv                    # Books dataset
├── Customers.csv                # Customers dataset
├── Orders.csv                   # Orders dataset
└── README.md
```

## How to Run

1. Install PostgreSQL
2. Run `Bookstore_Schema_Setup.sql` to create the database and tables
3. Update the CSV file paths in the COPY commands
4. Import the data
5. Run queries from `Bookstore_Queries.sql`

## Queries Covered

**Basic** - Filter by genre, year, price, date range, aggregations (SUM, COUNT, AVG), sorting

**Advanced** - JOINs, GROUP BY with HAVING, revenue analysis, stock management, customer spending analysis

## Author

Rahul Chaudhary
