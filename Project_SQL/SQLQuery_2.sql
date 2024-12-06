SET IDENTITY_INSERT Returns on;

-- Inserting 100 customers with explicit Cus_ID values
--Good
INSERT INTO Customer_Info ( Cus_Name, Cus_Address, Cus_DOB, Cus_Phone, Cus_Email, Referrer_ID)
VALUES
('John Doe', '123 Main St', '1985-02-20', '123-456-7890', 'john.doe@example.com', 1),
('Jane Smith', '456 Maple Ave', '1990-05-15', '234-567-8901', 'jane.smith@example.com', 1),
('Robert Johnson', '789 Oak St', '1988-09-10', '345-678-9012', 'robert.johnson@example.com', 1),
('Emily Davis', '101 Pine St', '1992-11-25', '456-789-0123', 'emily.davis@example.com', 1),
('Michael Brown', '202 Cedar St', '1983-04-18', '567-890-1234', 'michael.brown@example.com', 1),
('Jessica Williams', '303 Birch St', '1995-06-30', '678-901-2345', 'jessica.williams@example.com', 2),
('David Miller', '404 Elm St', '1987-07-21', '789-012-3456', 'david.miller@example.com', 2),
('Sarah Wilson', '505 Maple St', '1993-10-12', '890-123-4567', 'sarah.wilson@example.com', 2),
('Chris Taylor', '606 Walnut St', '1986-03-08', '901-234-5678', 'chris.taylor@example.com', 3),
( 'Anna Moore', '707 Oakwood Dr', '1991-12-05', '012-345-6789', 'anna.moore@example.com', 3),

--Adding more customers with Cus_ID and Referrer_ID
( 'William Anderson', '808 Chestnut St', '1985-08-16', '123-987-6543', 'william.anderson@example.com', 4),
( 'Sophia Martinez', '909 Willow St', '1996-02-26', '234-876-5432', 'sophia.martinez@example.com', 4),
( 'Benjamin Clark', '1010 Redwood St', '1990-07-14', '345-765-4321', 'benjamin.clark@example.com', 4),
( 'Ava Thompson', '1111 Cypress St', '1989-01-02', '456-654-3210', 'ava.thompson@example.com', 4),
( 'James Garcia', '1212 Ash St', '1982-09-28', '567-543-2109', 'james.garcia@example.com', 5),
( 'Lily Martinez', '1313 Beech St', '1997-05-19', '678-432-1098', 'lily.martinez@example.com', 6),
( 'Henry Lewis', '1414 Cedarwood Dr', '1991-12-15', '789-321-0987', 'henry.lewis@example.com', 6),
( 'Olivia Young', '1515 Spruce St', '1986-11-08', '890-210-9876', 'olivia.young@example.com', 5),
( 'Lucas King', '1616 Magnolia St', '1993-03-01', '901-109-8765', 'lucas.king@example.com', 4),
( 'Mia White', '1717 Fir St', '1992-06-09', '012-998-7654', 'mia.white@example.com', 6),
( 'Noah Evans', '1818 Hawthorn St', '1994-03-22', '123-654-9876', 'noah.evans@example.com', 7),
( 'Amelia Scott', '1919 Birchwood Dr', '1990-11-10', '234-543-8765', 'amelia.scott@example.com', 7),
( 'Ethan Adams', '2020 Linden St', '1995-01-29', '345-432-7654', 'ethan.adams@example.com', 8),
( 'Isabella Carter', '2121 Maplewood St', '1988-09-15', '456-321-6543', 'isabella.carter@example.com', 8),
( 'Daniel Parker', '2222 Hemlock St', '1987-07-04', '567-210-5432', 'daniel.parker@example.com', 9),
( 'Mason Turner', '2323 Poplar St', '1996-06-23', '678-109-4321', 'mason.turner@example.com', 9),
( 'Ella Walker', '2424 Pecan St', '1993-02-14', '789-998-3210', 'ella.walker@example.com', 11),
( 'Alexander Perez', '2525 Hickory St', '1989-12-20', '890-887-2109', 'alexander.perez@example.com', 11),
( 'Grace Collins', '2626 Dogwood St', '1991-04-08', '901-776-1098', 'grace.collins@example.com', 2),
( 'Sebastian Ramirez', '2727 Ashwood Dr', '1994-07-17', '012-665-0987', 'sebastian.ramirez@example.com', 6),

( 'Aiden Murphy', '2828 Willow St', '1990-02-24', '123-456-7891', 'aiden.murphy@example.com', 20),
( 'Charlotte Cooper', '2929 Palm St', '1986-11-14', '234-567-8902', 'charlotte.cooper@example.com', 17),
( 'Matthew Reed', '3030 Chestnut St', '1993-09-30', '345-678-9013', 'matthew.reed@example.com', 15),
( 'Liam Brooks', '3131 Fir St', '1987-03-06', '456-789-0124', 'liam.brooks@example.com', 15),
( 'Zoe Morgan', '3232 Spruce St', '1994-01-17', '567-890-1235', 'zoe.morgan@example.com', 15),
( 'Evelyn Ward', '3333 Maple St', '1992-12-29', '678-901-2346', 'evelyn.ward@example.com', 16),
( 'Nathan James', '3434 Pine St', '1985-05-18', '789-012-3457', 'nathan.james@example.com', 16),
( 'Avery Hernandez', '3535 Cedar St', '1991-08-22', '890-123-4568', 'avery.hernandez@example.com', 16),
( 'Mila King', '3636 Oak St', '1989-10-10', '901-234-5679', 'mila.king@example.com', 9),
( 'Jameson Lee', '3737 Birch St', '1994-04-05', '012-345-6780', 'jameson.lee@example.com', 9),

( 'Chloe Hall', '3838 Walnut St', '1993-11-12', '123-987-6544', 'chloe.hall@example.com', 9),
( 'Isaiah Allen', '3939 Poplar St', '1988-07-23', '234-876-5433', 'isaiah.allen@example.com', 10),
( 'Harper Scott', '4040 Chestnut St', '1991-12-10', '345-765-4322', 'harper.scott@example.com', 13),
( 'Samuel Carter', '4141 Cedarwood Dr', '1986-06-11', '456-654-3211', 'samuel.carter@example.com', 13),
( 'Luna Gonzalez', '4242 Maplewood St', '1990-03-21', '567-543-2100', 'luna.gonzalez@example.com', 13),
( 'Dylan Lee', '4343 Fir St', '1985-08-14', '678-432-1099', 'dylan.lee@example.com', 11),
( 'Alyssa Hill', '4444 Birch St', '1994-09-09', '789-321-0988', 'alyssa.hill@example.com', 11),
( 'Eli Rivera', '4545 Pine St', '1989-01-20', '890-210-9877', 'eli.rivera@example.com', 28),
( 'Katherine Scott', '4646 Oakwood Dr', '1991-07-02', '901-109-8766', 'katherine.scott@example.com', 29),
( 'Oliver Ward', '4747 Cedar St', '1986-10-19', '012-998-7655', 'oliver.ward@example.com', 22),

( 'Layla Mitchell', '4848 Palm St', '1990-11-03', '123-654-9877', 'layla.mitchell@example.com', 22),
( 'Gabriel Ramirez', '4949 Chestnut St', '1988-06-12', '234-543-8766', 'gabriel.ramirez@example.com', 32),
( 'Addison Peterson', '5050 Birchwood Dr', '1994-02-28', '345-432-7655', 'addison.peterson@example.com', 32),
( 'Madison Sanchez', '5151 Cedarwood Dr', '1993-04-05', '456-321-6544', 'madison.sanchez@example.com', 19),
( 'Elijah Young', '5252 Maple St', '1991-05-20', '567-210-5433', 'elijah.young@example.com', 16),
( 'Scarlett Long', '5353 Fir St', '1986-08-18', '678-109-4322', 'scarlett.long@example.com', 12),
( 'Nathaniel Cooper', '5454 Walnut St', '1990-07-14', '789-998-3211', 'nathaniel.cooper@example.com', 12),
( 'Ella Bennett', '5555 Oakwood Dr', '1989-02-12', '890-887-2100', 'ella.bennett@example.com', 21),
( 'Sebastian Gonzalez', '5656 Chestnut St', '1992-11-29', '901-776-1099', 'sebastian.gonzalez@example.com', 22),
( 'Zara Hughes', '5757 Cedar St', '1994-03-15', '012-665-0988', 'zara.hughes@example.com', 24),

( 'Samantha Stewart', '5858 Maplewood St', '1993-10-06', '123-654-9878', 'samantha.stewart@example.com', 24),
( 'Wyatt Diaz', '5959 Palm St', '1987-12-20', '234-543-8767', 'wyatt.diaz@example.com', 25),
( 'Victoria Kim', '6060 Fir St', '1991-05-30', '345-432-7656', 'victoria.kim@example.com', 25),
( 'Carter Taylor', '6161 Birchwood Dr', '1985-09-08', '456-321-6545', 'carter.taylor@example.com', 25),
( 'Maya Rivera', '6262 Cedarwood Dr', '1988-11-01', '567-210-5434', 'maya.rivera@example.com',71),
( 'Angelina Morgan', '6363 Oak St', '1996-02-22', '678-109-4323', 'angelina.morgan@example.com', 27),
( 'Maverick Edwards', '6464 Walnut St', '1992-03-09', '789-998-3212', 'maverick.edwards@example.com', 33),
( 'Claire Wood', '6565 Maplewood Dr', '1990-12-25', '890-887-2101', 'claire.wood@example.com', 33),
( 'Grayson Flores', '6666 Pine St', '1988-08-16', '901-776-1100', 'grayson.flores@example.com', 33),
( 'Nora Rivera', '6767 Fir St', '1994-04-30', '012-665-0989', 'nora.rivera@example.com', 50),

( 'Caleb Knight', '6868 Ashwood Dr', '1993-11-02', '123-654-9879', 'caleb.knight@example.com', 50),
( 'Anna Bell', '6969 Cedar St', '1985-10-12', '234-543-8768', 'anna.bell@example.com', 53),
( 'Robert Ward', '7070 Maple St', '1989-06-09', '345-432-7657', 'robert.ward@example.com', 70),


( 'Cecilia Hayes', '7171 Fir St', '1992-05-14', '456-321-6546', 'cecilia.hayes@example.com', 46),
( 'Leo Ross', '7272 Oakwood Dr', '1990-08-11', '567-210-5435', 'leo.ross@example.com', 46),
( 'Lucy Bennett', '7373 Walnut St', '1988-02-28', '678-109-4324', 'lucy.bennett@example.com', 56),
( 'Jordan Sanders', '7474 Maplewood Dr', '1994-07-05', '789-998-3213', 'jordan.sanders@example.com', 69),
( 'Mia Turner', '7575 Pine St', '1993-01-19', '890-887-2102', 'mia.turner@example.com', 63),
( 'Kevin Morgan', '7676 Fir St', '1991-06-15', '901-776-1101', 'kevin.morgan@example.com', 63),
( 'Sophia Clark', '7777 Ashwood Dr', '1995-03-23', '012-665-0990', 'sophia.clark@example.com', 60),

( 'Lucas Lewis', '7878 Cedar St', '1990-02-11', '123-654-9880', 'lucas.lewis@example.com', 61),
( 'Alice Evans', '7979 Maplewood Dr', '1989-11-19', '234-543-8770', 'alice.evans@example.com', 67),
( 'Jaxon Carter', '8080 Fir St', '1994-04-24', '345-432-7660', 'jaxon.carter@example.com', 67),
( 'Sadie Hall', '8181 Oakwood Dr', '1992-12-05', '456-321-6550', 'sadie.hall@example.com', 60),
( 'Oliver Wright', '8282 Walnut St', '1993-10-08', '567-210-5440', 'oliver.wright@example.com', 60),
( 'Hannah King', '8383 Maplewood Dr', '1990-07-16', '678-109-4330', 'hannah.king@example.com', 66),
( 'Anthony Allen', '8484 Cedar St', '1988-05-21', '789-998-3220', 'anthony.allen@example.com', 79),
( 'Cora Martinez', '8585 Birchwood Dr', '1991-01-28', '890-887-2110', 'cora.martinez@example.com', 59),
( 'Evelyn Hernandez', '8686 Ashwood Dr', '1990-03-04', '901-776-1101', 'evelyn.hernandez@example.com', 60),
( 'Henry Rivera', '8787 Maplewood Dr', '1989-09-21', '012-665-0991', 'henry.rivera@example.com', 70),

( 'Aria Ramirez', '8888 Cedar St', '1994-02-18', '123-654-9881', 'aria.ramirez@example.com', 74),
( 'Daniel Harris', '8989 Birchwood Dr', '1992-06-12', '234-543-8771', 'daniel.harris@example.com', 72),
( 'Chase Perez', '9090 Fir St', '1988-12-23', '345-432-7661', 'chase.perez@example.com', 73),
( 'Brooklyn Carter', '9191 Walnut St', '1990-01-30', '456-321-6551', 'brooklyn.carter@example.com', 80),
( 'Kylie Watson', '9292 Oakwood Dr', '1993-08-09', '567-210-5441', 'kylie.watson@example.com', 71),
( 'Finn Hughes', '9393 Maplewood Dr', '1986-04-25', '678-109-4331', 'finn.hughes@example.com', 87),
( 'Scarlett Bailey', '9494 Birchwood Dr', '1989-10-30', '789-998-3221', 'scarlett.bailey@example.com', 64),
( 'Owen Smith', '9595 Fir St', '1994-01-14', '890-887-2120', 'owen.smith@example.com', 88),
( 'Grace Green', '9696 Cedar St', '1988-09-05', '901-776-1102', 'grace.green@example.com', 90),
( 'Jackson Cooper', '9797 Walnut St', '1992-03-29', '012-665-0992', 'jackson.cooper@example.com', 80);

-- Continue to insert 100 total rows with Cus_ID and appropriate Referrer_ID references.
SET IDENTITY_INSERT Category OFF;
-- Inserting 100 employees with explicit Emp_ID values

alter table Employee 
add Emp_Position varchar(50)
alter table Employee 
add Emp_Hire_Date date
alter table Employee 
add Emp_Phone varchar(50) not null
alter table Employee 
add Emp_Email varchar(100) not null
alter table Employee 
add Emp_Salary int
alter table Employee
drop column Emp_Position
alter table Employee
drop column Emp_Hire_Date
alter table Employee
drop column Emp_Email

INSERT INTO Employee ( Emp_Name, Emp_Position, Emp_Hire_Date, Emp_Phone, Emp_Email, Emp_Salary)
VALUES
('Alice Johnson', 'Manager', '2021-01-15', '123-456-7890', 'alice.johnson@example.com', 60000),
('Bob Smith', 'Assistant Manager', '2021-02-20', '123-456-7891', 'bob.smith@example.com', 50000),
('Charlie Brown', 'Sales Associate', '2021-03-10', '123-456-7892', 'charlie.brown@example.com', 40000),
('Diana Prince', 'Customer Service Rep', '2021-04-05', '123-456-7893', 'diana.prince@example.com', 35000),
('Edward Norton', 'Warehouse Supervisor', '2021-05-15', '123-456-7894', 'edward.norton@example.com', 55000),
('Fiona Green', 'HR Specialist', '2021-06-20', '123-456-7895', 'fiona.green@example.com', 45000),
('George Martin', 'IT Technician', '2021-07-25', '123-456-7896', 'george.martin@example.com', 60000),
('Hannah Lee', 'Marketing Coordinator', '2021-08-15', '123-456-7897', 'hannah.lee@example.com', 48000),
('Ian Wright', 'Finance Analyst', '2021-09-12', '123-456-7898', 'ian.wright@example.com', 55000),
( 'Julia Roberts', 'Operations Manager', '2021-10-30', '123-456-7899', 'julia.roberts@example.com', 62000),

( 'Kyle West', 'Sales Associate', '2021-11-10', '234-567-8900', 'kyle.west@example.com', 40000),
( 'Lily Evans', 'Customer Service Rep', '2021-12-05', '234-567-8901', 'lily.evans@example.com', 35000),
( 'Matthew Thompson', 'HR Specialist', '2021-01-22', '234-567-8902', 'matthew.thompson@example.com', 45000),
( 'Natalie Bennett', 'IT Technician', '2021-02-18', '234-567-8903', 'natalie.bennett@example.com', 60000),
( 'Oscar Wilde', 'Marketing Coordinator', '2021-03-25', '234-567-8904', 'oscar.wilde@example.com', 48000),
( 'Paula White', 'Finance Analyst', '2021-04-30', '234-567-8905', 'paula.white@example.com', 55000),
( 'Quentin Brown', 'Operations Manager', '2021-05-18', '234-567-8906', 'quentin.brown@example.com', 62000),
( 'Rachel Adams', 'Sales Associate', '2021-06-15', '234-567-8907', 'rachel.adams@example.com', 40000),
( 'Samuel Green', 'Customer Service Rep', '2021-07-10', '234-567-8908', 'samuel.green@example.com', 35000),
( 'Tina Turner', 'Warehouse Supervisor', '2021-08-25', '234-567-8909', 'tina.turner@example.com', 55000),

( 'Uma Thurman', 'Manager', '2021-09-15', '345-678-9010', 'uma.thurman@example.com', 60000),
( 'Victor Hugo', 'Assistant Manager', '2021-10-05', '345-678-9011', 'victor.hugo@example.com', 50000),
( 'Wendy Wu', 'Sales Associate', '2021-11-20', '345-678-9012', 'wendy.wu@example.com', 40000),
( 'Xander Cage', 'Customer Service Rep', '2021-12-15', '345-678-9013', 'xander.cage@example.com', 35000),
( 'Yvonne Strahovski', 'Warehouse Supervisor', '2022-01-10', '345-678-9014', 'yvonne.strahovski@example.com', 55000),
( 'Zachary Taylor', 'HR Specialist', '2022-02-20', '345-678-9015', 'zachary.taylor@example.com', 45000),
( 'Anna Kendrick', 'IT Technician', '2022-03-12', '345-678-9016', 'anna.kendrick@example.com', 60000),
( 'Brandon Lee', 'Marketing Coordinator', '2022-04-05', '345-678-9017', 'brandon.lee@example.com', 48000),
( 'Cynthia Nixon', 'Finance Analyst', '2022-05-25', '345-678-9018', 'cynthia.nixon@example.com', 55000),
( 'Derek Jeter', 'Operations Manager', '2022-06-15', '345-678-9019', 'derek.jeter@example.com', 62000),

( 'Elena Gilbert', 'Sales Associate', '2022-07-20', '456-789-0120', 'elena.gilbert@example.com', 40000),
( 'Frank Castle', 'Customer Service Rep', '2022-08-10', '456-789-0121', 'frank.castle@example.com', 35000),
( 'Grace Jones', 'HR Specialist', '2022-09-30', '456-789-0122', 'grace.jones@example.com', 45000),
( 'Henry Cavill', 'IT Technician', '2022-10-20', '456-789-0123', 'henry.cavill@example.com', 60000),
( 'Isabella Rossellini', 'Marketing Coordinator', '2022-11-15', '456-789-0124', 'isabella.rossellini@example.com', 48000),
( 'James Bond', 'Finance Analyst', '2022-12-10', '456-789-0125', 'james.bond@example.com', 55000),
( 'Karen Gillan', 'Operations Manager', '2022-01-08', '456-789-0126', 'karen.gillan@example.com', 62000),
( 'Leonardo DiCaprio', 'Sales Associate', '2022-02-22', '456-789-0127', 'leonardo.dicaprio@example.com', 40000),
( 'Megan Fox', 'Customer Service Rep', '2022-03-15', '456-789-0128', 'megan.fox@example.com', 35000),
( 'Nathan Fillion', 'Warehouse Supervisor', '2022-04-25', '456-789-0129', 'nathan.fillion@example.com', 55000),

( 'Olivia Wilde', 'Manager', '2022-05-20', '567-890-1230', 'olivia.wilde@example.com', 60000),
( 'Peter Dinklage', 'Assistant Manager', '2022-06-10', '567-890-1231', 'peter.dinklage@example.com', 50000),
( 'Quinn Fabray', 'Sales Associate', '2022-07-30', '567-890-1232', 'quinn.fabray@example.com', 40000),
( 'Rachel McAdams', 'Customer Service Rep', '2022-08-22', '567-890-1233', 'rachel.mcadams@example.com', 35000),
( 'Steve Rogers', 'Warehouse Supervisor', '2022-09-15', '567-890-1234', 'steve.rogers@example.com', 55000),
( 'Tina Fey', 'HR Specialist', '2022-10-05', '567-890-1235', 'tina.fey@example.com', 45000),
( 'Ursula K. Le Guin', 'IT Technician', '2022-11-20', '567-890-1236', 'ursula.leguin@example.com', 60000),
( 'Vin Diesel', 'Marketing Coordinator', '2022-12-15', '567-890-1237', 'vin.diesel@example.com', 48000),
--ontinuing to insert employee records
( 'Will Smith', 'Finance Analyst', '2023-01-05', '567-890-1238', 'will.smith@example.com', 55000),
( 'Xena Warrior', 'Operations Manager', '2023-01-28', '567-890-1239', 'xena.warrior@example.com', 62000),

( 'Yuri Gagarin', 'Sales Associate', '2023-02-18', '678-901-2340', 'yuri.gagarin@example.com', 40000),
( 'Zoe Saldana', 'Customer Service Rep', '2023-03-12', '678-901-2341', 'zoe.saldana@example.com', 35000),
( 'Alex Trebek', 'HR Specialist', '2023-04-05', '678-901-2342', 'alex.trebek@example.com', 45000),
( 'Bill Gates', 'IT Technician', '2023-05-20', '678-901-2343', 'bill.gates@example.com', 60000),
( 'Catherine Zeta-Jones', 'Marketing Coordinator', '2023-06-15', '678-901-2344', 'catherine.zeta-jones@example.com', 48000),
( 'Daniel Craig', 'Finance Analyst', '2023-07-10', '678-901-2345', 'daniel.craig@example.com', 55000),
( 'Emily Blunt', 'Operations Manager', '2023-08-25', '678-901-2346', 'emily.blunt@example.com', 62000),
( 'Fred Astaire', 'Sales Associate', '2023-09-30', '678-901-2347', 'fred.astaire@example.com', 40000),
( 'Gina Rodriguez', 'Customer Service Rep', '2023-10-20', '678-901-2348', 'gina.rodriguez@example.com', 35000),
( 'Harrison Ford', 'Warehouse Supervisor', '2023-11-15', '678-901-2349', 'harrison.ford@example.com', 55000),

( 'Isla Fisher', 'Manager', '2023-12-01', '789-012-3450', 'isla.fisher@example.com', 60000),
( 'Jason Statham', 'Assistant Manager', '2024-01-05', '789-012-3451', 'jason.statham@example.com', 50000),
( 'Kate Winslet', 'Sales Associate', '2024-02-10', '789-012-3452', 'kate.winslet@example.com', 40000),
( 'Leonardo DiCaprio', 'Customer Service Rep', '2024-03-15', '789-012-3453', 'leonardo.dicaprio@example.com', 35000),
( 'Mandy Moore', 'Warehouse Supervisor', '2024-04-20', '789-012-3454', 'mandy.moore@example.com', 55000),
( 'Nick Offerman', 'HR Specialist', '2024-05-25', '789-012-3455', 'nick.offerman@example.com', 45000),
( 'Oprah Winfrey', 'IT Technician', '2024-06-30', '789-012-3456', 'oprah.winfrey@example.com', 60000),
( 'Paul Rudd', 'Marketing Coordinator', '2024-07-05', '789-012-3457', 'paul.rudd@example.com', 48000),
( 'Queen Latifah', 'Finance Analyst', '2024-08-10', '789-012-3458', 'queen.latifah@example.com', 55000),
( 'Ryan Gosling', 'Operations Manager', '2024-09-15', '789-012-3459', 'ryan.gosling@example.com', 62000),

( 'Sarah Jessica Parker', 'Sales Associate', '2024-10-20', '890-123-4560', 'sarah.jessica.parker@example.com', 40000),
( 'Tom Hardy', 'Customer Service Rep', '2024-11-25', '890-123-4561', 'tom.hardy@example.com', 35000),
( 'Uma Thurman', 'HR Specialist', '2024-12-30', '890-123-4562', 'uma.thurman@example.com', 45000),
( 'Vince Vaughn', 'IT Technician', '2025-01-15', '890-123-4563', 'vince.vaughn@example.com', 60000),
( 'Whitney Houston', 'Marketing Coordinator', '2025-02-10', '890-123-4564', 'whitney.houston@example.com', 48000),
( 'Xavier Dolan', 'Finance Analyst', '2025-03-05', '890-123-4565', 'xavier.dolan@example.com', 55000),
( 'Yvonne Strahovski', 'Operations Manager', '2025-04-15', '890-123-4566', 'yvonne.strahovski@example.com', 62000),
( 'Zach Galifianakis', 'Sales Associate', '2025-05-20', '890-123-4567', 'zach.galifianakis@example.com', 40000),
( 'Amy Adams', 'Customer Service Rep', '2025-06-30', '890-123-4568', 'amy.adams@example.com', 35000),
( 'Ben Stiller', 'Warehouse Supervisor', '2025-07-15', '890-123-4569', 'ben.stiller@example.com', 55000),

( 'Claire Danes', 'Manager', '2025-08-10', '901-234-5670', 'claire.danes@example.com', 60000),
( 'David Schwimmer', 'Assistant Manager', '2025-09-15', '901-234-5671', 'david.schwimmer@example.com', 50000),
( 'Emma Watson', 'Sales Associate', '2025-10-20', '901-234-5672', 'emma.watson@example.com', 40000),
( 'Finn Wolfhard', 'Customer Service Rep', '2025-11-25', '901-234-5673', 'finn.wolfhard@example.com', 35000),
( 'Gabrielle Union', 'Warehouse Supervisor', '2025-12-30', '901-234-5674', 'gabrielle.union@example.com', 55000),
( 'Henry Golding', 'HR Specialist', '2026-01-15', '901-234-5675', 'henry.golding@example.com', 45000),
( 'Isabelle Huppert', 'IT Technician', '2026-02-10', '901-234-5676', 'isabelle.huppert@example.com', 60000),
( 'Jake Gyllenhaal', 'Marketing Coordinator', '2026-03-05', '901-234-5677', 'jake.gyllenhaal@example.com', 48000),
( 'Keira Knightley', 'Finance Analyst', '2026-04-15', '901-234-5678', 'keira.knightley@example.com', 55000),
( 'Leonard Nimoy', 'Operations Manager', '2026-05-20', '901-234-5679', 'leonard.nimoy@example.com', 62000),

( 'Maya Rudolph', 'Sales Associate', '2026-06-10', '012-345-6780', 'maya.rudolph@example.com', 40000),
( 'Nicolas Cage', 'Customer Service Rep', '2026-07-15', '012-345-6781', 'nicolas.cage@example.com', 35000),
( 'Octavia Spencer', 'HR Specialist', '2026-08-25', '012-345-6782', 'octavia.spencer@example.com', 45000),
( 'Paul Simon', 'IT Technician', '2026-09-10', '012-345-6783', 'paul.simon@example.com', 60000),
( 'Quincy Jones', 'Marketing Coordinator', '2026-10-20', '012-345-6784', 'quincy.jones@example.com', 48000),
( 'Rami Malek', 'Finance Analyst', '2026-11-15', '012-345-6785', 'rami.malek@example.com', 55000),
( 'Sophie Turner', 'Operations Manager', '2026-12-30', '012-345-6786', 'sophie.turner@example.com', 62000),
( 'Tobey Maguire', 'Sales Associate', '2027-01-15', '012-345-6787', 'tobey.maguire@example.com', 40000),
( 'Uma Thurman', 'Customer Service Rep', '2027-02-20', '012-345-6788', 'uma.thurman@example.com', 35000),
( 'Vincent van Gogh', 'Warehouse Supervisor', '2027-03-10', '012-345-6789', 'vincent.vangogh@example.com', 55000);
INSERT INTO payment_method ( pay_type) VALUES
( 'Credit'),
( 'InstaPay'),
( 'Wallet'),
( 'Cash')
;
--Good
delete from support_ticket
DBCC CHECKIDENT('support_ticket',reseed,0)
INSERT INTO support_ticket ( Cus_ID, Support_Date, Support_Issue, Support_Status) VALUES
(1, '2024-01-10', 'Unable to process payment.', 'Open'),
(1, '2024-01-11', 'Refund request In progress.', 'In progress'),
(2, '2024-01-12', 'Account locked due to multiple failed attempts.', 'Open'),
(3, '2024-01-13', 'Need assistance with refund request.', 'Closed'),
(4, '2024-01-14', 'Questions regarding order status.', 'Resolved'),
(4, '2024-01-15', 'Need help with product return.', 'Open'),
(5, '2024-01-16', 'Payment not reflecting in account.', 'In progress'),
(5, '2024-01-17', 'Feedback on new product.', 'Open'),
(6, '2024-01-18', 'Website not loading.', 'Closed'),
( 7, '2024-01-19', 'Unable to update profile information.', 'In progress'),
( 7, '2024-01-20', 'Request for order cancellation.', 'Open'),
( 8, '2024-01-21', 'Inquiry about loyalty program.', 'Resolved'),
( 9, '2024-01-22', 'Need help with resetting password.', 'Open'),
( 10, '2024-01-23', 'Questions about shipping options.', 'In progress'),
( 10, '2024-01-24', 'Feedback on customer service.', 'Closed'),
( 11, '2024-01-25', 'Issues with coupon code redemption.', 'Open'),
( 12, '2024-01-26', 'Request for account statement.', 'In progress'),
( 13, '2024-01-27', 'Need assistance with app navigation.', 'Open'),
( 13, '2024-01-28', 'Problems with order delivery.', 'In progress'),
( 14, '2024-01-29', 'Inquiry about product warranty.', 'Resolved'),
( 15, '2024-02-01', 'Report of fraudulent transaction.', 'Open'),
( 15, '2024-02-02', 'Questions about refund process.', 'Closed'),
( 16, '2024-02-03', 'Help with product exchange.', 'In progress'),
( 17, '2024-02-04', 'Feedback on website usability.', 'Open'),
( 18, '2024-02-05', 'Issue with order delivery.', 'Resolved'),
( 18, '2024-02-06', 'Need help with order tracking.', 'In progress'),
( 19, '2024-02-07', 'Support needed for technical issue.', 'Open'),
( 20, '2024-02-08', 'Request for feedback on recent purchase.', 'In progress'),
( 20, '2024-02-09', 'Inquiry about subscription service.', 'Closed'),
( 2, '2024-02-10', 'Feedback on customer service.', 'Open'),
( 3, '2024-02-11', 'Need assistance with order changes.', 'Resolved'),
( 4, '2024-02-12', 'Questions regarding payment options.', 'In progress'),
( 5, '2024-02-13', 'Support needed for order return.', 'Open'),
( 6, '2024-02-14', 'Inquiry about product availability.', 'In progress'),
( 8, '2024-02-15', 'Need help with loyalty points.', 'Open'),
( 51, '2024-02-16', 'Need help with account verification.', 'Open'),
( 52, '2024-02-17', 'Question about loyalty points redemption.', 'In progress'),
( 53, '2024-02-18', 'Assistance required for payment failure.', 'Resolved'),
( 54, '2024-02-19', 'Need clarification on subscription charges.', 'Closed'),
( 55, '2024-02-20', 'Inquiry about product delivery time.', 'Open'),
( 56, '2024-02-21', 'Issues with accessing my order history.', 'In progress'),
( 57, '2024-02-22', 'Feedback on new interface changes.', 'In progress'),
( 58, '2024-02-23', 'Support needed for gift card redemption.', 'Open'),
( 59, '2024-02-24', 'Report of unauthorized transaction.', 'Closed'),
( 60, '2024-02-25', 'Question about warranty coverage.', 'Open'),
( 61, '2024-02-26', 'Need help with order cancellation process.', 'In progress'),
( 62, '2024-02-27', 'Inquiry about account security features.', 'Resolved'),
( 63, '2024-02-28', 'Assistance needed with product installation.', 'In progress'),
( 64, '2024-02-29', 'Need support for app functionality issues.', 'Open'),
( 65, '2024-03-01', 'Question about shipping rates.', 'Closed'),
( 66, '2024-03-02', 'Feedback on recent product purchase.', 'Open'),
( 67, '2024-03-03', 'Need assistance with profile update.', 'In progress'),
( 68, '2024-03-04', 'Inquiry about upcoming promotions.', 'Resolved'),
( 69, '2024-03-05', 'Issues with subscription cancellation.', 'In progress'),
( 70, '2024-03-06', 'Report of incorrect billing amount.', 'Open');
--Good
INSERT INTO Category ( Cat_Name) VALUES
('Electronics'),
('Books'),
('Clothing'),
('Home Appliances'),
('Sports Equipment'),
('Toys'),
('Beauty Products'),
('Automotive'),
('Grocery'),
( 'Health & Wellness'),
( 'Stationery'),
( 'Jewelry'),
( 'Furniture'),
( 'Footwear'),
( 'Gardening'),
( 'Pet Supplies'),
( 'Travel Accessories'),
( 'Musical Instruments'),
( 'Office Supplies'),
( 'Crafts & Hobbies');
--Good: Many Products in each category
delete from Product
DBCC CHECKIDENT('Product',Reseed,0)
INSERT INTO Product ( Product_Name, Product_Desc, Product_Price, Cat_ID) VALUES
('Smartphone', 'Latest model smartphone with advanced features', 699, 1),
('Laptop', 'High-performance laptop for professionals', 1299, 1),
('E-Reader', 'Lightweight e-reader for book lovers', 149, 2),
('Novel', 'Bestselling novel of the year', 19, 2),
('T-Shirt', 'Comfortable cotton t-shirt', 25, 3),
('Jeans', 'Stylish denim jeans for everyday wear', 50, 3),
('Microwave', 'Compact microwave for easy cooking', 120, 4),
('Blender', 'High-speed blender for smoothies', 60, 4),
('Tennis Racket', 'Professional tennis racket', 150, 5),
( 'Soccer Ball', 'Official size soccer ball', 30, 5),
( 'Action Figure', 'Collectible action figure from popular movie', 20, 6),
( 'Puzzle', 'Challenging 1000-piece puzzle', 15, 6),
( 'Lipstick', 'Long-lasting lipstick in various shades', 18, 7),
( 'Face Cream', 'Moisturizing face cream with SPF', 25, 7),
( 'Car Tires', 'All-season tires for better grip', 400, 8),
( 'Car Wax', 'Protective wax for vehicle shine', 20, 8),
( 'Organic Apples', 'Fresh organic apples from local farm', 3, 9),
( 'Whole Wheat Bread', 'Healthy whole wheat bread', 2, 9),
( 'Vitamins', 'Daily multivitamins for adults', 15, 10),
( 'Protein Powder', 'High-quality protein powder for fitness', 35, 10),
( 'Notebook', 'Spiral-bound notebook for school', 5, 11),
( 'Pen', 'Ballpoint pen with smooth writing', 1, 11),
( 'Diamond Ring', 'Elegant diamond ring', 5000, 12),
( 'Gold Necklace', 'Stylish gold necklace', 1500, 12),
( 'Office Chair', 'Ergonomic office chair for comfort', 200, 13),
( 'Dining Table', 'Wooden dining table for family', 600, 13),
( 'Sneakers', 'Trendy sneakers for everyday use', 70, 14),
( 'Sandals', 'Comfortable sandals for summer', 30, 14),
( 'Garden Shovel', 'Durable shovel for gardening', 25, 15),
( 'Flower Pot', 'Decorative pot for houseplants', 15, 15),
( 'Dog Food', 'Nutritious food for dogs', 30, 16),
( 'Cat Litter', 'Odor control cat litter', 20, 16),
( 'Luggage Set', 'Stylish luggage for travel', 250, 17),
( 'Travel Pillow', 'Comfortable travel pillow', 20, 17),
( 'Guitar', 'Acoustic guitar with case', 250, 18),
( 'Keyboard', 'Musical keyboard with various sounds', 100, 18),
( 'Printer Paper', 'High-quality printer paper', 10, 19),
( 'Stapler', 'Heavy-duty stapler for office use', 15, 19),
( 'Art Supplies', 'Complete set of art supplies', 50, 20),
( 'Knitting Kit', 'Everything you need to start knitting', 35, 20),
--Continue adding values with random distribution over categories
--below are just placeholders for the remaining products; make sure to change the details as needed.

( 'Smartwatch', 'Wearable tech with fitness tracking', 199, 1),
( 'Tablet', 'Portable tablet with stylus support', 499, 1),
( 'Science Fiction Novel', 'A thrilling science fiction tale', 25, 2),
( 'Children Book', 'Fun and educational book for kids', 15, 2),
( 'Jacket', 'Warm winter jacket', 80, 3),
( 'Sneakers', 'Sporty sneakers for active lifestyle', 60, 3),
( 'Air Fryer', 'Healthy cooking with air fryer', 120, 4),
( 'Electric Kettle', 'Fast boiling electric kettle', 30, 4),
( 'Baseball Bat', 'High-quality baseball bat', 60, 5),
( 'Yoga Mat', 'Eco-friendly yoga mat', 40, 5),
( 'Doll', 'Beautiful doll for children', 35, 6),
( 'Board Game', 'Fun family board game', 25, 6),
( 'Perfume', 'Luxurious perfume for women', 90, 7),
( 'Sunscreen', 'Protect your skin with this sunscreen', 20, 7),
( 'Bike Helmet', 'Safety helmet for biking', 45, 8),
( 'Car Battery', 'Reliable car battery', 120, 8),
( 'Bananas', 'Fresh bananas from local market', 1, 9),
( 'Rice', 'Premium quality rice', 5, 9),
( 'Fish Oil', 'Omega-3 fish oil supplements', 25, 10),
( 'Yoga Block', 'Yoga block for support', 15, 10),
( 'Binder', 'Durable binder for documents', 8, 11),
( 'Markers', 'Set of colorful markers', 10, 11),
( 'Silver Bracelet', 'Stylish silver bracelet', 100, 12),
( 'Emerald Earrings', 'Beautiful emerald earrings', 300, 12),
( 'Office Desk', 'Spacious office desk', 400, 13),
( 'Bookshelf', 'Tall bookshelf for storage', 150, 13),
( 'Dress Shoes', 'Formal dress shoes', 120, 14),
( 'Winter Boots', 'Insulated winter boots', 150, 14),
( 'Gardening Gloves', 'Protective gloves for gardening', 10, 15),
( 'Watering Can', 'Easy-to-use watering can', 15, 15),
( 'Cat Food', 'Quality cat food for healthy pets', 30, 16),
( 'Pet Carrier', 'Safe carrier for small pets', 50, 16),
( 'Travel Bag', 'Stylish travel bag', 100, 17),
( 'Camera', 'Digital camera for photography', 500, 17),
( 'Piano', 'Grand piano for music lovers', 3000, 18),
( 'Drum Set', 'Complete drum set for beginners', 400, 18),
( 'Notebook Paper', 'Refill paper for notebooks', 10, 19),
( 'Paper Clips', 'Pack of paper clips', 5, 19),
( 'Painting Set', 'Complete painting set for artists', 50, 20),
( 'Origami Kit', 'Everything you need to start origami', 25, 20),
( 'Bluetooth Speaker', 'Portable Bluetooth speaker', 80, 1),
( 'Gaming Console', 'Latest gaming console with games', 399, 1),
( 'Cookbook', 'Delicious recipes from around the world', 25, 2),
( 'Textbook', 'Required textbook for college', 60, 2),
( 'Shorts', 'Casual shorts for summer', 30, 3),
( 'Sweater', 'Warm sweater for winter', 50, 3),
( 'Toaster', 'Quick and easy toaster for breakfast', 30, 4),
( 'Slow Cooker', 'Cook your meals while you’re out', 70, 4),
( 'Football', 'Official size football', 25, 5),
( 'Basketball', 'Standard size basketball', 30, 5),
( 'Building Blocks', 'Creative building blocks for kids', 20, 6),
( 'Action Camera', 'Capture your adventures in HD', 150, 6),
( 'Moisturizer', 'Hydrating moisturizer for skin', 30, 7),
( 'Face Mask', 'Nourishing face mask', 15, 7),
( 'Oil Change Kit', 'Everything you need for an oil change', 45, 8),
( 'Car Wash Kit', 'Complete kit for washing your car', 35, 8),
( 'Organic Carrots', 'Fresh organic carrots', 2, 9),
( 'Pasta', 'Premium pasta for cooking', 3, 9),
( 'Calcium Supplements', 'Bone health calcium supplements', 20, 10),
( 'Herbal Tea', 'Relaxing herbal tea blend', 15, 10),
( 'Flash Drive', 'USB flash drive for data storage', 15, 11),
( 'Folder', 'File folder for organization', 5, 11),
( 'Gold Ring', 'Elegant gold ring', 800, 12),
( 'Platinum Necklace', 'Luxury platinum necklace', 2000, 12),
( 'Chair Mat', 'Protective mat for office chair', 60, 13),
( 'Coffee Table', 'Stylish coffee table', 250, 13),
( 'Flip-Flops', 'Comfortable flip-flops', 15, 14),
( 'Winter Coat', 'Warm winter coat', 150, 14),
( 'Garden Rake', 'Essential tool for gardening', 20, 15),
( 'Compost Bin', 'Eco-friendly compost bin', 80, 15),
( 'Fish Tank', 'Aquarium for fish lovers', 150, 16),
( 'Dog Bed', 'Comfortable bed for dogs', 50, 16),
( 'Suitcase', 'Durable suitcase for travel', 200, 17),
( 'Passport Holder', 'Protective holder for your passport', 10, 17),
( 'Violin', 'Classic violin with bow', 400, 18),
( 'Trumpet', 'Brass trumpet for musicians', 300, 18),
( 'Stapler Remover', 'Handy tool for removing staples', 8, 19),
( 'Binder Clips', 'Pack of binder clips', 6, 19),
( 'Watercolor Set', 'Watercolor paints for artists', 40, 20),
( 'Embroidery Kit', 'Everything you need for embroidery', 30, 20),
( 'Drone', 'Camera drone for aerial photography', 799, 1),
( 'Smart TV', 'High-definition smart TV', 999, 1),
( 'Biography', 'Inspirational biography', 25, 2),
( 'Cookware Set', 'Complete cookware set', 100, 4),
( 'Cap', 'Baseball cap with logo', 15, 3),
( 'Backpack', 'Durable backpack for school', 40, 3),
( 'Electric Grill', 'Indoor electric grill', 80, 4),
( 'Food Processor', 'Versatile food processor', 150, 4),
( 'Dumbbells', 'Adjustable dumbbells for home gym', 120, 5),
( 'Resistance Bands', 'Set of resistance bands for workouts', 25, 5),
( 'Lego Set', 'Creative Lego building set', 60, 6),
( 'Board Game', 'Fun board game for family night', 30, 6),
( 'Shampoo', 'Moisturizing shampoo', 12, 7),
( 'Conditioner', 'Hydrating conditioner', 12, 7),
( 'Windshield Wipers', 'Quality windshield wipers', 25, 8),
( 'Car Wax', 'Protective wax for car finish', 18, 8),
( 'Oranges', 'Fresh oranges', 1, 9),
( 'Peanut Butter', 'Natural peanut butter', 4, 9),
( 'Zinc Supplements', 'Immune support zinc supplements', 15, 10),
( 'Vitamin C', 'Vitamin C for health', 12, 10),
( 'Highlighter', 'Bright highlighter for marking', 2, 11),
( 'Index Cards', 'Pack of index cards', 4, 11),
( 'Gold Chain', 'Luxury gold chain', 1200, 12),
( 'Watch', 'Stylish wristwatch', 300, 12),
( 'Desk Organizer', 'Keep your desk tidy', 20, 13),
( 'Wall Clock', 'Elegant wall clock', 40, 13),
( 'High Heels', 'Stylish high heels', 80, 14),
( 'Boots', 'Durable boots for outdoor use', 100, 14),
( 'Hose', 'Garden hose for watering', 25, 15),
( 'Pruning Shears', 'Essential tool for pruning', 30, 15),
( 'Dog Toy', 'Fun toy for dogs', 10, 16),
( 'Pet Carrier', 'Comfortable carrier for pets', 50, 16),
( 'Camping Gear', 'Essential camping gear', 200, 17),
( 'Travel Guide', 'Informative travel guide', 20, 17),
( 'Cello', 'Professional cello instrument', 600, 18),
( 'Saxophone', 'Brass saxophone for musicians', 400, 18),
( 'Printer Ink', 'Black printer ink cartridge', 30, 19),
( 'Notepads', 'Pack of notepads for notes', 5, 19),
( 'Sketchbook', 'Quality sketchbook for artists', 15, 20),
( 'Crafting Paper', 'Colorful crafting paper', 20, 20),
( '4K Monitor', 'High-resolution monitor', 499, 1),
( 'Bluetooth Headphones', 'Wireless headphones with noise cancellation', 199, 1),
( 'Motivational Book', 'Uplifting motivational book', 30, 2),
( 'History Book', 'Engaging history book', 25, 2),
( 'Socks', 'Comfortable socks for daily wear', 10, 3),
( 'Scarf', 'Warm winter scarf', 25, 3),
( 'Rice Cooker', 'Convenient rice cooker', 50, 4),
( 'Slow Cooker', 'Easy slow cooker for meals', 60, 4),
( 'Baseball Glove', 'Professional baseball glove', 40, 5),
( 'Tennis Shoes', 'Specialized shoes for tennis', 70, 5),
( 'Kids Book', 'Fun storybook for children', 15, 6),
( 'Play-Doh Set', 'Creative play-doh set for kids', 25, 6),
( 'Face Wash', 'Gentle face wash for daily use', 15, 7),
( 'Makeup Set', 'Complete makeup set', 100, 7),
( 'Car Charger', 'Charger for car devices', 15, 8),
( 'Car Mats', 'Protective mats for car interior', 30, 8),
( 'Spinach', 'Fresh spinach leaves', 2, 9),
( 'Granola Bars', 'Healthy snack bars', 5, 9),
( 'Calcium Tablets', 'Essential calcium tablets', 20, 10),
( 'Green Tea', 'Refreshing green tea', 10, 10),
( 'Paper Shredder', 'Secure paper shredder', 150, 11),
( 'Whiteboard', 'Magnetic whiteboard for presentations', 75, 11),
( 'Gold Earrings', 'Elegant gold earrings', 600, 12),
( 'Wristband', 'Stylish wristband', 20, 12),
( 'Office Chair Mat', 'Protective mat for office chairs', 40, 13),
( 'Shelves', 'Wooden shelves for storage', 150, 13),
( 'Sandals', 'Casual sandals for summer', 25, 14),
( 'Belt', 'Fashionable belt', 30, 14),
( 'Weed Puller', 'Handy tool for gardening', 15, 15),
( 'Gardening Kit', 'Complete gardening kit', 50, 15),
( 'Dog Leash', 'Durable leash for dogs', 20, 16),
( 'Pet Food Bowl', 'Quality bowl for pets', 10, 16),
( 'Backpacking Tent', 'Lightweight tent for camping', 300, 17),
( 'Travel Adapter', 'Universal travel adapter', 20, 17),
( 'Violin Bow', 'Replacement violin bow', 50, 18),
( 'Harmonica', 'Beginner harmonica', 30, 18),
( 'Label Maker', 'Handy label maker for organization', 60, 19),
( 'Laminator', 'Compact laminator for documents', 80, 19),
( 'Art Canvas', 'High-quality canvas for painting', 15, 20),
( 'Paint Brushes', 'Set of paint brushes for artists', 10, 20),
( 'Smart Scale', 'Bluetooth smart scale', 40, 1),
( 'Smart Light Bulb', 'Wi-Fi enabled smart light bulb', 25, 1),
( 'Biography', 'Intriguing biography', 30, 2),
( 'Cookbook', 'Culinary cookbook', 35, 4),
( 'Cap', 'Stylish baseball cap', 20, 3),
( 'Jacket', 'Stylish jacket', 70, 3),
( 'Electric Frying Pan', 'Versatile electric frying pan', 100, 4),
( 'Deep Fryer', 'Professional deep fryer', 150, 4),
( 'Baseball Bat', 'Standard baseball bat', 30, 5),
( 'Skateboard', 'Cool skateboard for tricks', 60, 5),
( 'Dollhouse', 'Interactive dollhouse for kids', 150, 6),
( 'Kites', 'Colorful kites for outdoor fun', 20, 6),
( 'Conditioner', 'Nourishing conditioner', 20, 7),
( 'Face Serum', 'Hydrating face serum', 35, 7),
( 'Windshield Cover', 'Protective cover for cars', 20, 8),
( 'Auto Detailing Kit', 'Complete car detailing kit', 100, 8),
( 'Spinach', 'Fresh spinach', 2, 9),
( 'Cereal', 'Healthy breakfast cereal', 5, 9),
( 'Flaxseed Oil', 'Healthy omega-3 oil', 20, 10),
( 'Chai Tea', 'Spicy chai tea', 12, 10),
( 'Pencil Case', 'Colorful pencil case', 10, 11),
( 'Sticky Notes', 'Pack of sticky notes', 5, 11),
( 'Titanium Ring', 'Durable titanium ring', 800, 12),
( 'Luxury Watch', 'High-end luxury watch', 5000, 12),
( 'Desk Lamp', 'Bright desk lamp', 50, 13),
( 'Bookshelf', 'Large wooden bookshelf', 150, 13),
( 'Clogs', 'Comfortable clogs', 30, 14),
( 'Loafers', 'Casual loafers for men', 60, 14),
( 'Pruner', 'Heavy-duty pruner for gardening', 40, 15),
( 'Soil Tester', 'Essential soil testing tool', 20, 15),
( 'Pet Bed', 'Cozy pet bed', 50, 16),
( 'Fish Food', 'Special food for aquarium fish', 10, 16),
( 'Hiking Gear', 'Complete hiking gear set', 300, 17),
( 'Camping Stove', 'Portable camping stove', 80, 17),
( 'Cello Case', 'Protective case for cello', 150, 18),
( 'Trombone', 'Brass trombone for musicians', 500, 18),
( 'Inkjet Paper', 'High-quality inkjet paper', 20, 19),
( 'Notebooks', 'Pack of lined notebooks', 10, 19),
( 'Sculpting Tools', 'Tools for sculpting', 40, 20),
( 'Calligraphy Set', 'Everything you need for calligraphy', 50, 20),
( 'Wireless Mouse', 'Ergonomic wireless mouse', 40, 1),
( 'Tablet Case', 'Protective case for tablets', 25, 1),
( 'Travel Journal', 'Beautiful travel journal', 20, 2),
( 'Recipe Box', 'Wooden recipe box for recipes', 35, 4),
( 'Scarf', 'Warm winter scarf', 25, 3),
( 'Rain Jacket', 'Lightweight rain jacket', 60, 3),
( 'Waffle Maker', 'Delicious waffle maker', 70, 4),
( 'Pizza Oven', 'Portable pizza oven', 250, 4),
( 'Cricket Bat', 'Professional cricket bat', 90, 5),
( 'Soccer Cleats', 'High-quality soccer cleats', 120, 5),
( 'Lego Creator', 'Creative Lego set', 70, 6),
( 'Trampoline', 'Fun trampoline for kids', 300, 6),
( 'Face Mask', 'Protective face mask', 10, 7),
( 'Makeup Brush', 'Professional makeup brush', 15, 7),
( 'Car Air Freshener', 'Fresh scent for cars', 5, 8),
( 'Tire Pressure Gauge', 'Essential tool for car maintenance', 15, 8),
( 'Kale', 'Fresh kale for salads', 3, 9),
( 'Quinoa', 'Nutritious quinoa grain', 10, 9),
( 'Vitamin D', 'Essential vitamin D supplements', 20, 10),
( 'Herbal Supplements', 'Natural herbal supplements', 15, 10),
( 'Sticky Labels', 'Pack of sticky labels', 10, 11),
( 'Crafting Kit', 'Complete crafting kit', 50, 11),
( 'Silver Bracelet', 'Elegant silver bracelet', 500, 12),
( 'Gold Watch', 'Luxury gold watch', 1000, 12),
( 'File Cabinet', 'Secure file cabinet', 200, 13),
( 'Sofa', 'Comfortable sofa for living room', 600, 13),
( 'Flip-Flops', 'Summer flip-flops', 15, 14),
( 'Formal Shoes', 'Elegant formal shoes', 100, 14),
( 'Watering Wand', 'Gardening watering wand', 20, 15),
( 'Garden Sprinkler', 'Automatic garden sprinkler', 30, 15),
( 'Pet Grooming Kit', 'Complete grooming kit for pets', 50, 16),
( 'Pet Carrier Bag', 'Stylish carrier bag for pets', 30, 16),
( 'Tent', 'Family camping tent', 250, 17),
( 'Camping Chair', 'Portable camping chair', 40, 17),
( 'Piccolo', 'Musical piccolo instrument', 150, 18),
( 'Bassoon', 'Professional bassoon instrument', 800, 18),
( 'Photo Paper', 'Glossy photo paper', 20, 19),
( 'Bookmarks', 'Pack of bookmarks', 5, 19),
( 'Art Supplies', 'Complete art supplies for drawing', 50, 20),
( 'DIY Kit', 'Complete DIY project kit', 40, 20),
( 'Fitness Tracker', 'Smart fitness tracker', 99, 1),
( 'Sound Bar', 'Home theater sound bar', 299, 1),
( 'Travel Guide Book', 'Informative travel guide book', 15, 2),
( 'Skillet', 'Non-stick skillet for cooking', 35, 4),
( 'Sweater', 'Cozy sweater for winter', 50, 3),
( 'Electric Steamer', 'Healthy electric steamer', 70, 4),
( 'Toaster Oven', 'Versatile toaster oven', 100, 4),
( 'Golf Clubs', 'Complete golf club set', 800, 5),
( 'Bicycle', 'Mountain bike for outdoor adventures', 400, 5),
( 'Craft Kit', 'Complete crafting kit for kids', 30, 6),
( 'Origami Paper', 'Pack of origami paper', 10, 6),
( 'Lip Balm', 'Moisturizing lip balm', 5, 7),
( 'Sunscreen Lotion', 'SPF 50 sunscreen lotion', 15, 7),
( 'Car Vacuum', 'Portable car vacuum cleaner', 50, 8),
( 'Tire Inflator', 'Compact tire inflator', 30, 8),
( 'Cherries', 'Fresh cherries', 5, 9),
( 'Coconut Water', 'Refreshing coconut water', 3, 9),
( 'Iron Supplements', 'Essential iron supplements', 12, 10),
( 'Chocolates', 'Delicious chocolates', 10, 10),
( 'Gift Card', 'Gift card for any purchase', 50, 11);
--Good
INSERT INTO Shipping_Address ( Sh_Country, Sh_State, Sh_City, Sh_Street, Postal_Code) VALUES
('USA', 'California', 'Los Angeles', '123 Sunset Blvd', '90001'),
('USA', 'California', 'San Francisco', '456 Golden Gate Ave', '94102'),
('USA', 'Texas', 'Houston', '789 Pine St', '77001'),
('USA', 'New York', 'New York City', '101 Broadway', '10001'),
('USA', 'Illinois', 'Chicago', '202 Michigan Ave', '60601'),
('Canada', 'Ontario', 'Toronto', '303 Queen St', 'M5H 2N2'),
('Canada', 'British Columbia', 'Vancouver', '404 Granville St', 'V6C 1Z1'),
('UK', 'England', 'London', '505 Baker St', 'NW1 6XE'),
('UK', 'Scotland', 'Edinburgh', '606 Royal Mile', 'EH1 2PB'),
( 'Australia', 'New South Wales', 'Sydney', '707 George St', '2000'),
( 'Australia', 'Victoria', 'Melbourne', '808 Collins St', '3000'),
( 'Germany', 'Bavaria', 'Munich', '909 Marienplatz', '80331'),
( 'Germany', 'Berlin', 'Berlin', '101 Alexanderplatz', '10178'),
( 'France', 'Ile-de-France', 'Paris', '202 Champs-Elysees', '75008'),
( 'France', 'Provence', 'Marseille', '303 Vieux Port', '13001'),
( 'Italy', 'Lazio', 'Rome', '404 Vatican City', '00120'),
( 'Italy', 'Lombardy', 'Milan', '505 Duomo', '20122'),
( 'Spain', 'Madrid', 'Madrid', '606 Gran Via', '28001'),
( 'Spain', 'Catalonia', 'Barcelona', '707 La Rambla', '08002'),
( 'Netherlands', 'North Holland', 'Amsterdam', '808 Dam Square', '1012 JS'),
( 'Sweden', 'Stockholm', 'Stockholm', '909 Gamla Stan', '111 29'),
( 'Norway', 'Oslo', 'Oslo', '101 Karl Johans Gate', '0154'),
( 'Finland', 'Uusimaa', 'Helsinki', '202 Senate Square', '00170'),
( 'Denmark', 'Capital Region', 'Copenhagen', '303 Nyhavn', '1051'),
( 'Belgium', 'Brussels', 'Brussels', '404 Grand Place', '1000'),
( 'Austria', 'Vienna', 'Vienna', '505 Ringstrasse', '1010'),
( 'Switzerland', 'Zurich', 'Zurich', '606 Bahnhofstrasse', '8001'),
( 'Ireland', 'Leinster', 'Dublin', '707 O’Connell St', 'D01'),
( 'Portugal', 'Lisbon', 'Lisbon', '808 Rua Augusta', '1100-001'),
( 'Greece', 'Attica', 'Athens', '909 Acropolis', '105 58'),
( 'Turkey', 'Istanbul', 'Istanbul', '101 Istiklal Ave', '34400'),
( 'Japan', 'Tokyo', 'Tokyo', '202 Shibuya', '150-0002'),
( 'China', 'Beijing', 'Beijing', '303 Tiananmen Square', '100000'),
( 'India', 'Maharashtra', 'Mumbai', '404 Marine Drive', '400020'),
( 'South Africa', 'Gauteng', 'Johannesburg', '505 Nelson Mandela Square', '2146'),
( 'Brazil', 'Sao Paulo', 'Sao Paulo', '606 Avenida Paulista', '01310-100'),
( 'Argentina', 'Buenos Aires', 'Buenos Aires', '707 Avenida 9 de Julio', 'C1010'),
( 'Mexico', 'Mexico City', 'Mexico City', '808 Paseo de la Reforma', '06030'),
( 'Russia', 'Moscow', 'Moscow', '909 Red Square', '101000'),
( 'India', 'Karnataka', 'Bangalore', '101 MG Road', '560001'),
( 'Singapore', 'Central', 'Singapore', '202 Orchard Road', '238896'),
( 'Thailand', 'Bangkok', 'Bangkok', '303 Khao San Road', '10200'),
( 'Malaysia', 'Kuala Lumpur', 'Kuala Lumpur', '404 Petronas Towers', '50088'),
( 'Philippines', 'Metro Manila', 'Quezon City', '505 Quezon Ave', '1100'),
( 'Vietnam', 'Hanoi', 'Hanoi', '606 Hoan Kiem Lake', '100000'),
( 'Israel', 'Tel Aviv', 'Tel Aviv', '707 Rothschild Blvd', '668811'),
( 'Egypt', 'Cairo', 'Cairo', '808 Tahrir Square', '11511'),
( 'Saudi Arabia', 'Riyadh', 'Riyadh', '909 Al Olaya Street', '12345'),
( 'UAE', 'Dubai', 'Dubai', '101 Burj Khalifa', '123456'),
( 'Jordan', 'Amman', 'Amman', '202 Rainbow Street', '11110'),
( 'Lebanon', 'Beirut', 'Beirut', '303 Hamra St', '1100'),
( 'Iraq', 'Baghdad', 'Baghdad', '404 Al-Mansur', '10001'),
( 'Syria', 'Damascus', 'Damascus', '505 Al-Merjeh', '12001'),
( 'Oman', 'Muscat', 'Muscat', '606 Al-Alam Street', '100'),
( 'Kuwait', 'Kuwait City', 'Kuwait City', '707 Al-Mubarakiya', '13001'),
( 'Qatar', 'Doha', 'Doha', '808 Corniche', '15001'),
( 'Bahrain', 'Manama', 'Manama', '909 Adliya', '10001'),
( 'Yemen', 'Sanaa', 'Sanaa', '101 Bab al-Yemen', '999'),
( 'Bangladesh', 'Dhaka', 'Dhaka', '202 Dhaka Cantonment', '1200'),
( 'Pakistan', 'Karachi', 'Karachi', '303 Saddar', '74400'),
( 'Sri Lanka', 'Colombo', 'Colombo', '404 Galle Face', '00100'),
( 'Nepal', 'Kathmandu', 'Kathmandu', '505 Thamel', '44600'),
( 'Maldives', 'Malé', 'Malé', '606 Boduthakurufaanu Magu', '20112'),
( 'Bhutan', 'Thimphu', 'Thimphu', '707 Norzin Lam', '11001'),
( 'Afghanistan', 'Kabul', 'Kabul', '808 Chicken Street', '1001'),
( 'Kazakhstan', 'Almaty', 'Almaty', '909 Dostyk Ave', '050000'),
( 'Uzbekistan', 'Tashkent', 'Tashkent', '101 Amir Timur Ave', '100000'),
( 'Turkmenistan', 'Ashgabat', 'Ashgabat', '202 Gurbansoltan eje', '744000'),
( 'Kyrgyzstan', 'Bishkek', 'Bishkek', '303 Ala-Too Square', '720000'),
( 'Tajikistan', 'Dushanbe', 'Dushanbe', '404 Rudaki Ave', '734000'),
( 'Georgia', 'Tbilisi', 'Tbilisi', '505 Rustaveli Ave', '0108'),
( 'Armenia', 'Yerevan', 'Yerevan', '606 Republic Square', '0001'),
( 'Azerbaijan', 'Baku', 'Baku', '707 Fountain Square', '1000'),
( 'Moldova', 'Chișinău', 'Chișinău', '808 Stefan Cel Mare Blvd', '2001'),
( 'Belarus', 'Minsk', 'Minsk', '909 Independence Ave', '220000'),
( 'Lithuania', 'Vilnius', 'Vilnius', '101 Gediminas Ave', '01104'),
( 'Latvia', 'Riga', 'Riga', '202 Freedom Monument', '1050'),
( 'Estonia', 'Tallinn', 'Tallinn', '303 Tallinna Raekoda', '10146'),
( 'Slovakia', 'Bratislava', 'Bratislava', '404 Hlavne Námestie', '81101'),
( 'Hungary', 'Budapest', 'Budapest', '505 Andrássy Avenue', '1061'),
( 'Czech Republic', 'Prague', 'Prague', '606 Wenceslas Square', '11000'),
( 'Poland', 'Warsaw', 'Warsaw', '707 Krakowskie Przedmieście', '00-001'),
( 'Slovenia', 'Ljubljana', 'Ljubljana', '808 Prešeren Square', '1000'),
( 'Croatia', 'Zagreb', 'Zagreb', '909 Ban Jelačić Square', '10000'),
( 'Romania', 'Bucharest', 'Bucharest', '101 Calea Victoriei', '010061'),
( 'Serbia', 'Belgrade', 'Belgrade', '202 Knez Mihailova', '11000'),
( 'Montenegro', 'Podgorica', 'Podgorica', '303 Njegoševa', '81000'),
( 'Bosnia and Herzegovina', 'Sarajevo', 'Sarajevo', '404 Baščaršija', '71000'),
( 'North Macedonia', 'Skopje', 'Skopje', '505 Macedonia Square', '1000'),
( 'Albania', 'Tirana', 'Tirana', '606 Skanderbeg Square', '1001'),
( 'Kosovo', 'Pristina', 'Pristina', '707 Mother Teresa Square', '10000'),
( 'Malta', 'Valletta', 'Valletta', '808 Republic Street', 'VLT1111'),
( 'Iceland', 'Reykjavik', 'Reykjavik', '909 Laugavegur', '101'),
( 'Cyprus', 'Nicosia', 'Nicosia', '101 Ledra Street', '1010'),
( 'Liechtenstein', 'Vaduz', 'Vaduz', '202 Vaduz Castle', '9490'),
( 'Monaco', 'Monaco', 'Monaco', '303 Monte Carlo', '98000'),
( 'San Marino', 'San Marino', 'San Marino', '404 Guaita', '47890'),
( 'Vatican City', 'Vatican City', 'Vatican City', '505 Vatican Museums', '00120'),
( 'Greenland', 'Nuuk', 'Nuuk', '606 Kivioq St', '3900'),
( 'Faroe Islands', 'Tórshavn', 'Tórshavn', '707 Norðari Ringvegur', '100'),
( 'Svalbard', 'Longyearbyen', 'Longyearbyen', '808 Svalbard Global Seed Vault', '9170'),
( 'New Zealand', 'Wellington', 'Wellington', '909 Lambton Quay', '6011'),
( 'Fiji', 'Suva', 'Suva', '101 Victoria Parade', '0100'),
( 'Papua New Guinea', 'Port Moresby', 'Port Moresby', '202 Independence Ave', '121'),
( 'Samoa', 'Apia', 'Apia', '303 Beach Road', '0001'),
( 'Tonga', 'Nukuʻalofa', 'Nukuʻalofa', '404 Vuna Rd', '1201'),
( 'Marshall Islands', 'Majuro', 'Majuro', '505 Ajeltake Rd', '96960'),
( 'Micronesia', 'Palikir', 'Palikir', '606 Sokehs Ridge', '96941'),
( 'Palau', 'Ngerulmud', 'Ngerulmud', '707 Melkeok', '96939'),
( 'Tuvalu', 'Funafuti', 'Funafuti', '808 Vaiaku', '0000'),
( 'Vanuatu', 'Port Vila', 'Port Vila', '909 Kumul Highway', '0000'),
( 'Solomon Islands', 'Honiara', 'Honiara', '101 Mendana Ave', '0000'),
( 'Kiribati', 'Tarawa', 'Tarawa', '202 Bairiki', '0000'),
( 'Nauru', 'Yaren', 'Yaren', '303 Yaren', '0000'),
( 'Kosrae', 'Kosrae', 'Kosrae', '404 Lelu', '96944'),
( 'Pohnpei', 'Pohnpei', 'Pohnpei', '505 Kolonia', '96941'),
( 'Chuuk', 'Chuuk', 'Chuuk', '606 Weno', '96942'),
( 'Yap', 'Yap', 'Yap', '707 Colonia', '96943'),
( 'Bermuda', 'Hamilton', 'Hamilton', '808 Front St', 'HM 12'),
( 'Cayman Islands', 'George Town', 'George Town', '909 North Church St', 'KY1-1201'),
( 'Bahamas', 'Nassau', 'Nassau', '101 Bay St', 'Nassau'),
( 'Turks and Caicos Islands', 'Cockburn Town', 'Cockburn Town', '202 Grand Turk', 'TKCA 1ZZ'),
( 'British Virgin Islands', 'Road Town', 'Road Town', '303 Waterfront Dr', 'Tortola'),
( 'U.S. Virgin Islands', 'Charlotte Amalie', 'Charlotte Amalie', '404 Main St', '00802'),
( 'Puerto Rico', 'San Juan', 'San Juan', '505 Calle San Francisco', '00901'),
( 'Guam', 'Hagåtña', 'Hagåtña', '606 Marine Corps Dr', '96910'),
( 'American Samoa', 'Pago Pago', 'Pago Pago', '707 Pago Pago', '96799'),
( 'Northern Mariana Islands', 'Saipan', 'Saipan', '808 Beach Rd', '96950'),
( 'Northern Cyprus', 'Nicosia', 'Nicosia', '909 Atatürk Avenue', '99010'),
( 'Greenland', 'Nuuk', 'Nuuk', '101 Ivaaraq St', '3900'),
( 'Saint Pierre and Miquelon', 'Saint-Pierre', 'Saint-Pierre', '202 Rue de la République', '97500'),
( 'Wallis and Futuna', 'Mata-Utu', 'Mata-Utu', '303 Rue de l’Église', '98600'),
( 'Saint Martin', 'Marigot', 'Marigot', '404 Rue de la République', '97150'),
( 'Anguilla', 'The Valley', 'The Valley', '505 The Valley', 'AI-2640'),
( 'Montserrat', 'Plymouth', 'Plymouth', '606 Plymouth', 'MSR 1310'),
( 'Saint Kitts and Nevis', 'Basseterre', 'Basseterre', '707 Main St', 'SKB 1000'),
( 'Saint Lucia', 'Castries', 'Castries', '808 Avenue des Casernes', 'LC 0001'),
( 'Saint Vincent and the Grenadines', 'Kingstown', 'Kingstown', '909 Kingstown', 'VC 0001'),
( 'Barbados', 'Bridgetown', 'Bridgetown', '101 Broad Street', 'BB 0001'),
( 'Dominica', 'Roseau', 'Roseau', '202 King George V Street', '00101'),
( 'Grenada', 'St. George’s', 'St. George’s', '303 Church Street', '0001'),
( 'Antigua and Barbuda', 'St. John’s', 'St. John’s', '404 High Street', '0001'),
( 'Bonaire', 'Kralendijk', 'Kralendijk', '505 Kaya Grandi', '0000'),
( 'Sint Eustatius', 'Oranjestad', 'Oranjestad', '606 Van Gogh Street', '0000'),
( 'Saba', 'The Bottom', 'The Bottom', '707 The Bottom', '0000'),
( 'Montserrat', 'Plymouth', 'Plymouth', '808 Plymouth', 'MSR 1310'),
( 'Falkland Islands', 'Stanley', 'Stanley', '909 Ross Road', 'FIQQ 1ZZ'),
( 'South Georgia and the South Sandwich Islands', 'King Edward Point', 'King Edward Point', '101 King Edward Point', 'FIQQ 1ZZ'),
( 'Pitcairn Islands', 'Adamstown', 'Adamstown', '202 Main Street', '0000'),
( 'Heard Island and McDonald Islands', 'Heard Island', 'Heard Island', '303 Heard Island', '0000');

DELETE FROM payment_method
--Good
INSERT INTO Customer_Payment (Cus_ID, Pay_ID) VALUES
(1, 1), (1, 2), (2, 2), (2, 4), (3, 1),  (4, 3),  (5, 4),
(6, 1),(6, 2),  (7, 2),  (8, 3),(8, 2),  (9, 4),  (10, 1),
(11, 2),(11, 3),(11, 4) ,(12, 3), (13, 1), (14, 4), (15, 1),
(16, 2), (17, 3), (18, 4), (19, 1), (20, 2),
(21, 1), (22, 3), (23, 4), (24, 1), (25, 2),
(26, 3), (27, 4), (28, 1),(28, 3), (29, 2), (30, 3),
(31, 4), (32, 1), (33, 2), (34, 3), (35, 4),
(36, 1), (37, 2), (38, 3), (39, 4), (40, 1),
(41, 2), (42, 3), (43, 4),(43, 2), (44, 1), (45, 2),
(46, 3), (47, 4),(47,3), (48, 1), (49, 2), (50, 3),
(51, 4), (52, 1), (53, 2), (54, 3), (55, 4),
(56, 1), (57, 2), (58, 3), (59, 4), (60, 1),
(61, 2), (62, 3), (63, 4),(63, 3), (64, 1), (65, 2),
(66, 3), (67, 4), (68, 1), (69, 2),(69, 3), (70, 3),
(71, 4),(71, 1), (72, 1), (73, 2), (74, 3), (75, 4),
(76, 1), (77, 2), (78, 3), (79, 4), (80, 1),
(81, 2),(81, 3), (82, 3),(82, 1), (83, 4), (84, 1), (85, 2),
(86, 3), (87, 4), (88, 1),(88, 3), (89, 2), (90, 3),
(91, 4), (92, 1), (92, 2),(93, 2), (94, 3), (95, 4),
(96, 1), (97, 2), (98, 3),(98, 4), (99, 4), (100, 1);
-- Update card number and expiration date for credit (Pay_ID = 1)
UPDATE customer_payment
SET Card_Num = '4000123412341234', Expiration_Date = '2025-05-31'
WHERE Cus_ID = 1 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '4111111111111111', Expiration_Date = '2024-12-31'
WHERE Cus_ID = 6 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '4222222222222222', Expiration_Date = '2026-07-30'
WHERE Cus_ID = 10 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '4333333333333333', Expiration_Date = '2023-11-30'
WHERE Cus_ID = 13 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '4444444444444444', Expiration_Date = '2025-04-30'
WHERE Cus_ID = 15 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '4555555555555555', Expiration_Date = '2026-01-31'
WHERE Cus_ID = 19 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '4666666666666666', Expiration_Date = '2027-09-30'
WHERE Cus_ID = 21 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '4777777777777777', Expiration_Date = '2024-03-31'
WHERE Cus_ID = 24 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '4888888888888888', Expiration_Date = '2025-02-28'
WHERE Cus_ID = 28 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '4999999999999999', Expiration_Date = '2025-10-31'
WHERE Cus_ID = 32 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '5000123412341234', Expiration_Date = '2026-06-30'
WHERE Cus_ID = 36 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '5111111111111111', Expiration_Date = '2024-12-31'
WHERE Cus_ID = 40 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '5222222222222222', Expiration_Date = '2025-08-31'
WHERE Cus_ID = 44 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '5333333333333333', Expiration_Date = '2026-04-30'
WHERE Cus_ID = 48 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '5444444444444444', Expiration_Date = '2027-07-31'
WHERE Cus_ID = 52 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '5555555555555555', Expiration_Date = '2024-11-30'
WHERE Cus_ID = 56 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '5666666666666666', Expiration_Date = '2025-09-30'
WHERE Cus_ID = 60 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '5777777777777777', Expiration_Date = '2026-03-31'
WHERE Cus_ID = 64 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '5888888888888888', Expiration_Date = '2025-06-30'
WHERE Cus_ID = 68 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '5999999999999999', Expiration_Date = '2027-05-31'
WHERE Cus_ID = 71 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '6000123412341234', Expiration_Date = '2026-12-31'
WHERE Cus_ID = 72 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '6111111111111111', Expiration_Date = '2024-10-31'
WHERE Cus_ID = 76 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '6222222222222222', Expiration_Date = '2025-11-30'
WHERE Cus_ID = 80 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '6333333333333333', Expiration_Date = '2026-08-31'
WHERE Cus_ID = 84 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '6444444444444444', Expiration_Date = '2027-04-30'
WHERE Cus_ID = 88 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '6555555555555555', Expiration_Date = '2024-07-31'
WHERE Cus_ID = 92 AND Pay_ID = 1;

UPDATE customer_payment
SET Card_Num = '6666666666666666', Expiration_Date = '2025-01-31'
WHERE Cus_ID = 96 AND Pay_ID = 1;

-- For other payment methods (Pay_ID != 1), leave Card_Num and Expiration_Date as NULL

--Not Good: Modify SP_Name
INSERT INTO Sales_Person ( SP_Name, Phone_Number) VALUES
('John Smith', '123-456-0001'),
('Emily Johnson', '123-456-0002'),
('Michael Brown', '123-456-0003'),
('Jessica Williams', '123-456-0004'),
('David Jones', '123-456-0005'),
('Sarah Davis', '123-456-0006'),
('James Miller', '123-456-0007'),
('Linda Garcia', '123-456-0008'),
('Robert Wilson', '123-456-0009'),
( 'Karen Martinez', '123-456-0010'),
( 'Richard Anderson', '123-456-0011'),
( 'Mary Thomas', '123-456-0012'),
( 'Charles Lee', '123-456-0013'),
( 'Patricia Hernandez', '123-456-0014'),
( 'Christopher Moore', '123-456-0015'),
( 'Barbara Taylor', '123-456-0016'),
( 'Daniel Clark', '123-456-0017'),
( 'Nancy Rodriguez', '123-456-0018'),
( 'Matthew Lewis', '123-456-0019'),
( 'Susan Walker', '123-456-0020'),
( 'Paul Hall', '123-456-0021'),
( 'Laura Allen', '123-456-0022'),
( 'Mark Young', '123-456-0023'),
( 'Lisa King', '123-456-0024'),
( 'Steven Wright', '123-456-0025'),
( 'Angela Scott', '123-456-0026'),
( 'Joshua Green', '123-456-0027'),
( 'Karen Adams', '123-456-0028'),
( 'Kevin Baker', '123-456-0029'),
( 'Betty Gonzalez', '123-456-0030'),
( 'Anthony Nelson', '123-456-0031'),
( 'Megan Carter', '123-456-0032'),
( 'Brian Mitchell', '123-456-0033'),
( 'Amy Perez', '123-456-0034'),
( 'Donald Roberts', '123-456-0035'),
( 'Samantha Turner', '123-456-0036'),
( 'Edward Phillips', '123-456-0037'),
( 'Carol Campbell', '123-456-0038'),
( 'Jason Parker', '123-456-0039'),
( 'Sandra Evans', '123-456-0040'),
( 'Gary Edwards', '123-456-0041'),
( 'Ashley Collins', '123-456-0042'),
( 'Stephen Stewart', '123-456-0043'),
( 'Rebecca Sanchez', '123-456-0044'),
( 'Justin Morris', '123-456-0045'),
( 'Sharon Rogers', '123-456-0046'),
( 'Benjamin Reed', '123-456-0047'),
( 'Cynthia Cook', '123-456-0048'),
( 'Larry Morgan', '123-456-0049'),
( 'Kathleen Bell', '123-456-0050');

--Good
INSERT INTO Orders ( Order_Date, order_status, Ship_Date, Cus_ID, Pay_ID, SP_ID, Total_Price, Tax_Amount, Freight) VALUES
('2024-01-01', 'Delivered', '2024-01-03', 12, 1, 5, 100, 10, 5),
('2024-01-02', 'Pending', '2024-01-05', 15, 2, 10, 200, 20, 10),
('2024-01-03', 'Cancelled', '2024-01-07', 8, 3, 7, 150, 15, 8),
('2024-01-05', 'Delivered', '2024-01-10', 23, 1, 6, 220, 22, 12),
('2024-01-08', 'Pending', '2024-01-11', 4, 2, 5, 180, 18, 9),
('2024-01-10', 'Delivered', '2024-01-13', 11, 3, 3, 300, 30, 15),
('2024-01-12', 'Pending', '2024-01-15', 7, 1, 2, 250, 25, 12),
('2024-01-14', 'Cancelled', '2024-01-18', 19, 2, 9, 120, 12, 6),
('2024-01-16', 'Delivered', '2024-01-20', 10, 3, 7, 320, 32, 18),
('2024-01-18', 'Pending', '2024-01-22', 6, 1, 5, 270, 27, 14),
--ntinuing from 11th row to the 200th row
('2024-01-20', 'Delivered', '2024-01-25', 21, 2, 8, 400, 40, 20),
('2024-01-22', 'Cancelled', '2024-01-28', 3, 3, 15, 350, 35, 18),
('2024-01-24', 'Pending', '2024-01-30', 18, 1, 10, 500, 50, 25),
('2024-01-26', 'Delivered', '2024-02-01', 25, 2, 12, 410, 41, 21),
('2024-01-28', 'Cancelled', '2024-02-03', 9, 3, 9, 370, 37, 19),
('2024-01-30', 'Pending', '2024-02-05', 6, 1, 11, 290, 29, 14),
('2024-02-02', 'Delivered', '2024-02-07', 29, 3, 4, 450, 45, 23),
('2024-02-05', 'Cancelled', '2024-02-10', 14, 2, 7, 330, 33, 17),
('2024-02-07', 'Delivered', '2024-02-12', 5, 1, 14, 600, 60, 30),
('2024-02-09', 'Pending', '2024-02-14', 8, 2, 16, 410, 41, 21),

('2024-02-11', 'Delivered', '2024-02-16', 12, 1, 1, 390, 39, 20),
('2024-02-14', 'Cancelled', '2024-02-19', 17, 3, 19, 550, 55, 28),
('2024-02-16', 'Pending', '2024-02-21', 24, 2, 18, 470, 47, 24),
('2024-02-18', 'Delivered', '2024-02-23', 13, 1, 20, 520, 52, 26),
('2024-02-20', 'Cancelled', '2024-02-26', 28, 3, 21, 440, 44, 22),
('2024-02-23', 'Pending', '2024-02-28', 15, 1, 17, 600, 60, 30),
('2024-02-25', 'Delivered', '2024-03-02', 22, 2, 22, 510, 51, 25),
('2024-02-27', 'Cancelled', '2024-03-04', 2, 3, 6, 530, 53, 27),
('2024-03-01', 'Delivered', '2024-03-06', 30, 1, 23, 460, 46, 23),
('2024-03-03', 'Pending', '2024-03-08', 26, 2, 13, 610, 61, 31),

--ntinue adding similar rows from 31 to 200
('2024-03-05', 'Delivered', '2024-03-10', 9, 3, 5, 620, 62, 32),
('2024-03-07', 'Cancelled', '2024-03-12', 18, 2, 10, 350, 35, 18),
('2024-03-09', 'Pending', '2024-03-14', 21, 1, 2, 430, 43, 22),
('2024-03-12', 'Delivered', '2024-03-17', 28, 3, 14, 570, 57, 28),
('2024-03-15', 'Cancelled', '2024-03-20', 30, 2, 6, 420, 42, 21),
('2024-03-18', 'Pending', '2024-03-23', 3, 1, 8, 530, 53, 27),
('2024-03-21', 'Delivered', '2024-03-26', 5, 3, 9, 410, 41, 21),
('2024-03-24', 'Cancelled', '2024-03-29', 10, 2, 16, 450, 45, 22),
('2024-03-27', 'Pending', '2024-04-01', 17, 1, 11, 330, 33, 16),
('2024-03-30', 'Delivered', '2024-04-04', 27, 3, 19, 520, 52, 26),
--ntinuing from 41st row to 200th row
('2024-04-02', 'Cancelled', '2024-04-07', 31, 2, 15, 450, 45, 22),
('2024-04-04', 'Delivered', '2024-04-09', 32, 1, 13, 500, 50, 25),
('2024-04-06', 'Pending', '2024-04-11', 33, 3, 9, 600, 60, 30),
('2024-04-08', 'Delivered', '2024-04-13', 34, 2, 18, 470, 47, 24),
('2024-04-10', 'Cancelled', '2024-04-15', 35, 1, 21, 410, 41, 21),
('2024-04-12', 'Pending', '2024-04-17', 36, 3, 7, 550, 55, 28),
('2024-04-14', 'Delivered', '2024-04-19', 37, 2, 5, 630, 63, 32),
('2024-04-16', 'Cancelled', '2024-04-21', 38, 1, 22, 480, 48, 24),
('2024-04-18', 'Pending', '2024-04-23', 39, 3, 20, 590, 59, 29),
('2024-04-20', 'Delivered', '2024-04-25', 40, 2, 23, 530, 53, 27),

('2024-04-22', 'Cancelled', '2024-04-27', 41, 1, 24, 600, 60, 30),
('2024-04-24', 'Pending', '2024-04-29', 42, 3, 25, 610, 61, 31),
('2024-04-26', 'Delivered', '2024-05-01', 43, 2, 26, 520, 52, 26),
('2024-04-28', 'Cancelled', '2024-05-03', 44, 1, 27, 470, 47, 24),
('2024-04-30', 'Pending', '2024-05-05', 45, 3, 28, 480, 48, 24),
('2024-05-02', 'Delivered', '2024-05-07', 46, 2, 29, 490, 49, 24),
('2024-05-04', 'Cancelled', '2024-05-09', 47, 1, 30, 600, 60, 30),
('2024-05-06', 'Pending', '2024-05-11', 48, 3, 31, 550, 55, 28),
('2024-05-08', 'Delivered', '2024-05-13', 49, 2, 32, 530, 53, 27),
('2024-05-10', 'Cancelled', '2024-05-15', 50, 1, 33, 600, 60, 30),

('2024-05-12', 'Pending', '2024-05-17', 1, 3, 34, 620, 62, 31),
('2024-05-14', 'Delivered', '2024-05-19', 2, 2, 35, 430, 43, 22),
('2024-05-16', 'Cancelled', '2024-05-21', 3, 1, 36, 550, 55, 28),
('2024-05-18', 'Pending', '2024-05-23', 4, 3, 37, 510, 51, 25),
('2024-05-20', 'Delivered', '2024-05-25', 5, 2, 38, 600, 60, 30),
('2024-05-22', 'Cancelled', '2024-05-27', 6, 1, 39, 590, 59, 29),
('2024-05-24', 'Pending', '2024-05-29', 7, 3, 40, 480, 48, 24),
('2024-05-26', 'Delivered', '2024-05-31', 8, 2, 41, 510, 51, 25),
('2024-05-28', 'Cancelled', '2024-06-02', 9, 1, 42, 470, 47, 24),
('2024-05-30', 'Pending', '2024-06-04', 10, 3, 43, 520, 52, 26),

('2024-06-02', 'Delivered', '2024-06-07', 11, 2, 44, 550, 55, 28),
('2024-06-04', 'Cancelled', '2024-06-09', 12, 1, 45, 600, 60, 30),
('2024-06-06', 'Pending', '2024-06-11', 13, 3, 46, 530, 53, 27),
('2024-06-08', 'Delivered', '2024-06-13', 14, 2, 47, 620, 62, 31),
('2024-06-10', 'Cancelled', '2024-06-15', 15, 1, 48, 480, 48, 24),
('2024-06-12', 'Pending', '2024-06-17', 16, 3, 49, 470, 47, 24),
('2024-06-14', 'Delivered', '2024-06-19', 17, 2, 50, 610, 61, 31),
('2024-06-16', 'Cancelled', '2024-06-21', 18, 1, 30, 590, 59, 29),
('2024-06-18', 'Pending', '2024-06-23', 19, 3, 31, 500, 50, 25),
('2024-06-20', 'Delivered', '2024-06-25', 20, 2, 32, 620, 62, 31),

('2024-06-22', 'Cancelled', '2024-06-27', 21, 1, 33, 550, 55, 28),
('2024-06-24', 'Pending', '2024-06-29', 22, 3, 34, 540, 54, 27),
('2024-06-26', 'Delivered', '2024-07-01', 23, 2, 35, 480, 48, 24),
('2024-06-28', 'Cancelled', '2024-07-03', 24, 1, 36, 600, 60, 30),
('2024-06-30', 'Pending', '2024-07-05', 25, 3, 37, 520, 52, 26),
('2024-07-02', 'Delivered', '2024-07-07', 26, 2, 38, 610, 61, 31),
('2024-07-04', 'Cancelled', '2024-07-09', 27, 1, 39, 470, 47, 24),
('2024-07-06', 'Pending', '2024-07-11', 28, 3, 40, 550, 55, 28),
('2024-07-08', 'Delivered', '2024-07-13', 29, 2, 41, 630, 63, 32),
('2024-07-10', 'Cancelled', '2024-07-15', 30, 1, 42, 480, 48, 24),
('2025-02-03', 'Delivered', '2025-02-08', 21, 2, 42, 510, 51, 26),
('2025-02-05', 'Cancelled', '2025-02-10', 22, 1, 43, 570, 57, 28),
('2025-02-07', 'Pending', '2025-02-12', 23, 3, 44, 430, 43, 21),
('2025-02-09', 'Delivered', '2025-02-14', 24, 2, 45, 490, 49, 24),
('2025-02-11', 'Cancelled', '2025-02-16', 25, 1, 46, 550, 55, 27),
('2025-02-13', 'Pending', '2025-02-18', 26, 3, 47, 460, 46, 23),
('2025-02-15', 'Delivered', '2025-02-20', 27, 2, 48, 520, 52, 25),
('2025-02-17', 'Cancelled', '2025-02-22', 28, 1, 49, 580, 58, 29),
('2025-02-19', 'Pending', '2025-02-24', 29, 3, 50, 440, 44, 22),

( '2025-02-21', 'Delivered', '2025-02-26', 30, 2, 5, 500, 50, 25),
( '2025-02-23', 'Cancelled', '2025-02-28', 31, 1, 30, 560, 56, 28),
( '2025-02-25', 'Pending', '2025-03-02', 32, 3, 32, 470, 47, 23),
( '2025-02-27', 'Delivered', '2025-03-04', 33, 2, 33, 530, 53, 26),
( '2025-03-01', 'Cancelled', '2025-03-06', 34, 1, 34, 590, 59, 29),
( '2025-03-03', 'Pending', '2025-03-08', 35, 3, 34, 480, 48, 24),
( '2025-03-05', 'Delivered', '2025-03-10', 36, 2, 45, 540, 54, 27),
( '2025-03-07', 'Cancelled', '2025-03-12', 37, 1, 44, 600, 60, 30),
( '2025-03-09', 'Pending', '2025-03-14', 38, 3, 49, 490, 49, 25),
( '2025-03-11', 'Delivered', '2025-03-16', 39, 2, 46, 550, 55, 28),

( '2025-03-13', 'Cancelled', '2025-03-18', 40, 1, 50, 460, 46, 23),
( '2025-03-15', 'Pending', '2025-03-20', 41, 3, 49, 520, 52, 26),
( '2025-03-17', 'Delivered', '2025-03-22', 42, 2, 4, 580, 58, 29),
( '2025-03-19', 'Cancelled', '2025-03-24', 43, 1, 10, 470, 47, 24),
( '2025-03-21', 'Pending', '2025-03-26', 44, 3, 11, 530, 53, 27),
( '2025-03-23', 'Delivered', '2025-03-28', 45, 2, 11, 590, 59, 30),
( '2025-03-25', 'Cancelled', '2025-03-30', 46, 1, 13, 490, 49, 25),
( '2025-03-27', 'Pending', '2025-04-01', 47, 3, 14, 550, 55, 28),
( '2025-03-29', 'Delivered', '2025-04-03', 48, 2, 14, 460, 46, 23),
( '2025-03-31', 'Cancelled', '2025-04-05', 49, 1, 16, 520, 52, 26),

( '2025-04-02', 'Pending', '2025-04-07', 50, 3, 16, 580, 58, 29),
( '2025-04-04', 'Delivered', '2025-04-09', 51, 2, 22, 470, 47, 24),
( '2025-04-06', 'Cancelled', '2025-04-11', 52, 1, 22, 530, 53, 27),
( '2025-04-08', 'Pending', '2025-04-13', 53, 3, 28, 590, 59, 30),
( '2025-04-10', 'Delivered', '2025-04-15', 54, 2, 28, 480, 48, 25),
( '2025-04-12', 'Cancelled', '2025-04-17', 55, 1, 43, 540, 54, 28),
( '2025-04-14', 'Pending', '2025-04-19', 56, 3, 34, 600, 60, 31),
( '2025-04-16', 'Delivered', '2025-04-21', 57, 2, 32, 490, 49, 26),
( '2025-04-18', 'Cancelled', '2025-04-23', 58, 1, 9, 550, 55, 29),
( '2025-04-20', 'Pending', '2025-04-25', 59, 3, 26, 460, 46, 24),

( '2025-04-22', 'Delivered', '2025-04-27', 60, 2, 25, 520, 52, 27),
( '2025-04-24', 'Cancelled', '2025-04-29', 61, 1, 25, 580, 58, 30),
( '2025-04-26', 'Pending', '2025-05-01', 62, 3, 42, 470, 47, 25),
( '2025-04-28', 'Delivered', '2025-05-03', 63, 2, 42, 530, 53, 28),
( '2025-04-30', 'Cancelled', '2025-05-05', 64, 1, 44, 590, 59, 31),
( '2025-05-02', 'Pending', '2025-05-07', 65, 3, 43, 480, 48, 26),
( '2025-05-04', 'Delivered', '2025-05-09', 66, 2, 5, 540, 54, 29),
( '2025-05-06', 'Cancelled', '2025-05-11', 67, 1, 42, 600, 60, 32),
( '2025-05-08', 'Pending', '2025-05-13', 68, 3, 9, 490, 49, 27),
( '2025-05-10', 'Delivered', '2025-05-15', 69, 2, 22, 550, 55, 30),

( '2025-05-12', 'Cancelled', '2025-05-17', 70, 1, 21, 460, 46, 25),
( '2025-05-14', 'Pending', '2025-05-19', 71, 3, 21, 520, 52, 28),
( '2025-05-16', 'Delivered', '2025-05-21', 72, 2, 25, 580, 58, 31),
( '2025-05-18', 'Cancelled', '2025-05-23', 73, 1, 25, 470, 47, 26),
( '2025-05-20', 'Pending', '2025-05-25', 74, 3, 48, 530, 53, 29),
( '2025-05-22', 'Delivered', '2025-05-27', 75, 2, 48, 590, 59, 32),
( '2025-05-24', 'Cancelled', '2025-05-29', 76, 1, 20, 480, 48, 27),
( '2025-05-26', 'Pending', '2025-05-31', 77, 3, 20, 540, 54, 30),
( '2025-05-28', 'Delivered', '2025-06-02', 78, 2, 50, 600, 60, 33),
( '2025-05-30', 'Cancelled', '2025-06-04', 79, 1, 49, 490, 49, 28),

( '2025-06-01', 'Pending', '2025-06-06', 80, 3, 40, 550, 55, 31),
( '2025-06-03', 'Delivered', '2025-06-08', 81, 2, 40, 460, 46, 26),
( '2025-06-05', 'Cancelled', '2025-06-10', 82, 1, 39, 520, 52, 29),
( '2025-06-07', 'Pending', '2025-06-12', 83, 3, 38, 580, 58, 32),
( '2025-06-09', 'Delivered', '2025-06-14', 84, 2, 38, 470, 47, 27),
( '2025-06-11', 'Cancelled', '2025-06-16', 85, 1, 38, 530, 53, 30),
( '2025-06-13', 'Pending', '2025-06-18', 86, 3, 18, 590, 59, 33),
( '2025-06-15', 'Delivered', '2025-06-20', 87, 2, 18, 480, 48, 28),
( '2025-06-17', 'Cancelled', '2025-06-22', 88, 1, 18, 540, 54, 31),
( '2025-06-19', 'Pending', '2025-06-24', 89, 3, 26, 600, 60, 34),

( '2025-06-21', 'Delivered', '2025-06-26', 90, 2, 26, 490, 49, 29),
( '2025-06-23', 'Cancelled', '2025-06-28', 91, 1, 29, 550, 55, 32),
( '2025-06-25', 'Pending', '2025-06-30', 92, 3, 31, 460, 46, 27),
( '2025-06-27', 'Delivered', '2025-07-02', 93, 2, 34, 520, 52, 30),
( '2025-06-29', 'Cancelled', '2025-07-04', 94, 1, 33, 580, 58, 33),
( '2025-07-01', 'Pending', '2025-07-06', 95, 3, 45, 470, 47, 28),
( '2025-07-03', 'Delivered', '2025-07-08', 96, 2, 46, 530, 53, 31),
( '2025-07-05', 'Cancelled', '2025-07-10', 97, 1, 46, 590, 59, 34),
( '2025-07-07', 'Pending', '2025-07-12', 98, 3, 46, 480, 48, 29),
( '2025-07-09', 'Delivered', '2025-07-14', 99, 2, 48, 540, 54, 32),

( '2025-07-11', 'Cancelled', '2025-07-16', 100, 1, 50, 600, 60, 35),
( '2025-07-13', 'Pending', '2025-07-18', 1, 3, 49, 490, 49, 30),
( '2025-07-15', 'Delivered', '2025-07-20', 2, 2, 4, 550, 55, 33),
( '2025-07-17', 'Cancelled', '2025-07-22', 3, 1, 5, 460, 46, 28),
( '2025-07-19', 'Pending', '2025-07-24', 4, 3, 4, 520, 52, 31),
( '2025-07-21', 'Delivered', '2025-07-26', 5, 2, 7, 580, 58, 34),
( '2025-07-23', 'Cancelled', '2025-07-28', 6, 1, 2, 470, 47, 29),
( '2025-07-25', 'Pending', '2025-07-30', 7, 3, 1, 530, 53, 32),
( '2025-01-05', 'Pending', '2025-01-08', 18, 3, 1, 620, 62, 31),
( '2025-01-07', 'Delivered', '2025-01-10', 19, 2, 47, 480, 48, 24),
( '2025-01-09', 'Cancelled', '2025-01-12', 20, 1, 48, 550, 55, 28),
( '2025-01-11', 'Pending', '2025-01-14', 21, 3, 49, 600, 60, 30),
( '2025-01-13', 'Delivered', '2025-01-16', 22, 2, 50, 530, 53, 27),
( '2025-01-15', 'Cancelled', '2025-01-18', 23, 1, 30, 620, 62, 31),
( '2025-01-17', 'Pending', '2025-01-20', 24, 3, 31, 590, 59, 29),
( '2025-01-19', 'Delivered', '2025-01-22', 25, 2, 32, 480, 48, 24),
( '2025-01-21', 'Cancelled', '2025-01-24', 26, 1, 33, 550, 55, 28),
( '2025-01-23', 'Pending', '2025-01-26', 27, 3, 34, 600, 60, 30),

( '2025-01-25', 'Delivered', '2025-01-28', 28, 2, 35, 530, 53, 27),
( '2025-01-27', 'Cancelled', '2025-01-30', 29, 1, 36, 620, 62, 31),
( '2025-01-29', 'Pending', '2025-02-01', 30, 3, 37, 590, 59, 29),
( '2025-01-31', 'Delivered', '2025-02-03', 31, 2, 38, 480, 48, 24),
( '2025-02-02', 'Cancelled', '2025-02-05', 32, 1, 39, 550, 55, 28),
( '2025-02-04', 'Pending', '2025-02-07', 33, 3, 40, 600, 60, 30),
( '2025-02-06', 'Delivered', '2025-02-09', 34, 2, 41, 530, 53, 27),
( '2025-02-08', 'Cancelled', '2025-02-11', 35, 1, 42, 620, 62, 31),
( '2025-02-10', 'Pending', '2025-02-13', 36, 3, 43, 590, 59, 29),
( '2025-02-12', 'Delivered', '2025-02-15', 37, 2, 44, 480, 48, 24),

( '2025-02-14', 'Cancelled', '2025-02-17', 38, 1, 45, 550, 55, 28),
( '2025-02-16', 'Pending', '2025-02-19', 39, 3, 46, 600, 60, 30),
( '2025-02-18', 'Delivered', '2025-02-21', 40, 2, 47, 530, 53, 27);
update Orders
set Total_Price = null

--Good
INSERT INTO Order_Product (Order_ID, Product_ID, Qty) VALUES
(1, 45, 2),
(1, 67, 3),
(2, 12, 1),
(2, 29, 4),
(3, 23, 5),
(3, 102, 2),
(4, 55, 1),
(4, 88, 6),
(5, 3, 4),
(5, 147, 2),
(6, 36, 3),
(6, 210, 1),
(7, 70, 7),
(7, 220, 3),
(8, 15, 2),
(8, 90, 5),
(9, 42, 3),
(9, 175, 2),
(10, 100, 4),
(10, 18, 1),
(11, 27, 2),
(11, 300, 3),
(12, 5, 1),
(12, 150, 6),
(13, 61, 4),
(13, 74, 5),
(14, 37, 2),
(14, 13, 1),
(15, 48, 4),
(15, 81, 2),
(16, 19, 3),
(16, 86, 5),
(17, 8, 6),
(17, 165, 3),
(18, 77, 2),
(18, 190, 1),
(19, 56, 4),
(19, 222, 3),
(20, 26, 5),
(20, 91, 2),
(21, 11, 1),
(21, 73, 4),
(22, 46, 2),
(22, 135, 3),
(23, 99, 6),
(23, 33, 1),
(24, 1, 3),
(24, 210, 2),
(25, 60, 4),
(25, 78, 5),
(26, 87, 2),
(26, 245, 3),
(27, 17, 1),
(27, 50, 4),
(28, 30, 2),
(28, 112, 5),
(29, 93, 3),
(29, 280, 4),
(30, 23, 2),
(30, 45, 1),
(31, 80, 6),
(31, 96, 2),
(32, 54, 5),
(32, 145, 3),
(33, 68, 1),
(33, 240, 4),
(34, 39, 2),
(34, 150, 5),
(35, 95, 4),
(35, 250, 1),
(36, 2, 3),
(36, 15, 6),
(37, 66, 2),
(37, 99, 4),
(38, 43, 1),
(38, 170, 2),
(39, 65, 3),
(39, 135, 5),
(40, 10, 4),
(40, 155, 1),
(41, 72, 6),
(41, 102, 2),
(42, 12, 3),
(42, 188, 1),
(43, 83, 2),
(43, 295, 5),
(44, 29, 4),
(44, 11, 1),
(45, 52, 3),
(45, 120, 2),
(46, 25, 4),
(46, 60, 1),
(47, 34, 5),
(47, 195, 2),
(48, 7, 1),
(48, 150, 6),
(49, 97, 3),
(49, 220, 4),
(50, 41, 2),
(50, 280, 5),
(51, 100, 6),
(51, 165, 3),
(52, 59, 1),
(52, 72, 4),
(53, 86, 2),
(53, 18, 5),
(54, 75, 4),
(54, 225, 1),
(55, 24, 3),
(55, 142, 6),
(56, 33, 2),
(56, 174, 5),
(57, 9, 1),
(57, 90, 2),
(58, 3, 4),
(58, 200, 3),
(59, 150, 5),
(59, 117, 2),
(60, 77, 1),
(60, 220, 6),
(61, 55, 2),
(61, 49, 3),
(62, 30, 4),
(62, 95, 1),
(63, 88, 5),
(63, 260, 2),
(64, 12, 1),
(64, 130, 4),
(65, 5, 3),
(65, 140, 2),
(66, 11, 6),
(66, 300, 3),
(67, 63, 1),
(67, 245, 4),
(68, 54, 2),
(68, 82, 5),
(69, 101, 3),
(69, 185, 1),
(70, 90, 2),
(70, 99, 4),
(71, 45, 1),
(71, 147, 6),
(72, 65, 2),
(72, 215, 3),
(73, 20, 4),
(73, 250, 1),
(74, 60, 5),
(74, 190, 2),
(75, 17, 1),
(75, 280, 3),
(76, 34, 2),
(76, 205, 4),
(77, 7, 5),
(77, 300, 1),
(78, 55, 4),
(78, 132, 2),
(79, 12, 3),
(79, 113, 1),
(80, 18, 5),
(80, 122, 2),
(81, 33, 4),
(81, 100, 1),
(82, 62, 3),
(82, 79, 2),
(83, 4, 5),
(83, 72, 1),
(84, 69, 2),
(84, 152, 3),
(85, 49, 6),
(85, 201, 1),
(86, 25, 4),
(86, 60, 5),
(87, 99, 3),
(87, 250, 2),
(88, 85, 2),
(88, 135, 4),
(89, 45, 3),
(89, 20, 1),
(90, 2, 5),
(90, 76, 3),
(91, 20, 4),
(91, 119, 2),
(92, 59, 1),
(92, 300, 6),
(93, 38, 5),
(93, 12, 4),
(94, 15, 3),
(94, 99, 2),
(95, 66, 1),
(95, 132, 4),
(96, 76, 3),
(96, 88, 5),
(97, 48, 2),
(97, 195, 1),
(98, 14, 6),
(98, 215, 2),
(99, 3, 4),
(99, 58, 5),
(100, 90, 2),
(100, 280, 1),
(101, 15, 3),
(101, 67, 4),
(102, 120, 1),
(102, 210, 6),
(103, 99, 5),
(103, 29, 2),
(104, 62, 1),
(104, 110, 4),
(105, 73, 6),
(105, 200, 3),
(106, 10, 5),
(106, 48, 2),
(107, 33, 1),
(107, 180, 4),
(108, 25, 3),
(108, 50, 6),
(109, 78, 2),
(109, 195, 5),
(110, 59, 4),
(110, 85, 1),
(111, 61, 3),
(111, 75, 2),
(112, 143, 4),
(112, 82, 1),
(113, 34, 2),
(113, 128, 3),
(114, 12, 5),
(114, 57, 1),
(115, 88, 4),
(115, 96, 2),
(116, 10, 6),
(116, 150, 3),
(117, 22, 5),
(117, 95, 1),
(118, 16, 2),
(118, 119, 4),
(119, 67, 3),
(119, 180, 1),
(120, 43, 6),
(120, 75, 2),
(121, 95, 4),
(121, 29, 1),
(122, 100, 3),
(122, 145, 5),
(123, 85, 2),
(123, 200, 6),
(124, 39, 1),
(124, 74, 4),
(125, 92, 3),
(125, 150, 5),
(126, 51, 4),
(126, 83, 1),
(127, 102, 2),
(127, 26, 6),
(128, 24, 3),
(128, 40, 1),
(129, 35, 5),
(129, 67, 4),
(130, 44, 2),
(130, 61, 1),
(131, 100, 3),
(131, 145, 6),
(132, 11, 5),
(132, 120, 2),
(133, 76, 4),
(133, 81, 1),
(134, 90, 3),
(134, 150, 5),
(135, 48, 2),
(135, 300, 1),
(136, 34, 6),
(136, 143, 2),
(137, 53, 1),
(137, 200, 4),
(138, 86, 3),
(138, 120, 5),
(139, 92, 2),
(139, 215, 1),
(140, 19, 4),
(140, 62, 3),
(141, 35, 5),
(141, 96, 1),
(142, 72, 2),
(142, 88, 3),
(143, 30, 4),
(143, 125, 1),
(144, 24, 2),
(144, 18, 5),
(145, 100, 1),
(145, 38, 6),
(146, 65, 3),
(146, 210, 4),
(147, 12, 5),
(147, 140, 2),
(148, 18, 1),
(148, 75, 3),
(149, 110, 4),
(149, 67, 1),
(150, 150, 6),
(150, 80, 2),
(151, 33, 1),
(151, 85, 4),
(152, 94, 5),
(152, 100, 3),
(153, 44, 2),
(153, 130, 6),
(154, 15, 1),
(154, 97, 4),
(155, 72, 5),
(155, 60, 2),
(156, 22, 4),
(156, 120, 3),
(157, 50, 1),
(157, 88, 6),
(158, 30, 2),
(158, 210, 4),
(159, 14, 5),
(159, 90, 1),
(160, 92, 3),
(160, 240, 2),
(161, 40, 1),
(161, 20, 4),
(162, 78, 6),
(162, 150, 2),
(163, 16, 5),
(163, 300, 1),
(164, 60, 4),
(164, 84, 3),
(165, 35, 1),
(165, 215, 6),
(166, 99, 5),
(166, 142, 2),
(167, 83, 3),
(167, 88, 4),
(168, 70, 1),
(168, 100, 6),
(169, 55, 2),
(169, 29, 5),
(170, 19, 4),
(170, 150, 1),
(171, 75, 3),
(171, 260, 2),
(172, 100, 1),
(172, 200, 6),
(173, 12, 4),
(173, 120, 3),
(174, 70, 5),
(174, 80, 1),
(175, 22, 6),
(175, 140, 2),
(176, 90, 1),
(176, 10, 4),
(177, 44, 5),
(177, 55, 2),
(178, 150, 3),
(178, 230, 1),
(179, 60, 4),
(179, 80, 6),
(180, 42, 2),
(180, 100, 5),
(181, 32, 1),
(181, 70, 4),
(182, 20, 6),
(182, 12, 2),
(183, 68, 5),
(183, 18, 1),
(184, 99, 2),
(184, 135, 3),
(185, 75, 4),
(185, 70, 1),
(186, 83, 5),
(186, 150, 6),
(187, 22, 3),
(187, 125, 2),
(188, 60, 4),
(188, 75, 1),
(189, 48, 2),
(189, 18, 5),
(190, 99, 1),
(190, 200, 6),
(191, 83, 4),
(191, 50, 2),
(192, 12, 5),
(192, 88, 3),
(193, 33, 1),
(193, 95, 6),
(194, 100, 4),
(194, 12, 2),
(195, 60, 1),
(195, 280, 5),
(196, 19, 6),
(196, 72, 3),
(197, 110, 2),
(197, 150, 4),
(198, 12, 5),
(198, 160, 1),
(199, 220, 3),
(199, 88, 6),
(200, 80, 2);
--Good
INSERT INTO [dbo].[Returns] ( Reason, Return_Date, Order_ID, Product_ID) VALUES
('Defective item', '2024-03-18',197, 150),
('Wrong item sent', '2024-03-19', 117, 95),
('Changed my mind', '2024-03-20',118, 16),
('Not as described', '2024-03-21', 43, 83),
('Defective item', '2024-03-22', 5, 147),
('Quality issue', '2024-03-23', 198, 12),
('Wrong item sent', '2024-03-24', 200, 80),
('Changed my mind', '2024-03-25', 181, 70),
('Not as described', '2024-03-26', 73, 20),
( 'Defective item', '2024-03-27', 132, 120),
( 'Quality issue', '2024-03-28', 2, 12),
( 'Wrong item sent', '2024-03-29', 143, 125),
( 'Changed my mind', '2024-03-30', 147, 12),
( 'Not as described', '2024-03-31', 185, 70),
( 'Defective item', '2024-04-01', 28, 30),
( 'Quality issue', '2024-04-02', 32, 54),
( 'Wrong item sent', '2024-04-03', 36, 15),
( 'Changed my mind', '2024-04-04', 68, 82),
( 'Not as described', '2024-04-05', 23, 99),
( 'Defective item', '2024-04-06', 25, 60),
( 'Quality issue', '2024-04-07', 52, 59),
( 'Wrong item sent', '2024-04-08', 127, 26),
( 'Changed my mind', '2024-04-09', 113, 128),
( 'Not as described', '2024-04-10', 155, 60),
( 'Defective item', '2024-04-11', 149, 110),
( 'Quality issue', '2024-04-12', 96, 88),
( 'Wrong item sent', '2024-04-13', 181, 70),
( 'Changed my mind', '2024-04-14', 193, 33),
( 'Not as described', '2024-04-15', 57, 9),
( 'Defective item', '2024-04-16', 199, 88);
--Good
INSERT INTO Feedback (FB_Rating, FB_Comment, FB_Date, Cus_ID, Order_ID) 
VALUES
(9, 'Excellent service', '2024-06-01', 12, 1),
(7, 'Good product but slow delivery', '2024-06-02', 15, 2),
(8, 'Satisfied with the purchase', '2024-06-03', 8, 3),
(5, 'Product was damaged upon arrival', '2024-06-04', 23, 4),
(10, 'Super fast delivery and great quality', '2024-06-05', 4, 5),
(6, 'Average experience', '2024-06-06', 11, 6),
(4, 'Delivery was late', '2024-06-07', 7, 7),
(8, 'Happy with the product', '2024-06-08', 19, 8),
(7, 'Good customer support', '2024-06-09', 10, 9),
(9, 'Great quality, very satisfied', '2024-06-10', 21, 11),
(6, 'Product was okay, but packaging was bad', '2024-06-11', 5, 19),
(3, 'Item was not as described', '2024-06-12', 15, 75),
(7, 'Nice product, but delivery could be faster', '2024-06-13', 46, 36),
(9, 'Satisfied with the quality and service', '2024-06-14', 20, 80),
(5, 'Packaging was damaged, but the item is fine', '2024-06-15', 26, 86),
(10, 'Perfect experience, will buy again', '2024-06-16', 21, 91),
(4, 'Not happy with the product', '2024-06-17', 25, 95),
(7, 'Good service overall', '2024-06-18', 38, 108),
(6, 'Satisfactory experience', '2024-06-19', 42, 112),
(9, 'Fast delivery and good product', '2024-06-20', 46, 116),
(8, 'Pretty good experience', '2024-06-21', 50, 120),
(5, 'Item arrived broken', '2024-06-22', 54, 124),
(7, 'Good value for the price', '2024-06-23', 57, 127),
(9, 'Quality exceeded expectations', '2024-06-24', 60, 130),
(6, 'Product is fine, but took a while to arrive', '2024-06-25', 62, 132),
(8, 'Very happy with the product', '2024-06-26', 69, 139),
(4, 'Customer support was unhelpful', '2024-06-27', 73, 143),
(9, 'Great purchase, highly recommend', '2024-06-28', 76, 146),
(5, 'Product didn’t meet expectations', '2024-06-29', 78, 148),
(10, 'Fantastic experience, will buy again', '2024-06-30', 82, 152),
(3, 'Poor quality product', '2024-07-01', 88, 158),
(6, 'Overall, it was okay', '2024-07-02', 95, 165),
(8, 'Nice product and timely delivery', '2024-07-03', 99, 169),
(9, 'Highly satisfied with the purchase', '2024-07-04', 2, 172),
(7, 'Decent quality but could improve', '2024-07-05', 7, 177),
(5, 'Expected better service', '2024-07-06', 24, 184),
(8, 'Great value for the price', '2024-07-07', 27, 187),
(9, 'Very fast delivery and great quality', '2024-07-08', 29, 189),
(6, 'Product was good but the delivery was delayed', '2024-07-09', 23, 183),
(7, 'Overall, a good experience', '2024-07-10', 30, 190),
(9, 'Amazing service, highly recommend', '2024-07-11', 31, 191),
(10, 'Absolutely perfect, very satisfied', '2024-07-12', 32, 192),
(4, 'Not happy with the service', '2024-07-13', 33, 193),
(6, 'Product quality is acceptable', '2024-07-14', 34, 194),
(8, 'Good experience overall', '2024-07-15', 35, 195),
(7, 'Satisfied with the purchase', '2024-07-16', 36, 196),
(9, 'Delivery was very quick and product is great', '2024-07-17', 37, 197),
(5, 'Expected a higher quality product', '2024-07-18', 38, 198),
(7, 'Service was decent but could be better', '2024-07-19', 39, 199),
(8, 'Very satisfied with the service', '2024-07-20', 40, 200);
--Good
INSERT INTO Segment (Seg_Name, Seg_Criteria) VALUES
('High Value Customers', 'Total Purchase > 10000'),
('Frequent Buyers', 'More than 5 purchases in the last 6 months'),
('Seasonal Shoppers', 'Purchase frequency peaks during holidays'),
('New Customers', 'Joined within the last 3 months'),
('Loyalty Members', 'Enrolled in loyalty program'),
('Business Clients', 'Corporate or business accounts'),
('Discount Seekers', 'Majority of purchases during sales or promotions'),
('Big Spenders', 'Average order value > 500'),
('Cart Abandoners', 'Frequently adds items to cart but does not complete purchase'),
('International Shoppers', 'Based outside the country'),
('First-Time Buyers', 'First purchase completed'),
('Refund Requesters', 'Requested refunds more than twice'),
('VIP Customers', 'Exclusive access to special offers'),
('Tech Enthusiasts', 'Prefers high-tech gadgets and electronics'),
('Fashion Lovers', 'High frequency of clothing and accessory purchases'),
('Weekend Shoppers', 'Majority of purchases made on weekends'),
('Gift Buyers', 'Primarily buys products as gifts'),
('Clearance Buyers', 'Prefers clearance and end-of-season sales'),
('Subscription Users', 'Subscribed to regular product delivery services'),
('Eco-Conscious Buyers', 'Buys environmentally-friendly products');

DECLARE @Counter INT = 1;

WHILE @Counter <= 100
BEGIN
    DECLARE @Discount INT = FLOOR(RAND() * 50) + 1; -- Random discount between 1 and 50
    DECLARE @Ref_Date DATE = DATEADD(DAY, -FLOOR(RAND() * 365), GETDATE()); -- Random date in the last year
    DECLARE @Cus_ID INT = FLOOR(RAND() * 100) + 1; -- Assuming customer IDs are between 1 and 100

    INSERT INTO Referral (Ref_Discount, Ref_Date, Cus_ID)
    VALUES (CAST(@Discount AS VARCHAR(50)) + '% off', @Ref_Date, @Cus_ID);

    SET @Counter = @Counter + 1;
END;

INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (1, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (1, 12);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (2, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (2, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (2, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (2, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (3, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (4, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (4, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (4, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (4, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (4, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (5, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (6, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (6, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (6, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (6, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (6, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (7, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (7, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (7, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (7, 12);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (8, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (8, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (8, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (9, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (9, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (9, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (9, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (9, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (10, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (10, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (11, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (11, 17);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (12, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (12, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (13, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (13, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (13, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (14, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (14, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (15, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (16, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (16, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (16, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (16, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (16, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (17, 17);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (17, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (17, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (17, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (18, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (18, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (18, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (18, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (19, 12);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (19, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (20, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (20, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (20, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (20, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (20, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (21, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (21, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (21, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (22, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (22, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (22, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (22, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (22, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (23, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (23, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (24, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (24, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (24, 14);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (24, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (24, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (25, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (25, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (25, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (26, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (26, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (27, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (27, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (27, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (28, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (29, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (29, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (29, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (29, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (29, 14);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (30, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (30, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (30, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (30, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (30, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (31, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (31, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (32, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (32, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (32, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (32, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (32, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (33, 17);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (34, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (34, 17);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (34, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (34, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (35, 17);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (36, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (36, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (36, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (36, 14);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (37, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (37, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (37, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (37, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (38, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (38, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (38, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (39, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (39, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (39, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (40, 14);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (40, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (40, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (40, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (40, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (41, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (41, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (41, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (41, 17);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (42, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (42, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (42, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (43, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (44, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (44, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (44, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (44, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (45, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (46, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (47, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (47, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (48, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (48, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (48, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (48, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (48, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (49, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (49, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (49, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (49, 12);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (50, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (50, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (51, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (51, 12);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (52, 14);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (52, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (52, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (52, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (52, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (53, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (53, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (53, 12);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (54, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (55, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (55, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (55, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (55, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (55, 17);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (56, 12);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (56, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (56, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (56, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (56, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (57, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (57, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (57, 14);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (57, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (57, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (58, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (58, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (58, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (59, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (59, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (60, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (60, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (61, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (61, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (61, 17);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (61, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (61, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (62, 17);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (62, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (62, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (62, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (63, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (63, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (63, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (63, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (64, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (64, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (64, 14);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (65, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (65, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (65, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (65, 17);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (66, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (66, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (66, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (66, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (66, 12);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (67, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (67, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (67, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (67, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (68, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (68, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (68, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (68, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (69, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (70, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (70, 12);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (70, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (70, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (70, 17);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (71, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (71, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (71, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (71, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (72, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (72, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (73, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (74, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (74, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (75, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (75, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (75, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (75, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (76, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (76, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (76, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (76, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (77, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (77, 14);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (77, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (77, 12);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (77, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (78, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (79, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (79, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (79, 14);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (79, 18);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (80, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (80, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (80, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (80, 12);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (80, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (81, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (82, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (83, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (84, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (84, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (84, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (85, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (85, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (86, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (86, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (86, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (86, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (87, 12);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (87, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (88, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (88, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (89, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (89, 13);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (90, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (90, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (90, 4);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (91, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (91, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (92, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (92, 7);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (93, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (93, 12);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (93, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (93, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (94, 5);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (94, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (94, 14);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (94, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (95, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (95, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (95, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (95, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (96, 19);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (96, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (96, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (97, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (97, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (97, 11);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (97, 10);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (98, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (99, 20);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (99, 15);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (99, 9);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (99, 16);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (99, 6);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (100, 3);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (100, 2);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (100, 8);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (100, 1);
INSERT INTO Customer_Segment (Cus_ID, Seg_ID) VALUES (100, 17);


INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (1, 121);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (1, 21);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (2, 104);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (2, 12);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (2, 90);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (3, 33);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (3, 44);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (3, 31);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (3, 28);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (4, 130);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (4, 126);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (4, 15);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (5, 129);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (6, 56);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (6, 74);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (7, 74);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (7, 127);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (7, 91);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (7, 93);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (8, 44);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (9, 40);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (10, 72);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (10, 71);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (10, 104);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (11, 68);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (11, 147);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (11, 146);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (12, 33);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (12, 94);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (12, 99);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (13, 62);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (14, 84);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (14, 41);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (14, 100);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (15, 113);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (15, 143);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (15, 65);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (15, 68);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (16, 149);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (17, 68);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (17, 65);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (18, 29);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (18, 9);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (19, 58);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (19, 36);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (20, 86);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (20, 4);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (21, 24);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (21, 77);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (21, 2);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (22, 83);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (22, 38);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (22, 35);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (22, 78);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (23, 127);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (23, 59);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (23, 44);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (23, 81);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (24, 95);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (25, 56);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (25, 47);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (25, 124);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (26, 8);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (26, 60);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (26, 149);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (26, 144);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (27, 34);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (28, 101);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (28, 112);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (28, 70);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (28, 125);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (29, 101);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (29, 103);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (29, 51);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (29, 2);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (30, 88);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (30, 15);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (31, 5);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (31, 61);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (31, 67);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (31, 37);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (32, 140);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (32, 84);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (32, 50);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (33, 112);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (34, 30);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (34, 135);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (34, 113);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (35, 3);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (35, 45);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (35, 19);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (36, 125);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (36, 65);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (37, 102);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (38, 130);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (38, 60);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (38, 126);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (39, 126);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (39, 133);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (40, 36);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (41, 89);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (41, 59);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (41, 137);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (42, 59);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (43, 41);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (43, 147);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (44, 128);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (44, 70);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (44, 78);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (44, 124);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (45, 108);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (45, 10);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (45, 144);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (46, 85);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (46, 75);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (46, 108);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (47, 63);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (48, 127);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (48, 95);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (48, 34);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (48, 24);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (49, 70);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (49, 99);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (50, 19);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (51, 85);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (52, 54);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (53, 98);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (53, 122);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (53, 83);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (53, 45);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (54, 129);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (54, 137);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (54, 145);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (54, 35);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (55, 22);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (55, 98);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (55, 119);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (55, 89);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (56, 147);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (56, 53);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (56, 35);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (56, 34);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (57, 37);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (57, 131);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (57, 68);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (57, 130);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (58, 46);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (59, 81);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (60, 16);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (60, 112);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (60, 126);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (61, 85);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (61, 45);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (61, 17);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (61, 122);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (62, 111);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (62, 150);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (62, 9);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (63, 140);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (63, 12);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (63, 51);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (63, 47);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (64, 111);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (64, 100);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (64, 108);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (64, 109);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (65, 105);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (66, 91);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (66, 14);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (66, 127);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (67, 72);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (67, 116);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (68, 24);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (69, 38);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (69, 100);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (70, 51);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (71, 143);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (72, 73);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (73, 11);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (74, 133);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (74, 85);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (74, 129);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (74, 83);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (75, 126);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (75, 67);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (75, 44);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (75, 136);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (76, 32);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (76, 112);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (76, 30);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (77, 134);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (77, 45);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (78, 60);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (78, 84);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (78, 150);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (78, 117);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (79, 96);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (79, 61);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (79, 56);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (79, 115);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (80, 65);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (80, 103);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (80, 117);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (80, 115);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (81, 42);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (81, 128);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (82, 96);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (82, 106);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (83, 80);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (83, 48);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (83, 77);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (83, 66);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (84, 41);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (84, 49);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (84, 108);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (84, 107);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (85, 66);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (85, 74);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (85, 127);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (85, 36);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (86, 58);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (86, 89);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (86, 113);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (87, 83);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (88, 15);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (88, 88);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (88, 14);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (89, 48);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (90, 9);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (91, 46);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (92, 130);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (93, 78);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (93, 11);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (93, 118);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (93, 51);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (94, 105);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (94, 34);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (94, 3);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (94, 108);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (95, 19);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (96, 3);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (96, 79);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (97, 95);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (97, 106);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (98, 120);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (98, 77);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (99, 21);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (99, 55);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (99, 75);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (100, 78);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (100, 104);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (100, 58);
INSERT INTO Customer_Shipping (Cus_ID, Sh_ID) VALUES (100, 53);

-- Update the Product_Qty with random values from 1 to 50
UPDATE Product
SET Product_Qty = CAST((ABS(CHECKSUM(NEWID())) % 50) + 1 AS INT);


UPDATE Orders
SET [Payment_Info] = 
    CASE 
        WHEN Pay_ID = 1 THEN CONCAT('Card Number: ', CAST((RAND() * 999999) AS varchar(10)))  -- Credit
        WHEN Pay_ID = 2 THEN CONCAT('InstaPay ID: ', CAST((RAND() * 999999) AS varchar(10)))  -- InstaPay
        WHEN Pay_ID = 3 THEN CONCAT('Wallet ID: ', CAST((RAND() * 999999) AS varchar(10) ))  -- Wallet
        WHEN Pay_ID = 4 THEN NULL  -- Cash
    END
--WHERE Pay_ID IN (1, 2, 3, 4);


alter table orders 
add sh_id int foreign key references [dbo].[Shipping_Address]([Sh_ID])

UPDATE o
SET o.sh_id = (
    SELECT TOP 1 cs.Sh_ID
    FROM Customer_Shipping cs
    WHERE cs.[Cus_ID] = o.[Cus_ID]
    ORDER BY NEWID()  -- Randomly order the results
)
FROM Orders o
WHERE EXISTS (
    SELECT 1
    FROM Customer_Shipping cs
    WHERE cs.[Cus_ID] = o.[Cus_ID]
);
