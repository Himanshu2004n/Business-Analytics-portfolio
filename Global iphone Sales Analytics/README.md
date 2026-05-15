# Global iPhone Sales & Customer Analytics Dashboard

An end-to-end Business Intelligence project built using **Python, Pandas, Power BI, and DAX** to analyze global iPhone sales performance, customer behavior, revenue trends, and product demand insights.

---

# Project Overview

This project focuses on transforming raw transactional sales data into meaningful business intelligence insights through data preprocessing, exploratory data analysis, KPI reporting, and interactive dashboard development.

The dashboard provides a comprehensive view of:

* Revenue performance
* Product demand
* Customer preferences
* Regional sales contribution
* Payment behavior
* Time-series trends
* Strategic business insights

The project demonstrates the complete analytics workflow from raw data processing to executive-level reporting.

---

# Business Problem

Modern businesses generate large amounts of sales data but often struggle to convert it into actionable insights for decision-making.

This project addresses that challenge by:

* Identifying high-performing products
* Understanding customer purchasing behavior
* Tracking revenue trends over time
* Analyzing regional sales performance
* Supporting strategic business decisions using interactive analytics

---

# Objectives

The primary objectives of this project were:

* Analyze global iPhone sales performance
* Build executive-level KPI dashboards
* Identify top-performing iPhone models
* Understand customer storage and color preferences
* Analyze payment method trends
* Evaluate country-wise revenue contribution
* Perform trend and time-series analysis
* Generate strategic business insights

---

# Tools & Technologies

| Technology | Purpose                             |
| ---------- | ----------------------------------- |
| Python     | Data preprocessing and analysis     |
| Pandas     | Data cleaning and transformation    |
| Matplotlib | Exploratory data visualization      |
| Seaborn    | Correlation analysis                |
| Power BI   | Interactive dashboard development   |
| DAX        | KPI measures and calculated metrics |

---

# Dataset Information

The dataset contains transactional iPhone sales records with the following features:

* Order_ID
* Customer_Name
* Country
* iPhone_Model
* Storage
* Color
* Quantity
* Price
* Revenue
* Sale_Date
* Payment_Method

---

# Python Workflow

## Data Preprocessing

The raw dataset was cleaned and transformed using Python.

### Key preprocessing steps:

* Handling missing values
* Data formatting and validation
* Date conversion
* Revenue calculation
* Feature engineering
* Month and Year extraction
* Exporting cleaned dataset for Power BI

---

# Exploratory Data Analysis (EDA)

EDA was performed using Python to identify trends and relationships within the data.

### Analysis Performed

* Monthly sales trend analysis
* Revenue distribution analysis
* Product demand analysis
* Correlation heatmap
* Scatter plot analysis
* Revenue vs quantity analysis

---

# Power BI Dashboard Architecture

The Power BI solution was designed using a multi-page dashboard architecture for better analytical storytelling and executive reporting.

---

# Page 1 — Executive Dashboard

## Features

* Total Revenue KPI
* Total Orders KPI
* Total Quantity Sold KPI
* Average Order Value KPI
* Monthly Revenue Trend
* Revenue by iPhone Model

## Key Insights

* January generated the highest overall revenue.
* Premium iPhone models contributed the strongest revenue performance.
* Revenue declined significantly during later months.

---

# Page 2 — Customer & Product Analytics

## Features

* Storage Preference Analysis
* Color Preference Analysis
* Revenue by Storage Variant
* Revenue vs Quantity Scatter Analysis

## Key Insights

* 256GB variants showed the highest customer demand.
* Blue and Purple emerged as the most preferred color options.
* Higher product demand directly contributed to revenue growth.

---

# Page 3 — Time Series & Trend Analysis

## Features

* Sales Trend Over Time
* Country Revenue Trend
* KPI Summary Cards

## Key Insights

* Revenue fluctuated across different months indicating seasonal demand behavior.
* UK and USA contributed the highest regional revenue performance.

---

# Page 4 — Revenue Decomposition Analysis

## Features

* Interactive Decomposition Tree
* Revenue Drill-Down Analysis
* Country Contribution Analysis
* Product Contribution Analysis
* Storage & Payment Method Analysis

## Key Insights

* iPhone 14 Pro contributed the highest revenue share.
* Premium storage variants generated stronger profitability.
* Debit Card and Cash transactions dominated payment activity.

---

# Page 5 — Business Insights & Strategic Summary

## Features

* Executive Summary
* Business Insights
* Strategic Recommendations
* Opportunity Analysis

## Key Insights

* Premium iPhone variants consistently outperformed standard models.
* Strong opportunities exist for premium product expansion.
* Regional marketing optimization can improve overall sales performance.

---

# Key Business Insights

* January recorded the highest overall revenue performance.
* iPhone 14 Pro generated the highest revenue contribution.
* iPhone 15 Pro Max emerged as the best-selling model by quantity sold.
* 256GB variants were the most preferred storage configuration.
* Debit Card transactions dominated customer payment activity.
* UK and USA contributed the strongest regional sales performance.
* Premium iPhone variants consistently outperformed base models.
* Customer demand fluctuated across months indicating seasonal sales trends.

---

# Dashboard Highlights

## Executive Reporting

The dashboard provides executive-level KPI monitoring and strategic performance analysis.

## Customer Analytics

Customer purchasing behavior was analyzed using storage, color, and payment preference insights.

## Product Performance Analysis

Revenue contribution and sales demand were evaluated across multiple iPhone variants.

## Interactive Business Intelligence

Advanced Power BI visuals such as decomposition trees and scatter analysis were implemented for deeper analytical exploration.

---

# Project Learnings

This project provided hands-on experience in:

* Data preprocessing and cleaning
* Exploratory data analysis
* Business intelligence reporting
* Dashboard storytelling
* KPI creation using DAX
* Interactive dashboard development
* Strategic business analysis
* Data-driven decision making

---

# Future Enhancements

Potential future improvements include:

* Real-world dataset integration
* Sales forecasting and predictive analytics
* Power BI Service deployment
* Drillthrough report pages
* Advanced tooltip pages
* SQL database integration
* Real-time dashboard connectivity

---

# Repository Structure

```bash
global-iphone-sales-analytics/
│
├── data/
│   ├── raw_iphone_sales.csv
│   └── cleaned_iphone_sales.csv
│
├── notebooks/
│   └── iphone_sales_analysis.ipynb
│
├── powerbi-dashboard/
│   └── Global_iPhone_Sales_Dashboard.pbix
│
├── screenshots/
│   ├── executive_dashboard.png
│   ├── customer_product_analytics.png
│   ├── trend_analysis.png
│   ├── revenue_decomposition.png
│   └── business_insights_summary.png
│
├── README.md
│
└── requirements.txt
```

---

# Conclusion

This project successfully demonstrates how Python and Power BI can transform raw sales data into actionable business intelligence insights. The solution combines data preprocessing, exploratory analysis, dashboard development, and strategic reporting to support informed business decision-making.

---

# Author

## Himanshu Dua

