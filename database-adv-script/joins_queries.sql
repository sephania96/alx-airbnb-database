-- INNER JOIN: Bookings and the respective users who made those bookings
SELECT b.booking_id, b.start_date, b.end_date, u.user_id, u.first_name, u.last_name
FROM Booking b
INNER JOIN User u ON b.user_id = u.user_id;

-- LEFT JOIN: All properties and their reviews (include properties with no reviews)
SELECT p.property_id, p.name, r.review_id, r.rating, r.comment
FROM Property p
LEFT JOIN Review r ON p.property_id = r.property_id;

-- FULL OUTER JOIN: All users and all bookings
-- For MySQL, simulate FULL OUTER JOIN using UNION of LEFT and RIGHT JOINs
SELECT u.user_id, u.first_name, b.booking_id, b.start_date
FROM User u
LEFT JOIN Booking b ON u.user_id = b.user_id
UNION
SELECT u.user_id, u.first_name, b.booking_id, b.start_date
FROM User u
RIGHT JOIN Booking b ON u.user_id = b.user_id;
