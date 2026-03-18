# 🛒 E-Commerce SQL Analytics Project

## 📌 Overview

This project focuses on analyzing e-commerce transactional data using SQL to extract meaningful business insights. The goal is to understand customer behavior, revenue patterns, and key business metrics to support data-driven decision-making.

---

## 🧰 Tools & Technologies

* PostgreSQL
* SQL (Joins, Aggregations, CTEs, Window Functions)

---

## 📊 Dataset Description

The dataset consists of multiple relational tables:

* **customers** → customer details (ID, city, state)
* **orders** → order information (timestamp, status)
* **order_items** → product-level order details
* **products** → product categories
* **payments** → payment transactions

These tables are connected using primary and foreign keys to simulate a real-world e-commerce database.

---

## 🗂️ Database Schema

The database follows a relational structure:

customers → orders → order_items → products
↓
payments

---

## 🔍 Key Analysis Performed

### 📈 Revenue Analysis

* Total revenue calculation
* Monthly revenue trend analysis
* State-wise revenue distribution

### 👥 Customer Analysis

* Top customers by total spending
* Repeat vs one-time customers
* Customer purchase behavior

### 🎯 RFM Analysis (Recency, Frequency, Monetary)

* Identified high-value customers
* Segmented customers based on spending and purchase frequency
* Evaluated customer engagement and retention patterns

### ⚙️ Advanced SQL Techniques

* Complex JOIN operations
* Common Table Expressions (CTEs)
* Window functions (RANK, aggregation over partitions)

---

## 🧠 Key Business Insights

* A small group of customers contributes a significant portion of total revenue.
* Repeat customers generate higher overall value compared to one-time buyers.
* Revenue trends show variations across different months, indicating demand fluctuations.
* Certain regions/states contribute more to total sales.
* High-value customers (high frequency + high spend) are crucial for business growth.
* Low-frequency customers indicate potential churn risk and require engagement strategies.

---

## 🏁 Conclusion

This project demonstrates how SQL can be used to transform raw transactional data into actionable business insights. It highlights strong skills in data analysis, problem-solving, and understanding of relational databases.

---

## 🚀 Future Improvements

* Build a Power BI dashboard for visualization
* Perform cohort analysis for retention tracking
* Integrate real-world large-scale datasets

---

## 📎 Author

**Krishna Tiwari**
Aspiring Data Analyst | SQL | Power BI | Python
