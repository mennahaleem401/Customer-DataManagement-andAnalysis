create schema Customer_schema
create schema Salesperson_schema

alter schema Salesperson_schema transfer AddOrderWithProducts
alter schema Customer_schema transfer HandleFeedback
alter schema Customer_schema transfer HandleSupportTicket
alter schema Customer_schema transfer HandleCustomerReturn