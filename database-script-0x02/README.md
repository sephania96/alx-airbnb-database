# 🌱 Airbnb Clone Sample Data

This directory contains SQL scripts to seed the Airbnb Clone database with sample data for development and testing purposes.

## 📁 Files

- `seed.sql` — Populates the database with example users, properties, bookings, payments, reviews, and messages.

## 📊 Seed Data Overview

| Table     | Sample Entries |
|-----------|----------------|
| **User**      | Alice (host), Bob (guest) |
| **Property**  | Cozy Cabin, Downtown Loft |
| **Booking**   | Bob books Cozy Cabin |
| **Payment**   | Payment via credit card |
| **Review**    | 5-star review by Bob |
| **Message**   | Message sent from Bob to Alice |

## 🧪 Usage

To load the seed data into your database:

```sql
-- Example for MySQL CLI:
SOURCE database-script-0x02/seed.sql;
```

Ensure that your schema (see `database-script-0x01/schema.sql`) has already been applied before running this script.

## 📌 Notes

- UUIDs are fixed for consistency and testing.
- Timestamps default to `CURRENT_TIMESTAMP` for realistic creation times.
- Useful for testing APIs, queries, or building frontend prototypes.
