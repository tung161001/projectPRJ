CREATE DATABASE Booking_Hotel
go
	use Booking_Hotel
go
--drop database Booking_Hotel

go
	create table role(
	roleID int primary key identity(1,1),
	name varchar(200) not null unique,
	)

go
go 
	create table account(
	id int primary key identity(1,1),
	RoleID int foreign key references role(roleID) default(2),
	username varchar(200) not null unique ,
	password varchar(200) not null,
	phone varchar(20) not null unique,
	identityCard varchar(20) not null unique,
	createAt date default(getdate()),
	)
go

go
	create table quality(
	qualityID int primary key identity(1,1),
	name varchar(200),
	)
go


go 
	create table room(
	roomID int primary key identity(1,1),
	name varchar(200) not null unique ,
	qualityID int foreign key references quality(qualityID),
	bed int not null ,
	price int not null ,
	area int not null,
	image varchar(1000) not null,
	description varchar(1000) not null 
	)
go
go
	create table booking(
	userID int foreign key references account(id),
	roomID int foreign key references room(roomID),
	dateStart date not null,
	dateEnd date not null,
	)
go








-- query
	-- role
		insert into role(name)
		values('admin')
		insert into role(name)
		values('user')
	-- end role 
	-- quarity
		insert into quality(name)
		values('NORMAL')
		insert into quality(name)
		values('VIP')
	-- end quarity 

	-- account 
		insert into account(RoleID,username,password,phone,identityCard)
		values(1,'thang@123','123','1234567892','012342')
		insert into account(RoleID,username,password,phone,identityCard)
		values(2,'tung@123','123','123456789112','0123412')
		insert into account(RoleID,username,password,phone,identityCard)
		values(2,'tuyet@123','123','12345678911112','01234112')
		select id , username, password , phone,identityCard from account where username = 'thang' and password = '123'
	-- end account 
	-- room
		insert into room(name,qualityID,bed,price,area,image,description)
		values('A1',1,2,1000,500,'img/room/room-1.jpg','ghsgajhdgshdgsa')
		insert into room(name,qualityID,bed,price,area,image,description)
		values('A2',2,4,2000,550,'img/room/room-2.jpg','ghsgajhdgshdgsa')
		insert into room(name,qualityID,bed,price,area,image,description)
		values('A3',1,2,3000,440,'img/room/room-3.jpg','ghsgajhdgshdgsa')
		insert into room(name,qualityID,bed,price,area,image,description)
		values('B1',2,2,4400,532,'img/room/room-4.jpg','ghsgajhdgshdgsa')
		insert into room(name,qualityID,bed,price,area,image,description)
		values('B2',1,3,5500,123,'img/room/room-5.jpg','ghsgajhdgshdgsa')


		select roomID , name ,qualityID,bed , price, image,description from room
	-- end room 

	-- booking 
		insert into booking(userID,roomID,dateStart,dateEnd)
		values(2,1,'12/22/2022','12/25/2022')
		insert into booking(userID,roomID,dateStart,dateEnd)
		values(2,1,'12/22/2022','12/25/2022')
		insert into booking(userID,roomID,dateStart,dateEnd)
		values(2,1,'12/22/2022','12/25/2022')
		insert into booking(userID,roomID,dateStart,dateEnd)
		values(2,1,'12/15/2022','12/19/2022')
		select userID, roomID, dateStart, dateEnd from booking 
		select userID, roomID, dateStart, dateEnd from booking where roomID = 2  
		select r.roomID,r.name,r.qualityID,r.bed,r.image,r.description from 
		booking as b right join room as r on b.roomID = r.roomID
		where dateStart is null or ((b.dateStart not between  '2022-12-22' and '2022-12-24') 
		and (b.dateEnd not between  '2022-12-22' and '2022-12-24'))  


		select * from booking where roomID = 1
	-- end booking 


-- end query


select * from account



