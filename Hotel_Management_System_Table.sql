create database Hotel_Management_System
use [Hotel_Management_System]

create table Role 
( 
Role_ID int primary key, 
RoleType varchar(50) not null 
)

create table Hotel 
( 
Hotel_ID int primary key, 
Name varchar(100) not null, 
Address varchar(255), 
City varchar(100), 
Country varchar(100), 
ZIPCode varchar(20), 
Phone_No varchar(20), 
Email varchar(100)
)

create table Employee 
( 
Employee_ID int primary key, 
Role_ID int not null, 
Hotel_ID int not null, 
First_Name varchar(50) not null, 
Last_Name varchar(50), 
Salary decimal(10, 2), 
Phone_Number varchar(20), 
NID_No varchar(20) unique, 
foreign key (Role_ID) references Role(Role_ID), 
foreign key (Hotel_ID) references Hotel(Hotel_ID) 
)

create table Emp_Role 
( 
Role_ID int, 
Employee_ID int, 
Shift varchar(50), 
primary key (Role_ID, Employee_ID), 
foreign key (Role_ID) references Role(Role_ID), 
foreign key (Employee_ID) references Employee(Employee_ID) 
)

create table Guest 
( 
Guest_ID int primary key, 
First_Name varchaR(50) not null, 
Last_Name varchar(50), 
Phone_Number varchar(20), 
NID_No varchar(20) unique, 
Guest_Email varchar(100) 
)

create table RoomType 
( 
Type_ID int primary key, 
TypeName varchar(50) not null, 
Price_per_night decimal(10, 2) not null 
)

create table Room 
( 
Room_ID int primary key, 
Hotel_ID int not null, 
Room_No varchar(10) not null, 
Type_ID int not null, 
Status varchar(50), 
foreign key (Hotel_ID) references Hotel(Hotel_ID), 
foreign key (Type_ID) references RoomType(Type_ID), 
)

create table Booking 
( 
Booking_ID int, 
Guest_ID int not null, 
Hotel_ID int not null, 
Room_ID int not null, 
Check_in_Date date not null, 
Check_out_Date date not null, 
Booking_Status varchar(50),
primary key(Booking_ID,Guest_ID,Hotel_ID),
foreign key (Guest_ID) references Guest(Guest_ID), 
foreign key (Hotel_ID) references Hotel(Hotel_ID), 
foreign key (Room_ID) references Room(Room_ID) 
)

create table Payment 
( 
Payment_id int primary key, 
Guest_ID int not null, 
Payment_Date date not null, 
Payment_Amount decimal(10, 2) not null, 
Payment_Method varchar(50),
Status varchar(50),
Discount_Amount decimal(10, 2) default 0.00, 
foreign key (Guest_ID) references Guest(Guest_ID) 
)

create table Service 
( 
Service_id int primary key, 
Guest_id int not null, 
Hotel_id int not null, 
Service_Name varchar(100) not null, 
Service_Charge decimal(10, 2) not null, 
Details TEXT, 
foreign key (Guest_ID) references Guest(Guest_ID), 
foreign key (Hotel_ID) references Hotel(Hotel_ID) 
)