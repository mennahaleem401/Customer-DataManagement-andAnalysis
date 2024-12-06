# Customer Data Management System with Analytics and Predictive Insights

This project focuses on building a Customer Data Management System that efficiently handles customer information, order details, product data, feedback, and returns. In addition to robust data management, the project integrates a data warehouse, analytical tools, and machine learning models to provide insights and predictive capabilities for better business decision-making.

## Table of Contents
- [Project Overview](#project-overview)
- [Key Components](#key-components)
- [Technologies Used](#technologies-used)

## Project Overview
The system comprises a relational database with ERD design, automated triggers, and stored procedures for managing customer data. A data warehouse with SSIS and SSAS enables multidimensional analysis, while Python and Power BI are used for data visualization. Machine learning models built with Random Forest and Linear Regression enable predictions on customer behavior and sales.

## Key Components

1. **Database Management**
   - Tables for customers, products, orders, feedback, and returns.
   - Stored procedures and triggers for efficient data management and automation.

2. **Data Warehouse & ETL**
   - Fact and dimension tables created with SSIS.
   - SSAS cube structure for tracking metrics like sales trends and customer segmentation.

3. **Data Visualization**
   - Python (Matplotlib, Seaborn) for charts on monthly sales, product trends, returns, and complaints.
   - Power BI dashboards for visual insights into metrics like customer demographics, order status, and sales by segment.

4. **Machine Learning Models**
   - **Random Forest Classifier**: Predicts order status.
   - **Linear Regression**: Predicts support status.
   - **Random Forest Regressor**: Estimates total order value.

## Technologies Used
- **Database Management**: SQL, ERD, Stored Procedures, Triggers, Views
- **Data Warehousing**: SSIS, SSAS (Cube Structure, Fact & Dimension Tables)
- **Data Analysis & Visualization**: Python, Power BI
- **Machine Learning**: Scikit-Learn (Random Forest, Linear Regression)
