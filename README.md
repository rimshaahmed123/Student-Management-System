#  Student Management System (SQL Project)

##  Project Description

The **Student Management System** is a relational database project developed using **MySQL**. It is designed to efficiently manage and organize student-related information such as personal details, department assignments, and fee records.

This project demonstrates how structured databases are used in real-world systems to handle large amounts of data in an efficient, secure, and meaningful way.

---

##  Overview

This system uses a **relational database model** where multiple tables are connected using **primary keys** and **foreign keys**. The goal is to ensure:

* Data consistency
* Data integrity
* Reduced redundancy

The project shows how data from different tables can be combined using SQL queries to produce useful results, such as:

* Student details with department names
* Student fee payment status

It also reflects real-world use cases like school/college management systems.

---

##  Objectives

* To design a structured database system
* To understand relationships between tables
* To perform CRUD operations (Create, Read, Update, Delete)
* To practice SQL queries like JOIN, SELECT, and filtering
* To build a strong foundation in database management

---

##  Technologies Used

* MySQL
* SQL (Structured Query Language)

---

## 🗄️ Database Schema

###  Students Table

| Column Name | Data Type | Description          |
| ----------- | --------- | -------------------- |
| student_id  | INT (PK)  | Unique ID of student |
| name        | VARCHAR   | Student name         |
| age         | INT       | Student age          |
| gender      | VARCHAR   | Gender               |
| dept_id     | INT (FK)  | Department ID        |

---

###  Departments Table

| Column Name | Data Type | Description     |
| ----------- | --------- | --------------- |
| dept_id     | INT (PK)  | Department ID   |
| dept_name   | VARCHAR   | Department name |

---

###  Fees Table

| Column Name | Data Type | Description    |
| ----------- | --------- | -------------- |
| fee_id      | INT (PK)  | Fee record ID  |
| student_id  | INT (FK)  | Linked student |
| amount      | DECIMAL   | Fee amount     |
| status      | VARCHAR   | Paid / Unpaid  |

---

##  Relationships

* One **department** can have many students
* Each **student** belongs to one department
* One **student** can have multiple fee records
* Tables are connected through foreign keys

---

##  Key Features

* Store and manage student records
* Manage departments effectively
* Track fee payments
* Perform complex queries using JOIN
* Ensure data accuracy using constraints

---

##  Sample SQL Queries

###  Get Students with Departments

```sql id="x1a2b3"
SELECT s.name, d.dept_name
FROM students s
JOIN departments d ON s.dept_id = d.dept_id;
```

---

###  Get Students with Fee Details

```sql id="y7k9p2"
SELECT s.name, f.amount, f.status
FROM students s
JOIN fees f ON s.student_id = f.student_id;
```

---

###  Get Paid Students

```sql id="q2w3e4"
SELECT s.name, f.status
FROM students s
JOIN fees f ON s.student_id = f.student_id
WHERE f.status = 'Paid';
```

---

## ⚙️ Installation & Setup

### Step 1: Install MySQL

Download and install MySQL Workbench.

### Step 2: Create Database

```sql id="db001"
CREATE DATABASE StudentDB;
USE StudentDB;
```

### Step 3: Run Project File

* Open `student.sql`
* Execute the script in MySQL Workbench

---

##  Output

The system produces:

* Student information
* Department details
* Fee payment records

---

##  Future Improvements

* Add a graphical user interface (GUI)
* Connect with a frontend (React.js)
* Add authentication system
* Generate reports and analytics

---

##  Learning Outcomes

After completing this project, you will:

* Understand relational databases
* Write efficient SQL queries
* Design database schemas
* Work with real-world data scenarios

---



<img width="807" height="173" alt="Output" src="https://github.com/user-attachments/assets/7db0aed5-57c3-4dd4-88d2-20a0370b49fa" />

