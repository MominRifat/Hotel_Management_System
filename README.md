<div align="center">

# 🏨 Hotel Management System — SQL & Database Architecture

[![Microsoft SQL Server](https://img.shields.io/badge/Database-MS_SQL_Server-CC292B?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)](https://www.microsoft.com/en-us/sql-server)
[![TSQL](https://img.shields.io/badge/Language-T--SQL-blue?style=for-the-badge&logo=databricks&logoColor=white)](#)
[![Relational DB](https://img.shields.io/badge/Architecture-3NF_Relational-success?style=for-the-badge&logo=postgresql&logoColor=white)](#)
[![Documentation](https://img.shields.io/badge/Docs-Complete_SRS_%26_ERD-orange?style=for-the-badge&logo=readthedocs&logoColor=white)](#)

<p align="center">
  <b>A comprehensive, enterprise-grade relational database solution and management system for hotels.</b>
  <br />
  Designed with strict relational integrity, normalized schemas, and end-to-end workflows for reservations, guest tracking, room allocations, and billing.
</p>

---

</div>

## 📌 Executive Summary

The **Hotel Management System (HMS)** is a robust database architecture designed to eliminate operational bottlenecks in hospitality operations. It manages the complete guest lifecycle from room check-in to invoicing and checkout while enforcing ACID compliance and foreign key constraints across all relational entities.

---

## 🗄️ Relational Entity-Relationship (ER) Model

```mermaid
erDiagram
    CUSTOMER ||--o{ BOOKING : places
    ROOM_TYPE ||--|{ ROOM : categorizes
    ROOM ||--o{ BOOKING : "allocated to"
    BOOKING ||--|| PAYMENT : settles
    EMPLOYEE ||--o{ BOOKING : processes

    CUSTOMER {
        int customer_id PK
        string full_name
        string email
        string phone_number
        string nid_or_passport
        string address
    }

    ROOM_TYPE {
        int type_id PK
        string type_name
        decimal price_per_night
        int capacity
        string description
    }

    ROOM {
        int room_number PK
        int type_id FK
        string status
        int floor_number
    }

    BOOKING {
        int booking_id PK
        int customer_id FK
        int room_number FK
        int employee_id FK
        datetime check_in_date
        datetime check_out_date
        decimal total_amount
        string booking_status
    }

    PAYMENT {
        int payment_id PK
        int booking_id FK
        datetime payment_date
        decimal amount_paid
        string payment_method
        string transaction_status
    }

    EMPLOYEE {
        int employee_id PK
        string name
        string role
        string phone
        decimal salary
    }
```

---

## 🔄 Core Operational Workflow

```mermaid
flowchart LR
    A["👤 Guest Arrival / Inquiry"] --> B["🔎 Room Availability & Type Check"]
    B --> C["📝 Customer Registration & ID Check"]
    C --> D["🔑 Room Allocation & Booking Confirmation"]
    D --> E["💳 Billing & Payment Settlement"]
    E --> F["🛎️ Check-in / Service Active"]
    F --> G["🚪 Check-out & Room Cleaning Flag"]
```

---

## 📁 Repository Contents

| File | Purpose |
| :--- | :--- |
| `Hotel_Management_System_Table.sql` | DDL script defining tables, primary keys, foreign keys, and default constraints |
| `Hotel_Management_System_Data.sql` | DML script providing rich seed records for rooms, customer dummy data, and bookings |
| `Hotel_Management_System(ER).png` | High-resolution visual Entity-Relationship diagram |
| `Schema(Hotel_Management_System).png` | Relational table schema blueprint showing inter-table keys |
| `Hotel Management System.docx / .pdf` | Full academic/technical project specification and requirements documentation |

---

## ⚡ Database Setup & Execution

### 1. Requirements
- **SQL Server Management Studio (SSMS)**, **Azure Data Studio**, or any standard ANSI SQL runner.

### 2. Step-by-Step Installation
Execute the scripts in strict sequence to respect foreign-key hierarchies:

1. **Create Database & Tables (DDL):**
   ```sql
   CREATE DATABASE HotelManagementDB;
   GO
   USE HotelManagementDB;
   GO
   ```
   *Run all commands in `Hotel_Management_System_Table.sql`.*

2. **Insert Initial & Seed Data (DML):**
   *Run all commands in `Hotel_Management_System_Data.sql`.*

3. **Verify Installation:**
   ```sql
   SELECT r.room_number, rt.type_name, r.status, rt.price_per_night 
   FROM ROOM r 
   JOIN ROOM_TYPE rt ON r.type_id = rt.type_id;
   ```

---

## 👨‍💻 Author

**Momin Rifat**  
- GitHub: [@MominRifat](https://github.com/MominRifat)  
- Location: Dhaka, Bangladesh
