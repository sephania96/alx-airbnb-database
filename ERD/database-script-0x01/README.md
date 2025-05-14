# 🗃️ Airbnb Clone Database Schema

This directory contains the SQL Data Definition Language (DDL) script for creating the relational database structure of the Airbnb Clone project.

## 📁 Files

- `schema.sql` — Contains SQL `CREATE TABLE` statements for all core entities.

## 🧱 Database Overview

This schema defines a normalized relational structure that supports:
- User authentication and roles
- Property listings and ownership
- Booking management and status tracking
- Payments with method and amount
- Property reviews and ratings
- Messaging between users

## 🧩 Entity Relationships

- **User** can be a guest, host, or admin
- **User** (host) owns multiple **Properties**
- **User** (guest) makes multiple **Bookings** and **Reviews**
- **Booking** is associated with one **Property** and one **User**
- **Payment** links to **Booking**
- **Message** links sender → recipient (both **Users**)

## 🔐 Constraints & Indexing

- All primary keys are UUIDs
- Foreign key constraints ensure relational integrity
- `CHECK` constraints for enum-like fields (`role`, `status`, `payment_method`, `rating`)
- Indexed fields for performance: `email`, `property_id`, `booking_id`, etc.

## 🚀 Usage

To set up the schema in a MySQL or PostgreSQL database:

```sql
-- Example: in MySQL CLI
SOURCE database-script-0x01/schema.sql;
```

Or run using your preferred SQL IDE (DBeaver, TablePlus, etc.).

## 📈 ERD Reference

For full structure, see the ER diagram:

![ERD](../airbnb_erd.png)

## 📌 Requirements

- SQL engine: MySQL 8+ or PostgreSQL 13+
- UUID support must be enabled

## 🧠 Author Notes

Designed in full compliance with 3NF normalization.
Built to simulate a production-quality Airbnb-like backend system.