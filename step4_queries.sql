-- INNER JOIN: Customers & Bookings
SELECT c.customer_id, c.name, b.booking_id, b.amount_paid
FROM Customers c
INNER JOIN Bookings b
ON c.customer_id = b.customer_id;
