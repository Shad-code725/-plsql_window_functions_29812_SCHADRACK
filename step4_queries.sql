-- INNER JOIN: Customers & Bookings
SELECT c.customer_id, c.name, b.booking_id, b.amount_paid
FROM Customers c
INNER JOIN Bookings b
ON c.customer_id = b.customer_id;

-- LEFT JOIN: Flights & Bookings
SELECT f.flight_id, f.route, b.booking_id, b.amount_paid
FROM Flights f
LEFT JOIN Bookings b
ON f.flight_id = b.flight_id;

-- RIGHT JOIN: Flights & Bookings
SELECT f.flight_id, f.route, b.booking_id, b.amount_paid
FROM Flights f
RIGHT JOIN Bookings b
ON f.flight_id = b.flight_id;
