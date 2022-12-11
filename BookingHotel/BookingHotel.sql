CREATE DATABASE Booking_Hotel
go
	use Booking_Hotel
go


go 
	create table account(
	id int primary key identity(1,1),
	username varchar(200) not null unique ,
	password varchar(200) not null,
	phone varchar(20) not null unique,
	identityCard varchar(20) not null unique,
	createAt date default(getdate()),
	)
go










-- query
	-- account 
		insert into account(username,password,phone,identityCard)
		values('thang','123','123456789','01234')

		select id , username, password , phone,identityCard from account where username = 'thang' and password = '123'
	-- end account 


-- end query