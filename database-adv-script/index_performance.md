# ⚡ Index Performance Report

## 🎯 Objective
Create indexes on high-frequency columns to optimize performance of SELECT, JOIN, and ORDER BY queries.

---

## 📌 Identified Columns

### User Table
- `email`: used for login
- `user_id`: used in joins with Booking, Review, Message

### Booking Table
- `user_id`, `property_id`: used in joins and filters
- `start_date`: useful for date range filtering (e.g. reporting, partitioning)

### Property Table
- `host_id`: used in filtering and listing user properties

---

## 🛠️ Index Commands
```sql
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_id ON User(user_id);
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_booking_start_date ON Booking(start_date);
CREATE INDEX idx_property_host ON Property(host_id);
```

---

## 🧪 Performance Testing

### Before Indexing (Sample EXPLAIN)
```sql
EXPLAIN SELECT * FROM Booking WHERE user_id = 'uuid';
-- Full table scan (type: ALL)
```

### After Indexing
```sql
EXPLAIN SELECT * FROM Booking WHERE user_id = 'uuid';
-- Uses index idx_booking_user (type: ref)
```

### Result
- Query execution reduced from full scan to indexed access
- Indexes improve speed on filters, joins, and aggregations involving these columns
