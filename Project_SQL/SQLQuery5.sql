select o.Order_ID,o.Total_Price,o.Tax_Amount,o.Freight,o.Total_Due,fb.FB_Rating,p.Product_Price,p.Product_Qty
	,p.Product_ID,fb.FB_ID,o.Cus_ID
from Orders o inner join Feedback fb 
on o.Order_ID=fb.Order_ID inner join Order_Product op
on op.Order_ID=o.Order_ID inner join Product p
on p.Product_ID=op.Product_ID

select date_id from date_dim
where order_date=date.dim.date

