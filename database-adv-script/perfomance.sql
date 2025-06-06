-- Unoptimized complex query with filters and EXPLAIN
EXPLAIN SELECT b.booking_id, b.start_date, b.end_date, 
       u.user_id, u.first_name, u.last_name, 
       p.property_id, p.name, p.location, 
       pay.payment_id, pay.amount, pay.payment_method
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id
WHERE b.start_date >= '2024-01-01'
  AND p.location = 'New York';
