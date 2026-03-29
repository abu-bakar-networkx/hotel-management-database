use hotel;

-- 1) Hotel 
insert into hotel.hotel (hotelId, name, address, city, country, postalCode, email, phone, rating) values
(1, 'City Center Hotel', 'Main St 1', 'Brussels', 'Belgium', '10001', 'info1@hotel.com', '+32-100-0001', 4.50),
(2, 'Grand Palace Hotel', 'Palace Rd 5', 'Bruges', 'Belgium', '10002', 'info2@hotel.com', '+32-100-0002', 4.20),
(3, 'Airport Inn', 'Airport Ave 12', 'Charleroi', 'Belgium', '10003', 'info3@hotel.com', '+32-100-0003', 3.80),
(4, 'Seaside Resort', 'Beach Blvd 7', 'Ostend', 'Belgium', '10004', 'info4@hotel.com', '+32-100-0004', 4.70),
(5, 'Mountain View Lodge', 'Hill Rd 3', 'Spa', 'Belgium', '10005', 'info5@hotel.com', '+32-100-0005', 4.10),
(6, 'Business Hotel North', 'Office Park 10', 'Antwerp', 'Belgium', '10006', 'info6@hotel.com', '+32-100-0006', 3.90),
(7, 'Old Town Suites', 'Old St 14', 'Ghent', 'Belgium', '10007', 'info7@hotel.com', '+32-100-0007', 4.30),
(8, 'Riverside Hotel', 'River Rd 22', 'Liege', 'Belgium', '10008', 'info8@hotel.com', '+32-100-0008', 3.70),
(9, 'Budget Stay', 'Station Sq 9', 'Namur', 'Belgium', '10009', 'info9@hotel.com', '+32-100-0009', 3.20),
(10, 'Luxury Palace', 'Royal Ave 1', 'Brussels', 'Belgium', '10010', 'info10@hotel.com', '+32-100-0010', 4.90),
(11, 'City Lodge', 'Market St 6', 'Mons', 'Belgium', '10011', 'info11@hotel.com', '+32-100-0011', 3.60),
(12, 'Canal View Hotel', 'Canal St 4', 'Bruges', 'Belgium', '10012', 'info12@hotel.com', '+32-100-0012', 4.00),
(13, 'Conference Inn', 'Expo Rd 2', 'Antwerp', 'Belgium', '10013', 'info13@hotel.com', '+32-100-0013', 4.25),
(14, 'Parkside Hotel', 'Park Ln 8', 'Ghent', 'Belgium', '10014', 'info14@hotel.com', '+32-100-0014', 3.85),
(15, 'Harbor Hotel', 'Harbor St 11', 'Ostend', 'Belgium', '10015', 'info15@hotel.com', '+32-100-0015', 4.40);

-- 2) EMPLOYEES 
insert into hotel.employee (employeeId, hotelId, firstName, lastName, email, role, phone, status, employeeCode) values
(1, 1, 'Alice', 'Smith', 'alice.smith@hotel.com', 'Manager', '+32-200-0001', 'Active', 'EMP001'),
(2, 1, 'Bob', 'Johnson', 'bob.johnson@hotel.com', 'Receptionist', '+32-200-0002', 'Active', 'EMP002'),
(3, 2, 'Carol', 'Williams', 'carol.williams@hotel.com', 'Housekeeper', '+32-200-0003', 'Active', 'EMP003'),
(4, 2, 'David', 'Brown', 'david.brown@hotel.com', 'Concierge', '+32-200-0004', 'Active', 'EMP004'),
(5, 3, 'Emma', 'Jones', 'emma.jones@hotel.com', 'Receptionist', '+32-200-0005', 'Active', 'EMP005'),
(6, 3, 'Frank', 'Garcia', 'frank.garcia@hotel.com', 'Housekeeper', '+32-200-0006', 'Active', 'EMP006'),
(7, 4, 'Grace', 'Miller', 'grace.miller@hotel.com', 'Manager', '+32-200-0007', 'Active', 'EMP007'),
(8, 4, 'Henry', 'Davis', 'henry.davis@hotel.com', 'Housekeeper', '+32-200-0008', 'Active', 'EMP008'),
(9, 5, 'Ivy', 'Rodriguez', 'ivy.rodriguez@hotel.com', 'Receptionist', '+32-200-0009', 'Active', 'EMP009'),
(10, 6, 'Jack', 'Martinez', 'jack.martinez@hotel.com', 'Housekeeper', '+32-200-0010', 'Active', 'EMP010'),
(11, 7, 'Karen', 'Hernandez', 'karen.hernandez@hotel.com', 'Concierge', '+32-200-0011', 'Active', 'EMP011'),
(12, 8, 'Leo', 'Lopez', 'leo.lopez@hotel.com', 'Housekeeper', '+32-200-0012', 'Inactive', 'EMP012'),
(13, 9, 'Mia', 'Gonzalez', 'mia.gonzalez@hotel.com', 'Receptionist', '+32-200-0013', 'Active', 'EMP013'),
(14, 10, 'Noah', 'Wilson', 'noah.wilson@hotel.com', 'Manager', '+32-200-0014', 'Active', 'EMP014'),
(15, 11, 'Olivia', 'Anderson', 'olivia.anderson@hotel.com', 'Housekeeper', '+32-200-0015', 'Active', 'EMP015');

-- 3) GUESTS 
insert into guest (guestId, firstName, lastName, email, phone, country, idCardNumber, loyaltyNumber, hotelId) values
(1, 'Thomas', 'Clark', 'thomas.clark@example.com', '+32-300-0001', 'Belgium', 'ID10001', 'LOY1001', 1),
(2, 'Sophia', 'Lewis', 'sophia.lewis@example.com', '+32-300-0002', 'France', 'ID10002', 'LOY1002', 1),
(3, 'Liam', 'Walker', 'liam.walker@example.com', '+32-300-0003', 'Germany', 'ID10003', 'LOY1003', 2),
(4, 'Ava', 'Hall', 'ava.hall@example.com', '+32-300-0004', 'Netherlands', 'ID10004', 'LOY1004', 2),
(5, 'Mason', 'Allen', 'mason.allen@example.com', '+32-300-0005', 'Belgium', 'ID10005', null, 3),
(6, 'Isabella', 'Young', 'isabella.young@example.com', '+32-300-0006', 'Spain', 'ID10006', null, 3),
(7, 'James', 'King', 'james.king@example.com', '+32-300-0007', 'Italy', 'ID10007', 'LOY1007', 4),
(8, 'Charlotte', 'Wright', 'charlotte.wright@example.com', '+32-300-0008', 'Belgium', 'ID10008', 'LOY1008', 5),
(9, 'Benjamin', 'Scott', 'benjamin.scott@example.com', '+32-300-0009', 'Belgium', 'ID10009', null, 6),
(10, 'Amelia', 'Green', 'amelia.green@example.com', '+32-300-0010', 'UK', 'ID10010', 'LOY1010', 7),
(11, 'Lucas', 'Baker', 'lucas.baker@example.com', '+32-300-0011', 'Belgium', 'ID10011', null, 8),
(12, 'Mila', 'Adams', 'mila.adams@example.com', '+32-300-0012', 'France', 'ID10012', 'LOY1012', 9),
(13, 'Ethan', 'Nelson', 'ethan.nelson@example.com', '+32-300-0013', 'Germany', 'ID10013', null, 10),
(14, 'Ella', 'Carter', 'ella.carter@example.com', '+32-300-0014', 'Belgium', 'ID10014', 'LOY1014', 11),
(15, 'Logan', 'Mitchell', 'logan.mitchell@example.com', '+32-300-0015', 'Italy', 'ID10015', null, 12);

-- 4) RESERVATIONS 
insert into reservation (reservationId, guestId, hotelId, bookingDate, checkInDate, checkOutDate, status, paymentStatus, reservationCode) values
(1, 1, 1, '2025-01-01', '2025-01-05', '2025-01-07', 'CheckedOut', 'Paid', 'RES0001'),
(2, 2, 1, '2025-01-10', '2025-01-12', '2025-01-15', 'CheckedOut', 'Paid', 'RES0002'),
(3, 3, 2, '2025-02-01', '2025-02-05', '2025-02-08', 'CheckedOut', 'Paid', 'RES0003'),
(4, 4, 2, '2025-02-10', '2025-02-15', '2025-02-18', 'CheckedOut', 'Paid', 'RES0004'),
(5, 5, 3, '2025-03-01', '2025-03-05', '2025-03-06', 'CheckedOut', 'Paid', 'RES0005'),
(6, 6, 3, '2025-03-10', '2025-03-12', '2025-03-14', 'CheckedOut', 'Paid', 'RES0006'),
(7, 7, 4, '2025-04-01', '2025-04-05', '2025-04-09', 'CheckedOut', 'Paid', 'RES0007'),
(8, 8, 5, '2025-04-10', '2025-04-12', '2025-04-16', 'CheckedOut', 'Paid', 'RES0008'),
(9, 9, 6, '2025-05-01', '2025-05-04', '2025-05-07', 'CheckedOut', 'Pending', 'RES0009'),
(10, 10, 7, '2025-05-10', '2025-05-15', '2025-05-18', 'CheckedOut', 'Pending', 'RES0010'),
(11, 11, 8, '2025-06-01', NULL, NULL, 'Cancelled', 'Unpaid', 'RES0011'),
(12, 12, 9, '2025-06-10', NULL, NULL, 'Booked', 'Pending', 'RES0012'),
(13, 13, 10, '2025-07-01', '2025-07-05', '2025-07-08', 'Booked', 'Pending', 'RES0013'),
(14, 14, 11, '2025-07-10', NULL, NULL, 'Booked', 'Pending', 'RES0014'),
(15, 15, 12, '2025-08-01', NULL, NULL, 'Cancelled', 'Unpaid', 'RES0015');

-- 5) PAYMENTS 
insert into payment (paymentId, reservationId, paymentDate, amount, paymentMethod, status, transactionNumber) values
(1, 1, '2025-01-07', 250.00, 'Credit Card', 'Completed', 500001),
(2, 2, '2025-01-15', 450.00, 'Credit Card', 'Completed', 500002),
(3, 3, '2025-02-08', 300.00, 'Cash', 'Completed', 500003),
(4, 4, '2025-02-18', 520.00, 'Credit Card', 'Completed', 500004),
(5, 5, '2025-03-06', 120.00, 'Debit Card', 'Completed', 500005),
(6, 6, '2025-03-14', 180.00, 'Credit Card', 'Completed', 500006),
(7, 7, '2025-04-09', 600.00, 'Credit Card', 'Completed', 500007),
(8, 8, '2025-04-16', 420.00, 'Cash', 'Completed', 500008),
(9, 9, '2025-05-07', 310.00, 'Credit Card', 'Pending', 500009),
(10, 10, '2025-05-18', 390.00, 'Debit Card', 'Pending', 500010),
(11, 1, '2025-01-07', 50.00, 'Cash', 'Completed', 500011),  -- extra mini-charge
(12, 3, '2025-02-08', 80.00, 'Credit Card', 'Completed', 500012),
(13, 5, '2025-03-06', 30.00, 'Cash', 'Completed', 500013),
(14, 8, '2025-04-16', 60.00, 'Credit Card', 'Completed', 500014),
(15, 12, '2025-06-14', 200.00, 'Credit Card', 'Pending', 500015);

-- 6) INVOICES 
insert into invoice (invoiceId, reservationId, issueDate, totalAmount, taxAmount, discountAmount, description, paymentMethod, invoiceNumber) values
(1, 1, '2025-01-07', 300.00, 30.00, 0.00, 'Room + breakfast', 'Credit Card', 'INV0001'),
(2, 2, '2025-01-15', 450.00, 45.00, 0.00, 'Room only', 'Credit Card', 'INV0002'),
(3, 3, '2025-02-08', 380.00, 38.00, 10.00, 'Room + spa', 'Cash', 'INV0003'),
(4, 4, '2025-02-18', 520.00, 52.00, 0.00, NULL , 'Credit Card', 'INV0004'),
(5, 5, '2025-03-06', 150.00, 15.00, 20.00, 'Weekend stay', 'Debit Card', 'INV0005'),
(6, 6, '2025-03-14', 220.00, 22.00, 0.00, 'Business travel', 'Credit Card', 'INV0006'),
(7, 7, '2025-04-09', 600.00, 60.00, 0.00, 'Suite + services', 'Credit Card', 'INV0007'),
(8, 8, '2025-04-16', 480.00, 48.00, 0.00, 'Family stay', 'Cash', 'INV0008'),
(9, 9, '2025-05-07', 310.00, 31.00, 0.00, NULL , 'Credit Card', 'INV0009'),
(10, 10, '2025-05-18', 390.00, 39.00, 0.00, 'City break', 'Debit Card', 'INV0010'),
(11, 3, '2025-02-08', 50.00, 5.00, 0.00, 'Mini-bar', 'Cash', 'INV0011'),
(12, 6, '2025-03-14', 40.00, 4.00, 0.00, 'Room service', 'Credit Card', 'INV0012'),
(13, 8, '2025-04-16', 60.00, 6.00, 0.00, 'Parking', 'Cash', 'INV0013'),
(14, 12, '2025-06-14', 200.00, 20.00, 0.00, 'Advance invoice', 'Credit Card', 'INV0014'),
(15, 13, '2025-07-08', 500.00, 50.00, 50.00, 'Package booking', 'Credit Card', 'INV0015');

-- 7) SERVICES (15)
insert into hotel.service (serviceId, name, category, price, isActive, serviceCode) values
(1, 'Room Service Breakfast', 'Food & Beverage', 20.00, 1, 'SRV001'),
(2, 'Room Service Dinner', 'Food & Beverage', 35.00, 1, 'SRV002'),
(3, 'Spa Access', 'Wellness', 50.00, 1, 'SRV003'),
(4, 'Airport Shuttle', 'Transport', 30.00, 1, 'SRV004'),
(5, 'Laundry Service', 'Housekeeping', 15.00, 1, 'SRV005'),
(6, 'Mini-Bar Package', 'Food & Beverage', 25.00, 1, 'SRV006'),
(7, 'Conference Room Rental', 'Business', 120.00, 1, 'SRV007'),
(8, 'Parking', 'Transport', 10.00, 1, 'SRV008'),
(9, 'Late Check-out', 'Stay', 40.00, 1, 'SRV009'),
(10, 'Early Check-in', 'Stay', 35.00, 1, 'SRV010'),
(11, 'Gym Access', 'Wellness', 15.00, 1, 'SRV011'),
(12, 'City Tour', 'Leisure', 60.00, 1, 'SRV012'),
(13, 'Pet Fee', 'Other', 25.00, 1, 'SRV013'),
(14, 'Welcome Package', 'Other', 18.00, 1, 'SRV014'),
(15, 'Business Center Printing', 'Business', 5.00, 1, 'SRV015');

-- 8) SERVICE ORDERS (15) – 1-1 with reservation & service (due to UNIQUE constraints)
insert into serviceorder (serviceOrderId, reservationId, orderDate, quantity, status, serviceId) values
(1, 1, '2025-01-05', 2, 'Completed', 1),
(2, 2, '2025-01-12', 1, 'Completed', 2),
(3, 3, '2025-02-05', 1, 'Completed', 3),
(4, 4, '2025-02-15', 1, 'Completed', 4),
(5, 5, '2025-03-05', 3, 'Completed', 5),
(6, 6, '2025-03-12', 1, 'Completed', 6),
(7, 7, '2025-04-05', 1, 'Completed', 7),
(8, 8, '2025-04-12', 2, 'Completed', 8),
(9, 9, '2025-05-04', 1, 'Pending', 9),
(10, 10, '2025-05-15', 1, 'Pending', 10),
(11, 11, '2025-06-05', 1, 'Cancelled', 11),
(12, 12, '2025-06-12', 4, 'Pending', 12),
(13, 13, '2025-07-05', 1, 'Pending', 13),
(14, 14, '2025-07-12', 1, 'Pending', 14),
(15, 15, '2025-08-05', 1, 'Cancelled', 15);

-- 9) ROOM TYPES 
insert into roomtype (roomTypeId, hotelId, name, description, maxOccupancy, baseRate) values
(1, 1, 'Standard Single', 'Standard single room', '1', 80.00),
(2, 2, 'Standard Double', 'Standard double room', '2', 110.00),
(3, 3, 'Family Room', 'Family room with extra bed', '4', 150.00),
(4, 4, 'Suite', 'Sea-view suite', '3', 220.00),
(5, 5, 'Deluxe Double', 'Deluxe double with balcony', '2', 160.00),
(6, 6, 'Business Single', 'Business single with desk', '1', 100.00),
(7, 7, 'Business Double', 'Business double room', '2', 130.00),
(8, 8, 'Economy', 'Basic economy room', '2', 70.00),
(9, 9, 'Superior Double', 'Superior double with view', '2', 140.00),
(10, 10, 'Presidential Suite', 'Luxury presidential suite', '4', 400.00),
(11, 11, 'Standard Twin', 'Twin beds room', '2', 105.00),
(12, 12, 'Canal View Deluxe', 'Canal-view deluxe room', '2', 170.00),
(13, 13, 'Conference Suite', 'Suite near conference center', '3', 210.00),
(14, 14, 'Park View Room', 'Park-view room', '2', 135.00),
(15, 15, 'Harbor Suite', 'Suite with harbor view', '3', 230.00);

-- 10) ROOMS 
insert into room (roomId, roomNumber, hotelId, floor, beds, status, isSmoking, roomTypeId) values
(1, '101', 1, 1, 1, 'Available', 0, 1),
(2, '102', 1, 1, 1, 'Occupied', 0, 1),
(3, '201', 2, 2, 1, 'Available', 0, 2),
(4, '202', 2, 2, 2, 'Occupied', 0, 2),
(5, '301', 3, 3, 3, 'Available', 0, 3),
(6, '302', 3, 3, 2, 'Available', 1, 3),
(7, '401', 4, 4, 2, 'Available', 0, 4),
(8, '402', 4, 4, 2, 'Occupied', 0, 4),
(9, '501', 5, 5, 1, 'Available', 0, 5),
(10, '502', 5, 5, 2, 'Available', 0, 5),
(11, '601', 6, 6, 1, 'Available', 0, 6),
(12, '701', 7, 7, 2, 'Available', 0, 7),
(13, '801', 8, 8, 1, 'Available', 0, 8),
(14, '901', 9, 9, 2, 'Available', 0, 9),
(15, '1001', 10, 10, 3, 'Available', 0, 10);

-- 11) RESERVATION-ROOM
insert into reservationroom (reservationRoomId, reservationId, roomId, adults, children) values
(1, 1, 2, 1, 0),
(2, 2, 1, 2, 0),
(3, 3, 3, 2, 1),
(4, 4, 4, 2, 0),
(5, 5, 5, 2, 2),
(6, 6, 6, 1, 0),
(7, 7, 7, 2, 1),
(8, 8, 8, 2, 2),
(9, 9, 9, 1, 1),
(10, 10, 10, 2, 0),
(11, 11, 11, 1, 0),
(12, 12, 12, 2, 0),
(13, 13, 13, 2, 1),
(14, 14, 14, 2, 0),
(15, 15, 15, 2, 0);

-- 12) HOUSEKEEPING TASKS (15)
insert into housekeepingtask (housekeepingTaskId, roomId, employeeId, taskDate, taskType, status, priority, taskNumber) values
(1, 1, 3, '2025-01-05', 'Cleaning', 'Completed', 2, 7001),
(2, 2, 3, '2025-01-06', 'Cleaning', 'Completed', 2, 7002),
(3, 3, 6, '2025-02-05', 'Cleaning', 'Completed', 2, 7003),
(4, 4, 6, '2025-02-06', 'Cleaning', 'Pending', 3, 7004),
(5, 5, 8, '2025-03-05', 'Deep Cleaning', 'Completed', 1, 7005),
(6, 6, 8, '2025-03-06', 'Laundry Pickup', 'Completed', 3, 7006),
(7, 7, 10, '2025-04-05', 'Cleaning', 'Completed', 2, 7007),
(8, 8, 10, '2025-04-06', 'Turn-down Service', 'Completed', 2, 7008),
(9, 9, 12, '2025-05-05', 'Cleaning', 'Pending', 3, 7009),
(10, 10, 12, '2025-05-06', 'Cleaning', 'Completed', 2, 7010),
(11, 11, 15, '2025-06-05', 'Cleaning', 'Completed', 2, 7011),
(12, 12, 15, '2025-06-06', 'Laundry Pickup', 'Pending', 3, 7012),
(13, 13, 6, '2025-07-05', 'Cleaning', 'Completed', 2, 7013),
(14, 14, 8, '2025-07-06', 'Deep Cleaning', 'Pending', 1, 7014),
(15, 15, 10, '2025-08-05', 'Cleaning', 'Completed', 2, 7015);

-- 13) EMPLOYEE-TASK ASSIGNMENT (15) – associative entity
insert into employeetaskassignment (housekeepingTaskId, employeeId) values
(1, 3),
(2, 3),
(3, 6),
(4, 6),
(5, 8),
(6, 8),
(7, 10),
(8, 10),
(9, 12),
(10, 12),
(11, 15),
(12, 15),
(13, 6),
(14, 8),
(15, 10);