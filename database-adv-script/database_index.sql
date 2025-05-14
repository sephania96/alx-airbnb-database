-- Index creation script for performance optimization

-- User Table Indexes
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_id ON User(user_id);

-- Booking Table Indexes
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Property Table Index
CREATE INDEX idx_property_host ON Property(host_id);

-- Sample EXPLAIN ANALYZE usage for performance verification
EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 'uuid';
EXPLAIN ANALYZE SELECT * FROM Property WHERE host_id = 'uuid';