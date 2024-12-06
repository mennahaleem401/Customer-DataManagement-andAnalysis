create table payment_method
(
	pay_id int primary key identity(1,1),
	pay_type varchar(50) check(pay_type in ('Credit','InstaPay','Wallet','Cash') ),
	Card_Num varchar(50),
	Expiration_Date Date
);
alter table payment_method
drop column Card_Num
alter table payment_method
drop column Expiration_Date

create table support_ticket
(
	Support_ID int primary key not null,
	Support_Date Date not null,
	Support_Issue varchar(50) not null,
	Support_Status varchar(50) check(Support_Status in ('Open','In progress','Resolved','Closed')),
	Cus_ID int,
	constraint support_ticket_fk1 foreign key (Cus_ID) 
	references Customer_Info(Cus_ID)
);


create table Customer_Info 
(
	Cus_ID int primary key identity(1,1),
	Cus_Name varchar(50) not null,
	Cus_Address varchar(50) not null,
	Cus_DOB date not null,
	Cus_Phone varchar(50) not null,
	Cus_Email varchar(50) not null,
	Referrer_ID int,
	constraint Customer_Info_fk1 foreign key (Referrer_ID) 
	references Customer_Info(Cus_ID)

);

create table Orders
(
	Order_ID int primary key identity(1,1),
	Order_Date date not null,
	order_status varchar(50) check(order_status in ('Pending', 'Delivered', 'Cancelled')),
	Ship_Date Date not null,
	Cus_ID int,
	Pay_ID int,
	SP_ID int,
	constraint Orders_fk1 foreign key (Cus_ID) 
	references Customer_Info(Cus_ID),
	constraint Orders_fk2 foreign key (Pay_ID) 
	references [dbo].[payment_method]([pay_id]),
	constraint Orders_fk3 foreign key (SP_ID) 
	references [dbo].[Sales_person]([SP_ID])
);

alter table Orders
add Total_Price int
alter table Orders
add Tax_Amount int not null
alter table Orders
add Freight int not null
alter table Orders
add Total_Due as (isnull(Total_Price,0)+Tax_Amount+Freight) persisted
alter table Orders
add Card_Num varchar(50)
alter table Orders
add	Expiration_Date Date
Create table Segment
(
	Seg_ID int primary key identity(1,1),
	Seg_Name varchar(50) not null,
	Seg_Criteria varchar(200) not null
);

create table Referral
(
	Ref_ID int primary key identity(1,1),
	Ref_Discount varchar(50) not null,
	Ref_Date Date not null,
	Cus_ID int ,
	constraint Referral_fk1 foreign key (Cus_ID) 
	references Customer_Info(Cus_ID)
);

create table Category
(
	Cat_ID int primary key identity(1,1),
	Cat_Name varchar(50) not null
);

create table Employee
(
	Emp_ID int primary key identity(1,1),
	Emp_Name varchar(50) not null
);

Create table Sales_person
(
	SP_ID int primary key identity(1,1),
	SP_Name varchar(50) not null,
	Emp_ID int,
	constraint Sales_person_fk1 foreign key (Emp_ID) 
	references Employee(Emp_ID)
);
alter table sales_person
add Phone_Number varchar(50) not null
create table Product
(
	Product_ID int primary key identity(1,1),
	Product_Name varchar(50) not null,
	Product_Desc varchar(200),
	Product_Price int not null,
	Stock_Qty int,
	Cat_ID int,
	constraint Product_fk1 foreign key (Cat_ID) 
	references Category(Cat_ID)
);

alter table Product
drop column Stock_Qty
alter table Product
add Product_Qty int default 0

create table Shipping_Address 
(
	Sh_ID int primary key identity(1,1),
	Sh_Country varchar(50) not null,
	Sh_State varchar(50) not null,
	Sh_City varchar(50) not null,
	Sh_Street varchar(50) not null,
	Postal_Code varchar(50) not null
);

create table Feedback
(
	FB_ID int primary key identity(1,1),
	FB_Rating int check(FB_Rating between 0 and 10),
	FB_Comment varchar(200),
	FB_Date date not null,
	Cus_ID int,
	Order_ID int,
	constraint Feedback_fk1 foreign key (Cus_ID) 
	references [dbo].[Customer_Info](Cus_ID),
	constraint Feedback_fk2 foreign key (Order_ID) 
	references [dbo].[Orders]([Order_ID])
);

create table customer_payment
(
	Cus_ID int foreign key references [dbo].[Customer_Info](Cus_ID),
	Pay_ID int foreign key references [dbo].[payment_method]([pay_id])
);
alter table customer_payment
add Card_Num varchar(50)
alter table customer_payment
add	Expiration_Date Date
create table Customer_Segment
(
	Cus_ID int foreign key references [dbo].[Customer_Info](Cus_ID),
	Seg_ID int foreign key references [dbo].[Segment]([Seg_ID]),
);

create table Customer_Shipping
(
	Cus_ID int foreign key references [dbo].[Customer_Info](Cus_ID),
	Sh_ID int foreign key references [dbo].[Shipping_Address]([Sh_ID]),
);

create table Order_Product
(
	Order_ID int foreign key references [dbo].[Orders]([Order_ID]),
	Product_ID int foreign key references [dbo].[Product]([Product_ID]),
	Qty int not null
);
create table Returns
(
	Ret_ID int primary key identity(1,1),
	Reason varchar(200),
	Return_Date Date,
	Order_ID int foreign key references [dbo].[Orders]([Order_ID]),
	Product_ID int foreign key references [dbo].[Product]([Product_ID]),
	
);

drop table customer_payment


alter table Orders
drop column [Card_Num]

alter table Orders
drop column [Expiration_Date]

alter table Orders
add Payment_Info varchar(100)




