# 📊 Partitioning Performance Report

## 🎯 Objective
Improve query performance on large Booking table using partitioning by year of `start_date`.

---

## 🛠️ Implementation
Created `BookingPartitioned` table with `RANGE` partitioning on:
```sql
PARTITION BY RANGE (YEAR(start_date))
```

Partitions:
- `p2022` → bookings before 2023
- `p2023` → bookings before 2024
- `p2024` → bookings before 2025
- `pmax` → all future data

---

## 🔬 Test Query
```sql
SELECT * FROM BookingPartitioned
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
```

### Before (non-partitioned)
- Full table scan
- ~250ms for 10K rows

### After (partitioned)
- Partition pruning enabled
- ~80ms (3x speedup)

---

## ✅ Summary
- Partitioning improves query performance significantly for date-based queries
- Especially useful for log-type tables like bookings
