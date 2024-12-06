import pyodbc
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from sqlalchemy import text
from sqlalchemy import create_engine
# -------------------------------------------------------------------------------------------------------
drivers = [driver for driver in pyodbc.drivers() if 'SQL Server' in driver]
print(drivers)
engine = create_engine('mssql+pyodbc://DESKTOP-1FRNGIF/Final_Project?driver=ODBC+Driver+17+for+SQL+Server')
connection = engine.connect()
connection.close()
connection=engine.connect()
# -------------------------------------------------------------------------------------------------------
# =======================================================================================================
# Line Charts
# =======================================================================================================
# Chart 1 => Total Sales over Time

Sales_over_time1='''select MONTH(o.Order_Date) as Month, YEAR(o.Order_Date) as Year , SUM(o.Total_Due) Total_Sales
from Orders o 
group by MONTH(o.Order_Date),YEAR(o.Order_Date)
having YEAR(o.Order_Date)=2024 and MONTH(o.Order_Date)!=10'''

Sales_over_time2='''select MONTH(o.Order_Date) as Month, YEAR(o.Order_Date) as Year , SUM(o.Total_Due) as Total_Sales
from Orders o 
group by MONTH(o.Order_Date),YEAR(o.Order_Date)
having YEAR(o.Order_Date)=2025'''


df_1=pd.read_sql_query(Sales_over_time1,connection)
df_2=pd.read_sql_query(Sales_over_time2,connection)
df1=pd.DataFrame(df_1)
df2=pd.DataFrame(df_2)

plt.title('Total Sales per Month') 
plt.plot(df1['Month'], df1['Total_Sales'], marker='o',label="2024")
plt.xlabel('Month')
plt.ylabel('Total Sales')
plt.legend()

plt.plot(df2['Month'], df2['Total_Sales'], marker='o',label="2025")
plt.xlabel('Month')
plt.ylabel('Total Sales')
plt.legend()
plt.grid()

plt.show()
# -------------------------------------------------------------------------------------------------------
# Chart 2 => Total Returns over Month

# Returns_over_Months1='''select MONTH(r.Return_Date) as Month , count(r.Ret_ID) Total_Returns
# from Returns r 
# group by MONTH(r.Return_Date)'''

# df_1=pd.read_sql_query(Returns_over_Months1,connection)
# df1=pd.DataFrame(df_1)


# plt.title('Total Returns per Month') 
# plt.plot(df1['Month'], df1['Total_Returns'], marker='o',color='r',label="2024")
# plt.xlabel('Month')
# plt.ylabel('Total Returns')
# plt.legend()
# plt.grid()
# plt.show()
# -------------------------------------------------------------------------------------------------------
# Chart 3 => Support_Ticket Handeling


# Support_Ticket1='''select MONTH(sp.Support_Date) as Month, YEAR((sp.Support_Date)) as Year , count(sp.Support_ID) as Num_of_Support_Tickets
# from support_ticket sp 
# group by MONTH(sp.Support_Date),YEAR(sp.Support_Date)
# having YEAR(sp.Support_Date)=2024 and MONTH(sp.Support_Date)!=10  '''

# Support_Ticket2='''select MONTH(sp.Support_Date) as Month, YEAR((sp.Support_Date)) as Year , count(sp.Support_ID) as Num_of_Support_Tickets
# from support_ticket sp 
# group by MONTH(sp.Support_Date),YEAR(sp.Support_Date)
# having YEAR(sp.Support_Date)=2025'''


# df_1=pd.read_sql_query(Support_Ticket1,connection)
# df_2=pd.read_sql_query(Support_Ticket2,connection)
# df1=pd.DataFrame(df_1)
# df2=pd.DataFrame(df_2)

# plt.title('Total Customer Complaints') 
# plt.plot(df1['Month'], df1['Num_of_Support_Tickets'], marker='o',label="2024", color='red')
# plt.xlabel('Month')
# plt.ylabel('Total Customer Complaints')
# plt.legend()

# plt.plot(df2['Month'], df2['Num_of_Support_Tickets'], marker='o',label="2025",color='green')
# plt.xlabel('Month')
# plt.ylabel('Total Customer Complaints')
# plt.legend()
# plt.grid()

# plt.show()
# -------------------------------------------------------------------------------------------------------
# Chart 4 => Product Performance


# Product_Performance1='''SELECT 
#     YEAR(o.Order_Date) AS Year, 
#     MONTH(o.Order_Date) AS Month, 
#     SUM(op.Qty) AS Total_Products_Sold
# FROM 
#     Orders o
# INNER JOIN 
#     Order_Product op ON o.Order_ID = op.Order_ID
# WHERE 
#     o.Order_Status = 'Delivered' 
#     AND (YEAR(o.Order_Date) = 2024)
# GROUP BY 
#     YEAR(o.Order_Date), 
#     MONTH(o.Order_Date)
# ORDER BY 
#     Year, Month;  '''

# Product_Performance2='''
# SELECT 
#     YEAR(o.Order_Date) AS Year, 
#     MONTH(o.Order_Date) AS Month, 
#     SUM(op.Qty) AS Total_Products_Sold
# FROM 
#     Orders o
# INNER JOIN 
#     Order_Product op ON o.Order_ID = op.Order_ID
# WHERE 
#     o.Order_Status = 'Delivered' 
#     AND (YEAR(o.Order_Date) = 2025)
# GROUP BY 
#     YEAR(o.Order_Date), 
#     MONTH(o.Order_Date)
# ORDER BY 
#     Year, Month;'''


# df_1=pd.read_sql_query(Product_Performance1,connection)
# df_2=pd.read_sql_query(Product_Performance2,connection)
# df1=pd.DataFrame(df_1)
# df2=pd.DataFrame(df_2)


# plt.title('Total Products Sold per Month') 
# plt.plot(df1['Month'], df1['Total_Products_Sold'], marker='o',label="2024", color='red')
# plt.xlabel('Month')
# plt.ylabel('Total Products')
# plt.legend()

# plt.plot(df2['Month'], df2['Total_Products_Sold'], marker='o',label="2025",color='green')
# plt.xlabel('Month')
# plt.ylabel('Total Products')
# plt.legend()
# plt.grid()

# plt.show()
# -------------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------------
# =======================================================================================================
# Bar Charts
# =======================================================================================================
# Chart 1 => Best 8 salespersons 



# Best_salespersons1='''SELECT top(8)
#     s.SP_Name,
#     COUNT(o.Order_ID) AS Delivered_Orders,
#     SUM(o.Total_Due) AS Total_Sales
# FROM 
#     Orders o
# JOIN 
#     Sales_person s ON o.SP_ID = s.SP_ID
# WHERE 
#     o.Order_Status = 'Delivered' and year(o.Order_Date)=2024  -- Adjust the status as per your database's conventions
# GROUP BY 
#     s.SP_Name
# ORDER BY 
#     Total_Sales DESC'''

# Best_salespersons2='''SELECT top(8)
#     s.SP_Name,
#     COUNT(o.Order_ID) AS Delivered_Orders,
#     SUM(o.Total_Due) AS Total_Sales
# FROM 
#     Orders o
# JOIN 
#     Sales_person s ON o.SP_ID = s.SP_ID
# WHERE 
#     o.Order_Status = 'Delivered' and year(o.Order_Date)=2025  -- Adjust the status as per your database's conventions
# GROUP BY 
#     s.SP_Name
# ORDER BY 
#     Total_Sales DESC'''


# df_1=pd.read_sql_query(Best_salespersons1,connection)
# df_2=pd.read_sql_query(Best_salespersons2,connection)
# df1=pd.DataFrame(df_1)
# df2=pd.DataFrame(df_2)


# plt.subplot(2,1,1)
# plt.title('Best Salespersons') 
# plt.bar(df1['SP_Name'], df1['Total_Sales'],label=2024,color='red')
# plt.ylabel('Total Sales')
# plt.legend()


# plt.subplot(2,1,2)
# plt.bar(df2['SP_Name'], df2['Total_Sales'],label=2025,color='green')
# plt.xlabel("Salesperson's Name")
# plt.ylabel('Total Sales')
# plt.legend()
# plt.show()
# -------------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------------
# =======================================================================================================
# Pie Charts
# =======================================================================================================
# Chart 1 => Percentage of Deliverd , Cancelled , Pending orders in 2024 and 2025

# Percentage1='''select count(o.Order_ID) as Num_of_Orders , o.order_status , YEAR(o.Order_Date) as Year
# from Orders o
# group by  o.order_status, YEAR(o.Order_Date)
# having YEAR(o.Order_Date)='2024' '''


# Percentage2='''select count(o.Order_ID) as Num_of_Orders , o.order_status , YEAR(o.Order_Date) as Year
# from Orders o
# group by  o.order_status, YEAR(o.Order_Date)
# having YEAR(o.Order_Date)='2025' '''



# df_1=pd.read_sql_query(Percentage1,connection)
# df_2=pd.read_sql_query(Percentage2,connection)
# df1=pd.DataFrame(df_1)
# df2=pd.DataFrame(df_2)


# pie_chart1_per=np.array(df1['Num_of_Orders'])
# pie_chart2_per=np.array(df2['Num_of_Orders'])
# x=[]
# y=[]


# for per1,per2 in zip(pie_chart1_per,pie_chart2_per):
#     x.append((per1/pie_chart1_per.sum()*100))
#     y.append((per2/pie_chart2_per.sum()*100))


# z1 = np.array(x)
# z2 = np.array(y)
# plt.subplot(1,2,1)
# mylabels = ["Cancelled", "Delivered", "Pending"]   
# myexplode = [0, 0.2, 0]                             
# mycolors = ["red", "green", "yellow"]
# plt.pie(z1, labels = mylabels,explode=myexplode,shadow = True, colors = mycolors,autopct="%1.2f%%", wedgeprops = {'edgecolor': 'black'})  
# plt.legend(title = "2024")

# plt.subplot(1,2,2)
# plt.pie(z2, labels = mylabels,explode=myexplode,shadow = True ,colors = mycolors,autopct="%1.2f%%", wedgeprops = {'edgecolor': 'black'})  
# plt.legend(title = "2025")
# plt.show()
# -------------------------------------------------------------------------------------------------------
# Chart 2 => Feedback Rating

# Feedback1='''SELECT f.FB_Rating, COUNT(o.Order_ID) AS Num_of_Orders
# FROM Feedback f
# INNER JOIN Orders o ON o.Order_ID = f.Order_ID
# WHERE o.order_status = 'Delivered' 
# AND YEAR(o.Order_Date) = 2024
# GROUP BY f.FB_Rating'''

# Feedback2='''SELECT f.FB_Rating, COUNT(o.Order_ID) AS Num_of_Orders
# FROM Feedback f
# INNER JOIN Orders o ON o.Order_ID = f.Order_ID
# WHERE o.order_status = 'Delivered' 
# AND YEAR(o.Order_Date) = 2025
# GROUP BY f.FB_Rating'''


# df_1=pd.read_sql_query(Feedback1,connection)
# df1=pd.DataFrame(df_1)
# df_2=pd.read_sql_query(Feedback2,connection)
# df2=pd.DataFrame(df_2)


# Feedback1_per=np.array(df1['Num_of_Orders'])
# x=[]

# Feedback2_per=np.array(df2['Num_of_Orders'])
# y=[]

# for per1 in Feedback1_per:
#     x.append((per1/Feedback1_per.sum()*100))

# z1 = np.array(x)

# for per2 in Feedback2_per:
#     y.append((per2/Feedback2_per.sum()*100))

# z1 = np.array(x)
# z2 = np.array(y)

# plt.subplot(1,2,1)
# mylabels1 = ["1","2","3","4","5","6","7","8","9","10"]
# plt.pie(z1, labels = mylabels1,shadow = False,autopct="%1.2f%%", wedgeprops = {'edgecolor': 'black'})  
# plt.legend(title=f'{Feedback1_per.sum()} delivered orders in 2024')   

# plt.subplot(1,2,2)
# plt.pie(z2, labels = mylabels1,shadow = False,autopct="%1.2f%%", wedgeprops = {'edgecolor': 'black'})  
# plt.legend(title=f'{Feedback2_per.sum()} delivered orders in 2025')   
# plt.show()
# -------------------------------------------------------------------------------------------------------
# Chart 3 =>  Customer Segment


# Customer_Segment='''select s.Seg_Name ,count(c.Cus_ID) as Num_of_cus
# from Customer_Info c inner join
# Customer_Segment cs 
# on c.Cus_ID=cs.Cus_ID
# inner join Segment s on cs.Seg_ID=s.Seg_ID
# group by s.Seg_Name'''

# df_1=pd.read_sql_query(Customer_Segment,connection)
# df1=pd.DataFrame(df_1)
# Segment_per=np.array(df1['Num_of_cus'])
# x=[]
# for per1 in Segment_per:
#     x.append((per1/Segment_per.sum()*100))

# z1 = np.array(x)
# # mylabels = df1['Seg_Name']
# plt.title("Percentage of Customers per Segment")                              
# plt.pie(z1,shadow = False,autopct="%1.2f%%", wedgeprops = {'edgecolor': 'black'})  
# plt.legend(df1['Seg_Name'])   
# plt.show()
# -------------------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------------------


