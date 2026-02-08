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

-- FULL OUTER JOIN: Flights & Bookings
SELECT f.flight_id, f.route, b.booking_id, b.amount_paid
FROM Flights f
FULL OUTER JOIN Bookings b
ON f.flight_id = b.flight_id;

-- SELF JOIN: Customers (find pairs with same city)

SELECT c1.customer_id AS customer_a_id,
c1.name AS customer_a_name,
c2.customer_id AS customer_b_id,
c2.name AS customer_b_name,
c1.region
FROM Customers c1
INNER JOIN Customers c2
  ON c1.region = c2.region
  AND c1.customer_id <> c2.customer_id;
