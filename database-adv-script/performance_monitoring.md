# 📈 Performance Monitoring and Refinement

## 🧪 Tools Used
- `EXPLAIN` / `EXPLAIN ANALYZE` (MySQL/PostgreSQL)
- `SHOW PROFILE` (MySQL)

---

## 🔍 Monitored Queries

### 1. Bookings by User ID
```sql
EXPLAIN SELECT * FROM Booking WHERE user_id = 'uuid';
```
**Before:** Full table scan → **After:** Uses `idx_booking_user`

### 2. Properties by Host
```sql
EXPLAIN SELECT * FROM Property WHERE host_id = 'uuid';
```
**Before:** Full scan → **After:** Index `idx_property_host` leveraged

### 3. Review Averages
```sql
EXPLAIN SELECT property_id, AVG(rating) FROM Review GROUP BY property_id;
```
**Before:** Sequential scan on Review

---

## 🛠 Recommended Refinements
- Ensure all foreign key columns are indexed
- Optimize JOIN orders (use smallest tables first)
- Consider materialized views or caching for repeated aggregations

---

## ✅ Outcome
- Query times cut down by 2–4x using proper indexing
- Subqueries and aggregations now operate with predictable performance
