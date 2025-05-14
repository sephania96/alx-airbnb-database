-- Non-Correlated Subquery: Properties with average rating > 4.0
SELECT property_id, name
FROM Property
WHERE property_id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

-- Correlated Subquery: Users with more than 3 bookings
SELECT user_id, first_name, last_name
FROM User u
WHERE (
    SELECT COUNT(*)
    FROM Booking b
    WHERE b.user_id = u.user_id
) > 3;
