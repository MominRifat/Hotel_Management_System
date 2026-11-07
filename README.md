<div align="center">

# 🏨 Hotel Management System — SQL & Relational Database Architecture

[![Database](https://img.shields.io/badge/Database-MS_SQL_Server-CC292B?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)](https://www.microsoft.com/en-us/sql-server)
[![Language](https://img.shields.io/badge/Query_Language-T--SQL-blue?style=for-the-badge&logo=databricks&logoColor=white)](#)
[![Normalization](https://img.shields.io/badge/Schema-3NF_Normalized-brightgreen?style=for-the-badge)](#)
[![Tooling](https://img.shields.io/badge/IDE-SSMS_%7C_Azure_Data_Studio-0078D4?style=for-the-badge&logo=visualstudiocode&logoColor=white)](#)
[![Documentation](https://img.shields.io/badge/Documentation-Complete_SRS_%26_ERD-orange?style=for-the-badge&logo=readthedocs&logoColor=white)](#)

<p align="center">
  <b>An enterprise-grade relational database management system (RDBMS) for hotel operations.</b>
  <br />
  Built with strict 3NF normalization, foreign key referential integrity, automated booking workflows, and room availability logic.
</p>

[📌 About the Project](#-about-the-project) • [🛠️ Tech Stack](#️-comprehensive-tech-stack) • [🗄️ ER Diagram](#️-relational-entity-relationship-er-diagram) • [🚀 How to Run](#-complete-how-to-run--installation-guide) • [📊 Verification Queries](#-verification--sample-analytical-queries)

---

</div>

## 📌 About the Project

In hospitality management, data inconsistencies, double-booking errors, and untracked room statuses cost hotels revenue and guest satisfaction. 

The **Hotel Management System (HMS)** provides a production-grade relational database architecture engineered with **Microsoft SQL Server (T-SQL)**. It enforces strict referential integrity across the entire guest lifecycle—from guest reservation, identity recording, and room assignment to service billing and checkout receipts.

---

## 🛠️ Comprehensive Tech Stack

| Domain | Technology | Spec / Standard | Purpose & Implementation |
| :--- | :--- | :--- | :--- |
| **RDBMS Engine** | **Microsoft SQL Server** | `2019 / 2022 / Express` | Relational storage engine with ACID compliance |
| **Language** | **Transact-SQL (T-SQL)** | ANSI SQL Extended | DDL schema definitions, DML seed records, stored logic |
| **Design Standard**| **3NF Normalization** | Relational Theory | Eliminates insertion, update, and deletion anomalies |
| **Management GUI** | **SSMS / Azure Studio**| Official MS Tooling | Script execution, execution plan inspection, index tuning |
| **Documentation** | **IEEE SRS Format** | Word (.docx) & PDF | Full business requirement specifications and architecture diagrams |

---

## 🗄️ Relational Entity-Relationship (ER) Diagram

```mermaid
erDiagram
    CUSTOMER ||--o{ BOOKING : "places reservation"
    ROOM_TYPE ||--|{ ROOM : "classifies"
    ROOM ||--o{ BOOKING : "assigned to"
    BOOKING ||--|| PAYMENT : "settled via"
    EMPLOYEE ||--o{ BOOKING : "processes"

    CUSTOMER {
        int customer_id PK "Auto-increment primary key"
        varchar full_name "Full guest name"
        varchar email "Unique contact email"
        varchar phone_number "Contact telephone"
        varchar nid_or_passport "Government identification ID"
        varchar address "Residential address"
    }

    ROOM_TYPE {
        int type_id PK "Room category ID"
        varchar type_name "Single / Double / Deluxe / Suite"
        decimal price_per_night "Base tariff per night"
        int capacity "Maximum guest headcount"
        varchar description "Amenities summary"
    }

    ROOM {
        int room_number PK "Unique room room number"
        int type_id FK "References ROOM_TYPE"
        varchar status "Available / Occupied / Maintenance"
        int floor_number "Building level"
    }

    BOOKING {
        int booking_id PK "Unique reservation record"
        int customer_id FK "References CUSTOMER"
        int room_number FK "References ROOM"
        int employee_id FK "References EMPLOYEE"
        datetime check_in_date "Arrival timestamp"
        datetime check_out_date "Departure timestamp"
        decimal total_amount "Total booking charge"
        varchar booking_status "Confirmed / Checked-in / Completed / Cancelled"
    }

    PAYMENT {
        int payment_id PK "Payment transaction ID"
        int booking_id FK "References BOOKING"
        datetime payment_date "Timestamp of transaction"
        decimal amount_paid "Total amount paid"
        varchar payment_method "Card / Cash / Mobile Banking"
        varchar transaction_status "Paid / Pending / Refunded"
    }

    EMPLOYEE {
        int employee_id PK "Staff identification number"
        varchar name "Staff name"
        varchar role "Receptionist / Manager / Concierge"
        varchar phone "Staff contact number"
        decimal salary "Monthly compensation"
    }
```

---

## 🔄 Guest Lifecycle Operational Workflow

```mermaid
flowchart LR
    A["👤 Guest Inquiry / Arrival"] --> B["🔎 Query Available Rooms & Rates"]
    B --> C["📝 Register Guest (Customer Record)"]
    C --> D["🔑 Assign Room & Create Booking (Status: Confirmed)"]
    D --> E["💳 Process Payment & Generate Receipt"]
    E --> F["🛎️ Check-in (Room Status -> Occupied)"]
    F --> G["🚪 Check-out & Inspection (Room Status -> Cleaning)"]
```

---

## 📂 Repository Contents

| File Name | Purpose |
| :--- | :--- |
| `Hotel_Management_System_Table.sql` | **DDL Script**: Creates database, schemas, primary keys, foreign keys, and constraints |
| `Hotel_Management_System_Data.sql` | **DML Script**: Seed script populating room categories, sample customers, bookings, and payments |
| `Hotel_Management_System(ER).png` | High-resolution visual Entity-Relationship model |
| `Schema(Hotel_Management_System).png`| Relational table schema diagram indicating foreign key links |
| `Hotel Management System.docx / .pdf` | Complete academic/professional documentation and requirements report |

---

## 🚀 Complete How-To-Run & Installation Guide

Follow these steps to deploy and execute the database on your local machine:

### 1. Prerequisites
- **Microsoft SQL Server** (2017 or higher, Developer / Express edition)
- **SQL Server Management Studio (SSMS)** or **Azure Data Studio** / **VS Code (mssql extension)**

---

### 2. Step-by-Step Setup in SSMS

#### Step 1: Open SSMS and Connect
- Launch **SQL Server Management Studio**.
- Connect to your SQL Server instance (e.g., `localhost` or `.\SQLEXPRESS`).

#### Step 2: Create the Database & Tables (DDL)
1. In SSMS, click **New Query** (or press `Ctrl + N`).
2. Open and paste the contents of `Hotel_Management_System_Table.sql`.
3. Click **Execute** (or press `F5`).
   ```sql
   -- This will create the database and all tables with foreign-key constraints
   CREATE DATABASE HotelManagementDB;
   GO
   USE HotelManagementDB;
   GO
   ```

#### Step 3: Populate Seed Data (DML)
1. Open a new query window.
2. Open and paste the contents of `Hotel_Management_System_Data.sql`.
3. Click **Execute** (`F5`).
   *(Data will be inserted into `ROOM_TYPE`, `ROOM`, `EMPLOYEE`, `CUSTOMER`, `BOOKING`, and `PAYMENT` in proper relational order).*

---

## 📊 Verification & Sample Analytical Queries

Once loaded, run these test queries to verify the installation:

```sql
USE HotelManagementDB;
GO

-- 1. Check all available rooms by room category
SELECT 
    r.room_number,
    rt.type_name,
    rt.price_per_night,
    r.status,
    r.floor_number
FROM ROOM r
JOIN ROOM_TYPE rt ON r.type_id = rt.type_id
WHERE r.status = 'Available';

-- 2. View active bookings with customer and payment status
SELECT 
    b.booking_id,
    c.full_name AS customer_name,
    c.phone_number,
    b.room_number,
    b.check_in_date,
    b.check_out_date,
    p.amount_paid,
    p.transaction_status
FROM BOOKING b
JOIN CUSTOMER c ON b.customer_id = c.customer_id
LEFT JOIN PAYMENT p ON b.booking_id = p.booking_id;
```

---

## 👨‍💻 Author

**Momin Rifat**  
- GitHub: [@MominRifat](https://github.com/MominRifat)  
- Focus: Database Systems, SQL Architecture & Software Engineering  
- Location: Dhaka, Bangladesh
