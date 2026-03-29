drop table if exists hotel.employeetaskassignment;
drop table if exists hotel.housekeepingtask;
drop table if exists hotel.reservationroom;
drop table if exists hotel.room;
drop table if exists hotel.roomtype;
drop table if exists hotel.serviceorder;
drop table if exists hotel.payment;
drop table if exists hotel.invoice;
drop table if exists hotel.reservation;
drop table if exists hotel.guest;
drop table if exists hotel.employee;
drop table if exists hotel.service;
drop table if exists hotel.hotel;


drop schema if exists hotel;
create schema if not exists hotel;

use hotel;

create table if not exists hotel.hotel(
	hotelId int Primary Key,
    name varchar(40) Not Null,
    address varchar(80) Not Null,
    city varchar(40) Not Null, 
    country varchar(40) Not Null,
    postalCode varchar(40) Not Null Unique,
    email varchar(60) Not Null Unique,
    phone varchar(50) Not Null,
    rating decimal(3,2) Not Null
);

create table if not exists hotel.employee(
	employeeId int Primary Key,
    hotelId int Not Null,
    firstName varchar(50) Not Null,
	lastName varchar(50) Not Null,
    email varchar(60) Not Null Unique,
    role varchar(50) Not Null,
    phone varchar(50) Not Null,
    status varchar(50) Not Null,
    employeeCode varchar(40) Not Null Unique,
    CONSTRAINT FK_employee_hotel foreign key(hotelId) references hotel(hotelId)
    );
    
create table if not exists guest(
	guestId int Primary Key,
    firstName varchar(50) Not Null,
	lastName varchar(50) Not Null,
    email varchar(50) Not Null Unique, 
    phone varchar(50) Not Null,
    country varchar(40) Not Null,
    idCardNumber varchar(45) Not Null Unique,
    loyaltyNumber varchar(50) Unique,
    hotelId int Not Null,
    CONSTRAINT FK_guest_hotel foreign key(hotelId) references hotel(hotelId)
    );
    
create table if not exists reservation(
	reservationId int Primary Key,
    guestId int Not Null,
    hotelId int Not Null,
    bookingDate date Not NUll,
    checkInDate date,
    checkOutDate date,
    status varchar(50) Not Null,
    paymentStatus varchar(50) Not Null,
    reservationCode varchar(50) Not Null Unique,
    CONSTRAINT FK_reservation_hotel foreign key(hotelId) references hotel(hotelId),
    CONSTRAINT FK_reservation_guest foreign key(guestId) references guest(guestId)
);

create table if not exists payment(
	paymentId int Primary Key,
    reservationId int Not NUll,
    paymentDate date Not Null,
    amount decimal(10,2) Not Null,
    paymentMethod varchar(50) Not Null,
    status varchar(50) Not Null,
    transactionNumber int Not Null Unique,
    CONSTRAINT FK_payment_reservation foreign key(reservationId) references reservation(reservationId)
    );
    
create table if not exists invoice(
	invoiceId int Primary Key,
    reservationId int Not Null,
    issueDate date Not Null,
    totalAmount decimal(10,2) Not Null,
    taxAmount decimal (10,2) Not Null,
    discountAmount decimal(10,2),
    description varchar(120),
    paymentMethod varchar(50) Not Null,
    invoiceNumber varchar(60) Not Null Unique,
    CONSTRAINT FK_invoice_reservation foreign key(reservationId) references reservation(reservationId)
    );
    
create table if not exists hotel.service(
	serviceId int Primary Key,
    name varchar(60) Not Null Unique, 
    category varchar(50) Not Null,
    price decimal(10,2) Not Null,
    isActive bool Not Null,
    serviceCode varchar(50) Not Null Unique
);

create table if not exists serviceorder(
	serviceOrderId int Primary Key,
    reservationId int Not Null Unique,
    orderDate date Not Null,
    quantity int Not Null,
    status varchar(50) Not Null,
    serviceId int Not Null Unique
);

create table if not exists roomtype(
	roomTypeId int Primary Key,
    hotelId int Not Null Unique,
    name varchar(50) Not Null,
    description varchar(120),
    maxOccupancy varchar(50) Not Null,
    baseRate decimal(10,2) Not Null,
    CONSTRAINT FK_roomtype_hotel foreign key(hotelId) references hotel(hotelId)
);
    
create table if not exists room(
	roomId int Primary Key,
    roomNumber varchar(50) Not Null,
    hotelId int Not Null,
    floor int Not Null,
    beds int Not Null,
    status varchar(50) Not Null,
    isSmoking bool Not Null,
    roomTypeId int Not Null,
    CONSTRAINT UQ_room UNIQUE(roomNumber, hotelId),
    CONSTRAINT FK_room_hotel foreign key(hotelId) references hotel(hotelId),
    CONSTRAINT FK_room_roomtype foreign key(roomTypeId) references roomtype(roomTypeId)
);

create table if not exists reservationroom(
	reservationRoomId int Primary Key,
    reservationId int Not Null Unique,
    roomId int Not Null Unique,
    adults int Not Null,
    children int Not Null,
    CONSTRAINT FK_reservationroom_reservation foreign key(reservationId) references reservation(reservationId),
    CONSTRAINT FK_reservationroom_room foreign key(roomId) references room(roomId)
);

create table if not exists housekeepingtask(
	housekeepingTaskId int Primary Key,
    roomId int Not Null,
    employeeId int Not Null,
    taskDate date Not Null,
    taskType varchar(50) Not Null,
    status varchar(50) Not Null,
    priority int Not Null,
    taskNumber int Not Null Unique,
    CONSTRAINT FK_housekeepingtask_room foreign key(roomId) references room(roomId),
    CONSTRAINT FK_housekeepingtask_employee foreign key(employeeId) references employee(employeeId)
);

create table if not exists employeetaskassignment(
	housekeepingTaskId int Not Null,
    employeeId int Not Null,
    CONSTRAINT PK_employeetaskassignment primary key(housekeepingTaskId, employeeId),
    CONSTRAINT FK_employeetaskassignment_employee foreign key(employeeId) references employee(employeeId),
    CONSTRAINT FK_employeetaskassignment_housekeepingtask foreign key(housekeepingTaskId) references housekeepingTask(housekeepingTaskId)
);
