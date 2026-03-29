-- Basic Queries --
-- 1. Retrieve Active Employees with Formatted Names and Emails
SELECT DISTINCT 
 CONCAT(firstName, ' ', lastName) as Full_Name,
 LOWER(email) as Mail
FROM hotel.employee
WHERE status = 'Active';

-- 2. Filter Reservations by Hotel and Booking Date Range
SELECT 
 guestId, 
 bookingDate,
 YEAR(bookingDate) AS booking_year
FROM hotel.reservation 
WHERE hotelId IN (1, 2, 3)
AND bookingDate BETWEEN '2025-01-01' AND '2025-12-31'
ORDER BY bookingDate DESC;

-- Intermediate Queries --
-- 3. Calculate Invoice Tax and Handle Missing Descriptions
SELECT invoiceId, reservationId, totalAmount, 
 ROUND(totalAmount * 0.1, 2) as tax_amount,
 IFNULL(description, "No Description Added") as description
FROM hotel.invoice
WHERE totalAmount <> 0 
ORDER BY tax_amount DESC;

-- 4. Identify Guests Without Loyalty Membership
SELECT guestId,
 UPPER(firstName) as Name
FROM hotel.guest
WHERE loyaltyNumber IS NULL;

-- 5. Filter Employees Using Pattern Matching Conditions
SELECT employeeId, firstName, lastName
FROM hotel.employee
WHERE firstName LIKE 'J%' 
AND lastName NOT LIKE '%son'
ORDER BY firstName;

-- Join Queries -- 
-- 6. Retrieve Reservation Details with Guest Information 
SELECT 
 r.reservationId,
 r.reservationCode,
 g.firstName,
 g.lastName,
 r.checkInDate,
 r.checkOutDate
FROM reservation r
JOIN guest g 
 ON r.guestId = g.guestId;
 
-- 7. Analyze Completed Reservations with Invoice Data
SELECT
 r.reservationId,
 g.firstName,
 g.lastName,
 r.reservationCode,
 i.totalAmount,
 i.issueDate
FROM reservation r
JOIN guest g ON r.guestId = g.guestId
JOIN invoice i ON r.reservationId = i.reservationId
WHERE r.status = 'CheckedOut';

-- Advanced -- 
-- 8. Find Reservation Details Using a Single-Row Subquery
SELECT *
FROM hotel.reservation r
WHERE r.reservationId = (
 SELECT i.reservationId
 FROM hotel.invoice i
 WHERE i.invoiceId = 1
);

-- 9. Identify High-Spending Guests Using a Multi-Row Subquery
SELECT g.firstName, g.lastName
FROM hotel.guest g
WHERE g.guestId IN (
 SELECT r.guestId
 FROM hotel.reservation r
 JOIN hotel.payment p ON r.reservationId = p.reservationId
 WHERE p.amount > 500
);

-- 10. Retrieve Reservations with High-Value Invoices (Nested Subquery)
SELECT r.reservationCode, r.checkInDate, r.checkOutDate
FROM hotel.reservation r
WHERE r.reservationId IN (
 SELECT i.reservationId
 FROM hotel.invoice i
 WHERE i.totalAmount > 300
);

-- 11. Fetch Hotel Names Using a Subquery in SELECT Clause
SELECT r.reservationId,
 r.reservationCode,
 (
  SELECT h.name
  FROM hotel.hotel h
  WHERE h.hotelId = r.hotelId
 ) AS hotelName
FROM hotel.reservation r;

-- Analytical --
-- 12. Count Completed Housekeeping Tasks
SELECT COUNT(*) AS completed_housekeeping_tasks
FROM housekeepingtask
WHERE status = 'Completed';

-- 13. Find the Highest Invoice Amount Recorded
SELECT 
 i.invoiceId,
 i.totalAmount
FROM invoice i
WHERE i.totalAmount = (SELECT MAX(totalAmount) FROM invoice);

-- 14. Analyze Total Reservations and Revenue per Hotel
SELECT 
 r.hotelId,
 COUNT(r.reservationId) AS total_reservations,
 SUM(i.totalAmount) AS total_invoice_amount
FROM reservation r
JOIN invoice i ON r.reservationId = i.reservationId
GROUP BY r.hotelId;

-- 15. Evaluate Revenue Distribution by Payment Method
SELECT 
 h.name, 
 p.paymentMethod, 
 SUM(p.amount) AS Total_Amount_Received
FROM hotel h
JOIN reservation r ON h.hotelId = r.hotelId
JOIN payment p ON r.reservationId = p.reservationId
GROUP BY h.name, p.paymentMethod;