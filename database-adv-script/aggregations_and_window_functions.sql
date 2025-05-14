-- Aggregation: Total number of bookings by user
SELECT u.user_id, u.first_name, u.last_name, COUNT(b.booking_id) AS total_bookings
FROM User u
LEFT JOIN Booking b ON u.user_id = b.user_id
GROUP BY u.user_id;

-- Window Function: Rank properties by total number of bookings
SELECT property_id, name, total_bookings, RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
    SELECT p.property_id, p.name, COUNT(b.booking_id) AS total_bookings
    FROM Property p
    LEFT JOIN Booking b ON p.property_id = b.property_id
    GROUP BY p.property_id
) AS booking_counts;
