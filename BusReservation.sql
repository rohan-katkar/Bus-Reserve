create table route(
route_id int,
fare int,
origin varchar(20),
dest varchar(20),
primary key(route_id)
);

create table bus(
bus_id int,
seat_cnt numeric(2),
avail_seat numeric(2),
depart time,
arrive time,
r_id int,
primary key(bus_id),
foreign key (r_id) references route(route_id)
);

create table passenger(
pass_id serial,
fname char(40),
lname char(40),
mobile numeric(10),
email varchar(50),
primary key(pass_id)
);

create table reserve(
ticket_id serial,
seat_no int,
time_stamp time,
pass_name varchar(50),
b_id int,
travel_date date,
primary key(ticket_id),
foreign key (b_id) references bus(bus_id)
);

insert into route values
(101, 150, 'Nagpur', 'Chandrapur'),
(102, 185, 'Chandrapur', 'Yavatmal'),
(103, 150, 'Chandrapur', 'Nagpur'),
(104, 185, 'Yavatmal', 'Chandrapur'),
(105, 170, 'Nagpur', 'Yavatmal'),
(106, 170, 'Yavatmal', 'Nagpur'),
(107, 200, 'Pune', 'Nagpur'),
(108, 200, 'Nagpur', 'Pune'),
(109, 240, 'Pune', 'Chandrapur'),
(110, 240, 'Chandrapur', 'Pune'),
(111, 210, 'Pune', 'Yavatmal'),
(112, 210, 'Yavatmal', 'Pune');

insert into bus values
(1041, 30, 30, '8:30', '10:30', 101),
(1042, 30, 30, '9:30', '12:00', 102),
(1043, 30, 30, '10:30', '12:30', 103),
(1044, 30, 30, '11:30', '14:00', 104),
(1045, 30, 30, '12:30', '15:30', 105),
(1046, 30, 30, '13:30', '16:00', 106),
(1047, 30, 30, '14:30', '12:30', 107),
(1048, 30, 30, '15:30', '14:30', 108),
(1049, 30, 30, '16:30', '15:30', 109),
(1050, 30, 30, '17:30', '16:30', 110),
(1051, 30, 30, '18:30', '17:30', 111),
(1052, 30, 30, '19:30', '18:30', 112);

select * from bus;

select * from route;