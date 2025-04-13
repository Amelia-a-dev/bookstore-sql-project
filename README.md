# Bookstore Database Project

This project involves designing and implementing a relational database system for a bookstore using MySQL. It is a group project aimed at demonstrating database design, normalization, SQL scripting, and schema documentation.

---

## Tools Used

- **DB Fiddle** – Used initially for schema creation, testing, and validation.  
- **MySQL** – For creating and managing the database.  
- **Draw.io** – For designing the ERD (Entity Relationship Diagram).  
- **GitHub** – For version control and collaboration.

---

## Key Features

- Structured relational schema including:
  - Customers
  - Authors
  - Books
  - Orders
  - Payments
  - Order Details
  - Categories
- Well-defined **primary and foreign keys**.
- Proper use of **data types** and **constraints** to ensure data integrity.
- Modular script for creating the full schema (`bookstore_schema.sql`).
- Insert scripts to populate realistic sample data (`insert_data.sql`).
- Query tests to validate functionality (`test_queries.sql`).

---

## Entity Relationship Diagram (ERD)

You can view the ERD for this bookstore database using the link below 
https://drive.google.com/file/d/1yy_vcQNhQZ1V9M-VOHVAcioSs165Jgew/view?usp=drivesdk

---

## How to Use

1. Clone this repository or download the `.sql` files.
2. Open MySQL Workbench or any SQL environment.
3. Run the `bookstore_schema.sql` script to create all tables.
4. Execute the `insert_data.sql` script to populate the tables.
5. Optionally, run the `test_queries.sql` file to validate and analyze the data.

---

## Test Data & Validation

The database has been thoroughly tested using SELECT queries to ensure it functions as intended.  
**Lulo**, our tester, executed a variety of queries (see `test_queries.sql`) using **MySQL Workbench** to verify data accuracy, integrity, and relationships across tables.

---

## Contributors

- **Amelia Zitha** – *Role 1: Database Designer*  
Email: zithaamelia69@gmail.com
GitHub account: https://github.com/Amelia-a-dev
  Created the ERD, defined table structures (keys, constraints, datatypes), and documented the schema.

- **Katleho Sebusi** – *Role 2: Data Engineer*  
Email: katlehosebusi1402@gmail.com
GitHub account: https://github.com/KatlehoChi
 Wrote and executed the insert queries to populate the database with realistic data.

- **Lulo Moyo** – *Role 3: Tester & Data Analyst*  
Email: lulomoyo15@gmail.com
GitHub account: https://github.com/lulomoyo
  Ran queries to verify the database schema and correctness of data. Confirmed functionality in MySQL Workbench.

---

## License

This project is for educational purposes only.
