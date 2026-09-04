# DecodeLabs Data Analytics Internship

## 📊 Data Analytics Internship Portfolio

This repository contains the projects and tasks completed during my **DecodeLabs Data Analytics Internship**.

The internship provided practical experience working with real-world datasets and applying data analytics techniques across **Python, Pandas, Matplotlib, Seaborn, SQL, SQLite, and DBeaver**.

The projects covered the complete analytical workflow, including:

* Data cleaning and preparation
* Data validation
* Exploratory Data Analysis (EDA)
* Statistical analysis
* Distribution analysis
* Outlier detection
* Data visualization
* SQL querying
* Sales and revenue analysis
* Product performance analysis
* Business insight generation

---

# 🗂️ Internship Tasks

| Task   | Project                                   | Primary Tools                       |
| ------ | ----------------------------------------- | ----------------------------------- |
| Task 1 | Data Cleaning & Exploratory Data Analysis | Python, Pandas, Jupyter Notebook    |
| Task 2 | Statistical Analysis & Outlier Detection  | Python, Pandas, Matplotlib, Seaborn |
| Task 3 | SQL Sales & Revenue Analysis              | SQL, SQLite, DBeaver                |

---

# 🐍 Task 1 — Data Cleaning & Exploratory Data Analysis

## Overview

Task 1 focused on using **Python and Pandas** to clean, structure, inspect, and validate raw dataset records before conducting further analysis.

The goal was to ensure that the dataset was accurate, consistent, and properly formatted for subsequent analytical work.

## Key Objectives

* Identify and handle missing records.
* Identify and handle duplicate records.
* Detect inconsistent data.
* Standardize date fields.
* Standardize categorical values.
* Validate numeric measurements.
* Perform initial Exploratory Data Analysis (EDA).
* Generate summary statistics programmatically.
* Export the cleaned dataset for further analysis.

## Tools Used

* Python
* Pandas
* Jupyter Notebook
* Microsoft Excel

## Data Cleaning Process

The workflow included:

1. Loading the raw dataset.
2. Inspecting the dataset structure.
3. Checking data types.
4. Identifying missing values.
5. Identifying duplicate records.
6. Checking inconsistent values.
7. Standardizing data formats.
8. Validating numerical fields.
9. Performing exploratory analysis.
10. Exporting the cleaned dataset.

## Exploratory Data Analysis

After cleaning the dataset, Python was used to examine the structure and characteristics of the data.

The analysis included:

* Dataset dimensions
* Column information
* Missing-value analysis
* Duplicate checks
* Descriptive statistics
* Variable distributions
* Basic data patterns

## Files Included

```text
Task 1/
│
├── Final.python.ipynb
├── cleaned_dataset.xlsx
├── exported_data.xlsx
└── README.md
```

### `Final.python.ipynb`

Jupyter Notebook containing the Python code used for:

* Data inspection
* Data cleaning
* Data validation
* Exploratory analysis
* Statistical summaries

### `cleaned_dataset.xlsx`

The sanitized and formatted dataset produced after the cleaning process.

### `exported_data.xlsx`

Contains exported statistical summaries and analytical outputs.

## Key Skills Demonstrated

* Python programming
* Pandas
* Data cleaning
* Data preprocessing
* Data validation
* Exploratory Data Analysis
* Descriptive statistics
* Excel data handling

---

# 📈 Task 2 — Statistical Analysis & Outlier Detection

## Overview

Task 2 focused on using Python for **statistical exploration, distribution analysis, visualization, and anomaly detection** across key revenue and order metrics.

The main analytical variable examined was **`TotalPrice`**, which represents the financial value associated with orders.

## Key Objectives

* Perform distribution analysis.
* Calculate summary statistics using Pandas.
* Examine revenue and order-value distributions.
* Detect potential outliers.
* Visualize the distribution of `TotalPrice`.
* Identify unusual purchasing patterns.
* Summarize findings from the analysis.

## Tools Used

* Python
* Pandas
* Matplotlib
* Seaborn
* Jupyter Notebook

## Statistical Analysis

The dataset was explored using descriptive statistics to understand the characteristics of the revenue data.

The analysis examined metrics such as:

* Mean
* Median
* Minimum
* Maximum
* Standard deviation
* Quartiles

These statistics provided an overview of the central tendency and spread of order values.

## Distribution Analysis

The distribution of `TotalPrice` was examined to understand how order values were spread across the dataset.

Visual analysis was used to identify:

* Concentration of order values
* Variation in prices
* Skewness
* Extreme observations
* Potential anomalies

## Outlier Detection

A **boxplot** was created using Seaborn and Matplotlib to identify potential outliers in `TotalPrice`.

The boxplot provides a visual representation of:

* Lower values
* First quartile
* Median
* Third quartile
* Upper values
* Potential outliers

Outliers can represent unusually large or small orders and may require additional investigation during business analysis.

## Visualization

The primary visualization produced during the task was:

```text
boxplot_totalprice.png
```

This visualization illustrates the distribution of `TotalPrice` and highlights potential outliers within the dataset.

## Files Included

```text
Task 2/
│
├── Final.python.ipynb
├── boxplot_totalprice.png
└── README.md
```

### `Final.python.ipynb`

Jupyter Notebook containing the Python code used for:

* Statistical analysis
* Distribution analysis
* Data exploration
* Visualization
* Outlier detection

### `boxplot_totalprice.png`

Exported boxplot showing the distribution and potential outliers in `TotalPrice`.

## Key Skills Demonstrated

* Statistical analysis
* Pandas
* Data visualization
* Matplotlib
* Seaborn
* Distribution analysis
* Outlier detection
* Anomaly identification
* Analytical interpretation

---

# 🗄️ Task 3 — SQL Sales & Revenue Analysis

## Overview

Task 3 focused on querying a **relational database using SQLite in DBeaver** to calculate sales metrics, fulfilled revenue, average order values, and product/category performance.

The task demonstrated how SQL can be used to transform transactional data into useful business information.

## Key Objectives

* Write structured SQL queries.
* Retrieve relevant records using `SELECT`.
* Filter records using `WHERE`.
* Group records using `GROUP BY`.
* Sort analytical results using `ORDER BY`.
* Calculate order volume using `COUNT`.
* Calculate revenue using `SUM`.
* Calculate average order value using `AVG`.
* Analyse sales by product.
* Analyse fulfilled orders using order status.

## Tools Used

* SQL
* SQLite
* DBeaver

## SQL Concepts Applied

### SELECT

Used to retrieve relevant columns from the database.

### WHERE

Used to filter the dataset based on specific conditions.

For example, the analysis focused on orders with:

```sql
OrderStatus = 'Delivered'
```

### GROUP BY

Used to aggregate sales information by product.

### ORDER BY

Used to rank products according to revenue performance.

### COUNT

Used to calculate the total number of orders.

### SUM

Used to calculate total revenue.

### AVG

Used to calculate average order value.

---

# 🔑 Key SQL Query

The main query used in the task was:

```sql
SELECT 
    Product,
    COUNT(OrderID) AS Total_Orders,
    SUM(TotalPrice) AS Total_Revenue,
    AVG(TotalPrice) AS Average_Order_Value
FROM Dataset_for_Data_Analytics
WHERE OrderStatus = 'Delivered'
GROUP BY Product
ORDER BY Total_Revenue DESC;
```

## Query Explanation

### `SELECT`

The query retrieves:

* Product
* Total number of orders
* Total revenue
* Average order value

### `COUNT(OrderID)`

Calculates the number of orders associated with each product.

### `SUM(TotalPrice)`

Calculates the total revenue generated by each product.

### `AVG(TotalPrice)`

Calculates the average order value for each product.

### `WHERE OrderStatus = 'Delivered'`

Limits the analysis to fulfilled/delivered orders.

### `GROUP BY Product`

Aggregates the results for each product.

### `ORDER BY Total_Revenue DESC`

Ranks products from the highest revenue-generating product to the lowest.

## Analytical Questions

The SQL analysis helps answer questions such as:

* Which products generate the most revenue?
* Which products have the highest number of orders?
* What is the average order value for each product?
* How does fulfilled sales performance differ across products?
* Which products are strongest from a revenue perspective?

## Files Included

```text
Task 3/
│
├── [SQL query/script files]
└── README.md
```

## Key Skills Demonstrated

* SQL
* SQLite
* DBeaver
* Relational database querying
* Data aggregation
* Sales analysis
* Revenue analysis
* Product performance analysis
* Business intelligence

---

# 🔄 Overall Data Analytics Workflow

The three tasks demonstrate a progressive data analytics workflow:

```text
                RAW DATA
                   │
                   ▼
        ┌────────────────────┐
        │     TASK 1         │
        │ Data Cleaning & EDA│
        └────────────────────┘
                   │
                   ▼
          CLEAN DATASET
                   │
                   ▼
        ┌────────────────────┐
        │     TASK 2         │
        │ Statistical &      │
        │ Outlier Analysis   │
        └────────────────────┘
                   │
                   ▼
        DEEPER DATA INSIGHTS
                   │
                   ▼
        ┌────────────────────┐
        │     TASK 3         │
        │ SQL Sales & Revenue│
        │      Analysis      │
        └────────────────────┘
                   │
                   ▼
          BUSINESS INSIGHTS
```

---

# 🧰 Technologies Used

### Python

Used for:

* Data cleaning
* Data transformation
* Exploratory Data Analysis
* Statistical analysis
* Data validation

### Pandas

Used for:

* Dataset manipulation
* Data cleaning
* Summary statistics
* Data exploration

### Matplotlib

Used for data visualization.

### Seaborn

Used to create statistical visualizations, including boxplots.

### SQL

Used to query and analyse relational data.

### SQLite

Used as the relational database environment for SQL analysis.

### DBeaver

Used as the database management and SQL development environment.

### Microsoft Excel

Used for storing, reviewing, and exporting processed datasets and analytical outputs.

---

# 📚 Key Learning Outcomes

Through these internship tasks, I developed practical experience in the following areas:

## Data Cleaning

Learned how to identify and resolve common data-quality issues including:

* Missing values
* Duplicate records
* Incorrect formats
* Inconsistent values
* Incorrect data types

## Exploratory Data Analysis

Learned how to inspect datasets programmatically and identify:

* Patterns
* Trends
* Distributions
* Statistical characteristics
* Potential anomalies

## Statistical Analysis

Developed experience using descriptive statistics to understand numerical variables and revenue-related metrics.

## Data Visualization

Learned how to communicate analytical findings visually using:

* Boxplots
* Statistical charts
* Distribution visualizations

## SQL Analysis

Developed practical experience querying relational databases and using SQL aggregation functions to generate business metrics.

## Business Analysis

Learned how technical analysis can be translated into business questions around:

* Revenue
* Sales volume
* Product performance
* Average order value
* Customer purchasing behaviour

---

# 💡 Key Takeaways

The internship strengthened my understanding that effective data analysis begins with **quality data**.

The workflow demonstrated that:

> **Clean data → reliable analysis → meaningful insights → better decisions**

The projects also strengthened my ability to move between different analytical environments, from Python-based data analysis to SQL-based database analysis.

---

# 🚀 Skills Developed During the Internship

* Python
* Pandas
* SQL
* SQLite
* DBeaver
* Matplotlib
* Seaborn
* Microsoft Excel
* Data Cleaning
* Data Validation
* Exploratory Data Analysis
* Statistical Analysis
* Data Visualization
* Outlier Detection
* Revenue Analysis
* Sales Analysis
* Product Performance Analysis
* Business Insight Generation

---

# 📂 Repository Structure

```text
DecodeLabs-Internship/
│
├── Task 1/
│   ├── Final.python.ipynb
│   ├── cleaned_dataset.xlsx
│   ├── exported_data.xlsx
│   └── README.md
│
├── Task 2/
│   ├── Final.python.ipynb
│   ├── boxplot_totalprice.png
│   └── README.md
│
├── Task 3/
│   ├── SQL query/script files
│   └── README.md
│
└── README.md
```

---

# 👨‍💻 Author

**Ajayi Oluwatimilehin Benjamin**

Data Analyst | Excel | Power BI | Python | SQL

### Professional Links

* LinkedIn: linkedin.com/in/benaj619
* GitHub: github.com/benaj619
* Portfolio: benaj619.my.canva.site

---

# ⭐ About This Repository

This repository documents my practical learning and project work during the **DecodeLabs Data Analytics Internship**.

It demonstrates my ability to work with raw datasets, clean and validate data, perform exploratory and statistical analysis, query databases using SQL, visualize findings, and translate data into useful business insights.
