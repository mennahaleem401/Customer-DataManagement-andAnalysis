
create proc AddCustomer @Cus_Name varchar(50),@Cus_Address varchar(50),@cus_Dob date,@Cus_phone varchar(50),@Cus_Email varchar(50)
as
if @Cus_Name not in (select Cus_Name from Customer_Info)
begin
select 'You are added in the customer list'
	insert into [dbo].[Customer_Info] ([Cus_Name],[Cus_Address],[Cus_DOB],[Cus_Phone],[Cus_Email])
	values (@Cus_Name ,@Cus_Address ,@cus_Dob,@Cus_phone ,@Cus_Email )
end
else
begin
select 'You are already existed'
end




alter PROCEDURE Salesperson_schema.AddOrderWithProducts
    @Order_Date DATE,
    @order_status VARCHAR(50),
    @Ship_Date DATE,
    @Cus_ID INT,
    @Pay_ID INT,
    @SP_ID INT,
    @Tax_Amount INT,
    @Freight INT,
	@Pay_info varchar(100),
    @Products OrderProductType READONLY
AS
BEGIN
	if @Cus_ID in (select ci.Cus_ID from Customer_Info ci)
	begin
		DECLARE @Order_ID INT;

		-- Insert the order details
		DECLARE @Total_Price INT = 0;
        DECLARE @Product_Price INT;

        -- Calculate the total price of the order by summing up the price for each product
        SELECT @Total_Price = SUM(p.Qty * pr.Product_Price)
        FROM @Products p
        JOIN Product pr ON p.Product_ID = pr.Product_ID;

		INSERT INTO Orders (Order_Date, order_status, Ship_Date, Cus_ID, Pay_ID, SP_ID, Total_Price, Tax_Amount, Freight,[Payment_Info])
		VALUES (@Order_Date, @order_status, @Ship_Date, @Cus_ID, @Pay_ID, @SP_ID, @Total_Price, @Tax_Amount, @Freight,@Pay_info);

		-- Get the newly inserted Order_ID
		SET @Order_ID = SCOPE_IDENTITY();
		------------
		--declare @NumOfRows int = (select count(*) from @Products)
		--declare @i int =0
		--while @i < @NumOfRows
		--begin
			--declare @pid int,@pqty int= (select p.Product_ID,p.Qty from @Products p where )
			--set @i+=1
		--end
		------------
		-- Insert each product into the Order_Product table
		-- Check if the quantity in stock is sufficient for each product
        IF NOT EXISTS (
            SELECT 1
            FROM @Products p
            JOIN Product pr ON p.Product_ID = pr.Product_ID
            WHERE p.Qty > pr.Product_Qty
        )
        BEGIN
            -- Insert each product into the Order_Product table
            INSERT INTO Order_Product (Order_ID, Product_ID, Qty)
            SELECT @Order_ID, Product_ID, Qty
            FROM @Products;

            -- Update the product quantities in stock
            UPDATE pr
            SET pr.Product_Qty = pr.Product_Qty - p.Qty
            FROM Product pr
            JOIN @Products p ON pr.Product_ID = p.Product_ID;
        END
        ELSE
        BEGIN
            SELECT 'Insufficient stock for one or more products';
        END
    END
    ELSE
    BEGIN
        SELECT 'You are not in the customer list';
    END
END;
	
	

-- Call the stored procedure
CREATE TYPE OrderProductType AS TABLE
(
    Product_ID INT,
    Qty INT
);
DECLARE @Products OrderProductType;
INSERT INTO @Products (Product_ID, Qty)
VALUES (1, 1), (2, 1), (3, 1); -- Example product IDs and quantities
EXEC Salesperson_schema.AddOrderWithProducts
    @Order_Date = '2024-10-02',
    @order_status = 'Pending',
    @Ship_Date = '2024-10-05',
    @Cus_ID = 1,
    @Pay_ID = 1,
    @SP_ID = 1,
    @Tax_Amount = 100,
    @Freight = 50,
	@Pay_info='Card Num= 345632'
    @Products = @Products;



CREATE PROCEDURE Customer_schema.HandleCustomerReturn
@Order_ID INT,
@Product_ID INT,
@Reason VARCHAR(200),
@Return_Date DATE,
@Cus_id int
AS
BEGIN
	if @Product_ID in (select op.Product_ID from Order_Product op where op.Order_ID=@Order_ID) 
	and @Order_ID in (select o.Order_ID from Orders o where o.Cus_ID=@Cus_ID)
	begin
		-- Insert return details into the Returns table
		INSERT INTO Returns (Reason, Return_Date, Order_ID, Product_ID)
		VALUES (@Reason, @Return_Date, @Order_ID, @Product_ID);

		-- Update the product quantity in the Product table
		UPDATE Product
		SET Product_Qty = Product_Qty + 1
		WHERE Product_ID = @Product_ID;
	end
	else
	begin
		if @Product_ID not in (select op.Product_ID from Order_Product op where op.Order_ID=@Order_ID)
			select 'This product was not in your order '
		else if @Order_ID not in (select o.Order_ID from Orders o where o.Cus_ID=@Cus_ID)
			select 'This Order does not belong to you '
	end
END;
EXEC Customer_schema.HandleCustomerReturn
    @Order_ID = 1,
    @Product_ID = 45,
    @Reason = 'Defective product',
    @Return_Date = '2024-10-02',
	@Cus_id=12


CREATE PROCEDURE Customer_schema.HandleFeedback
    @FB_Rating INT,
    @FB_Comment VARCHAR(200),
    @Cus_ID INT,
    @Order_ID INT
AS
BEGIN
	if @Cus_ID in (select o.Cus_ID from Orders o where @Order_ID=o.Order_ID)
	begin
	declare @FB_Date DATE=getdate()
    -- Insert feedback details into the Feedback table
    INSERT INTO Feedback (FB_Rating, FB_Comment, FB_Date, Cus_ID, Order_ID)
    VALUES (@FB_Rating, @FB_Comment, @FB_Date, @Cus_ID, @Order_ID);
	end
	else
	select 'This order does not belong to you'
END;

alter PROCEDURE Customer_schema.HandleSupportTicket
    
    @Support_Issue VARCHAR(50),
    @Support_Status VARCHAR(50),
    @Cus_ID INT
AS
BEGIN
	declare @Support_Date DATE=getdate()
    -- Insert support ticket details into the Support_Ticket table
    INSERT INTO Support_Ticket (Support_Date, Support_Issue, Support_Status, Cus_ID)
    VALUES (@Support_Date, @Support_Issue, @Support_Status, @Cus_ID);
END;

-- Call the stored procedure to handle feedback
EXEC Customer_schema.HandleFeedback
    @FB_Rating = 8,
    @FB_Comment = 'Great service!',
    @Cus_ID = 1,
    @Order_ID = 1;
-- Call the stored procedure to handle a support ticket
EXEC Customer_schema.HandleSupportTicket
    @Support_Issue = 'Product not delivered',
    @Support_Status = 'Open',
    @Cus_ID = 1;

create view show_customers_inSegment (Segment_Name,Customer_Name)
as
select s.Seg_Name ,ci.Cus_Name
from Segment s inner join Customer_Segment cs
on s.Seg_ID=cs.Seg_ID inner join Customer_Info ci 
on ci.Cus_ID=cs.Cus_ID

alter table sales_person
drop constraint Sales_person_fk1
alter table sales_person
drop column Emp_ID
drop table Employee

alter view Sales_person_products
as
select sp.SP_Name , count(o.Order_ID) as 'Number of orders'
from Sales_person sp inner join Orders o 
on o.SP_ID =sp.SP_ID
group by sp.SP_Name

select * from Sales_person_products


alter proc Add_Customer_To_Segment @custid int,@segname varchar(50)
as
if @segname in (select s.Seg_Name from [dbo].[Segment] s) and
	@custid in (select ci.Cus_ID from Customer_Info ci)
begin 
	declare @segid int = (select s.Seg_ID from Segment s where Seg_Name=@segname)
	insert into Customer_Segment (Cus_ID,Seg_ID)
	values (@custid,@segid)
end
else
begin
	if @segname not in (select s.Seg_Name from [dbo].[Segment] s)
		select 'This segment does not exist'
	if @custid not in (select ci.Cus_ID from Customer_Info ci)
		select 'Customer does not exist'
end
Add_Customer_To_Segment 4,'ghhg'

ALTER TABLE Sales_person
ADD CONSTRAINT UQ_SalesPerson_Name UNIQUE (SP_Name);
ALTER TABLE Customer_Info
ADD CONSTRAINT UQ_Customer_Name UNIQUE (Cus_Name);

create proc Add_Salesperson @SP_Name varchar(50),@PhoneNum varchar(50)
as
if @SP_Name not in (select sp.SP_Name from Sales_person sp)
begin
	insert into Sales_person ([SP_Name],[Phone_Number])
	values(@SP_Name,@PhoneNum)
end
else
	select 'This Name Already Exists'

Add_Salesperson 'Ahmed','323121213'
delete from Sales_person where [SP_Name]='Ahmed'

CREATE PROCEDURE ChangeOrdersToSalesPerson
    @SP_ID INT,
    @Order_IDs VARCHAR(MAX)
AS
BEGIN
    if @SP_ID in (select sp.SP_ID from Sales_person sp) and
		@Order_IDs in (select o.Order_ID from Orders o)  
	begin
		update orders set SP_ID=@SP_ID
		where Order_ID=@Order_IDs
	end
	else
	begin 
		if @SP_ID not in (select sp.SP_ID from Sales_person sp)
			select 'Sales person does not exist'
		if @Order_IDs not in (select o.Order_ID from Orders o) 
			select 'Order does not exist'
	end
END;

ChangeOrdersToSalesPerson 8,500


create proc AddProduct @Pid int,@PName varchar(50),@PDesc varchar(200),@PPrice int,@CatID int,@PQty int
as
	if @Pid in (select p.Product_ID from Product p)
		update Product  set  [Product_Qty]=[Product_Qty]+@PQty 
		where [Product_ID]=@Pid
	else 
		insert into Product ([Product_ID],[Product_Name],[Product_Desc],[Product_Price],[Cat_ID],[Product_Qty])
		values (@Pid,@PName,@PDesc,@PPrice,@CatID,@PQty)

AddProduct 301,'ss','sasa',90,1,3
delete from Product  where  [Product_ID]=301


UPDATE [dbo].[Referral]
SET [Cus_ID] = (SELECT [Referrer_ID] FROM [dbo].[Customer_Info] WHERE [dbo].[Referral].[Ref_ID] = [dbo].[Customer_Info].[Cus_ID]);


CREATE PROCEDURE GetReferralsByDate
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SELECT 
        R.Ref_ID, 
        R.Ref_Discount, 
        R.Ref_Date, 
        CI.Cus_Name 
    FROM 
        Referral R
    INNER JOIN 
        Customer_Info CI ON R.Cus_ID = CI.Cus_ID
    WHERE 
        R.Ref_Date BETWEEN @StartDate AND @EndDate;
END;

GetReferralsByDate '2023-11-29','2024-01-17'


CREATE PROCEDURE UpdateOrderStatus
    @Order_ID INT,
    @New_Status VARCHAR(50)
AS
BEGIN
	if @Order_ID in (select o.Order_ID from orders o )
	begin
		UPDATE Orders
		SET Order_Status = @New_Status
		WHERE Order_ID = @Order_ID;
	end
	else 
		select 'This order does not exist'
END;

CREATE VIEW ProductOrderSummary AS
SELECT 
    P.Product_Name, 
    P.Product_Price, 
    COUNT(OP.Order_ID) AS Times_Ordered, 
    SUM(OP.Qty) AS Total_Quantity_Ordered
FROM 
    Product P
INNER JOIN 
    Order_Product OP ON P.Product_ID = OP.Product_ID
GROUP BY 
    P.Product_Name, P.Product_Price;

select * from ProductOrderSummary

CREATE VIEW CustomerReferrals AS
SELECT 
    CI.Cus_Name, 
    R.Ref_Discount, 
    R.Ref_Date
FROM 
    Customer_Info CI
INNER JOIN 
    Referral R ON CI.Cus_ID = R.Cus_ID;

select * from CustomerReferrals 

CREATE VIEW TopCustomersBySales AS
SELECT 
    CI.Cus_ID,
    CI.Cus_Name,
    SUM(O.Total_Due) AS Total_Sales
FROM 
    Orders O
INNER JOIN 
    Customer_Info CI ON O.Cus_ID = CI.Cus_ID
GROUP BY 
    CI.Cus_ID, CI.Cus_Name

select * from TopCustomersBySales
ORDER BY 
    Total_Sales DESC;

CREATE VIEW CustomerPurchaseHistory AS
SELECT 
    CI.Cus_ID,
    CI.Cus_Name,
    O.Order_ID,
    O.Order_Date,
    P.Product_Name,
    OP.Qty,
    P.Product_Price,
    (OP.Qty * P.Product_Price) AS Total_Price
FROM 
    Customer_Info CI
INNER JOIN 
    Orders O ON CI.Cus_ID = O.Cus_ID
INNER JOIN 
    Order_Product OP ON O.Order_ID = OP.Order_ID
INNER JOIN 
    Product P ON OP.Product_ID = P.Product_ID
select * from CustomerPurchaseHistory

CREATE VIEW FeedbackSummary AS
SELECT 
    CI.Cus_ID,
    CI.Cus_Name,
    F.FB_Rating,
    F.FB_Comment,
    F.FB_Date
FROM 
    Feedback F
INNER JOIN 
    Customer_Info CI ON F.Cus_ID = CI.Cus_ID;

select * from FeedbackSummary 

CREATE VIEW Support_Ticket_Summary AS
SELECT 
    CI.Cus_ID,
    CI.Cus_Name,
    [Support_Issue],
    [Support_Status],
    [Support_Date]
FROM 
    [dbo].[support_ticket] st
INNER JOIN 
    Customer_Info CI ON st.Cus_ID = CI.Cus_ID;

select * from Support_Ticket_Summary
order by [Support_Date] DESC

CREATE VIEW ReturnsDetails AS
SELECT 
    R.Ret_ID,
    R.Reason,
    R.Return_Date,
    CI.Cus_Name,
    P.Product_Name,
    O.Order_Date
FROM 
    Returns R
INNER JOIN 
	Product P ON R.Product_ID = P.Product_ID
INNER JOIN 
	Orders O ON R.Order_ID = O.Order_ID
INNER JOIN 
    Customer_Info CI ON O.Cus_ID = CI.Cus_ID

select * from ReturnsDetails
order by Order_Date DESC


UPDATE o
SET o.[Total_Price] = total_sum.Total_Price
FROM [dbo].[Orders] o
INNER JOIN (
    SELECT op.[Order_ID], SUM(op.[Qty] * p.[Product_Price]) AS Total_Price
    FROM [dbo].[Order_Product] op
    INNER JOIN [dbo].[Product] p ON op.[Product_ID] = p.[Product_ID]
    GROUP BY op.[Order_ID]
) AS total_sum ON o.[Order_ID] = total_sum.[Order_ID];


