<div align="center">

# 📈 Stock Market Analysis
### SQL + Power BI | Price • Return • Volume

![SQL](https://img.shields.io/badge/SQL-Analysis-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Excel](https://img.shields.io/badge/Excel-Validation-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)
![DAX](https://img.shields.io/badge/DAX-Measures-0078D4?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

**Transforming 14,315 historical stock market records into a decision-ready analytics solution for understanding stock performance, price movements, trading activity, returns, and company-level trends.**

<br>

![Records](https://img.shields.io/badge/📊_Records-14,315-blue?style=flat-square)
![Stocks](https://img.shields.io/badge/🏢_Stocks-14-green?style=flat-square)
![Period](https://img.shields.io/badge/📅_Period-2010--2014-orange?style=flat-square)
![Pages](https://img.shields.io/badge/🖥️_Dashboard_Pages-3-purple?style=flat-square)

</div>

---

## 🔗 Project Links

| 📌 Resource | 🌐 Link |
|---|---|
| 🗄️ **SQL Queries** | [📄 View SQL Script](https://github.com/rankhambeavantika-source/Stock-Market-Analysis-SQL-PowerBI/blob/main/Share%20Market%20Analysis.sql) |
| 📥 **Power BI File (.pbix)** | [📊 Download Dashboard](https://github.com/rankhambeavantika-source/Stock-Market-Analysis-SQL-PowerBI/blob/main/Stock%20Market%20analsysis.pbix) |
| 📁 **Raw Dataset (CSV)** | [🧾 View Raw Data](https://github.com/rankhambeavantika-source/Stock-Market-Analysis-SQL-PowerBI/blob/main/Stock_Market_Raw_Data.csv) |

---

## 📑 Table of Contents

| | | |
|---|---|---|
| [📌 Overview](#-project-overview) | [❓ Business Problem](#-business-problem) | [🎯 Objectives](#-project-objectives) |
| [🔄 Workflow](#-end-to-end-workflow) | [📊 Dataset](#-dataset-overview) | [🧹 Data Preparation](#-data-preparation) |
| [🗄️ SQL Analysis](#️-sql-analysis) | [⚙️ Power Query](#️-power-query--data-model) | [🧮 DAX & KPIs](#-dax--kpi-development) |
| [🧭 Business Questions](#-business-questions-answered) | [📊 Dashboard](#-power-bi-dashboard) | [💡 Key Insights](#-key-insights) |
| [📁 Repo Structure](#-repository-structure) | [🛠️ Skills](#️-tools--skills-demonstrated) | [🔮 Future Work](#-future-enhancements) |

---

## 📌 Project Overview

This project analyzes historical market data for **14 stocks from 2010 to 2014** using **SQL, Excel, Power Query, DAX, and Power BI**. Raw financial data is converted into an interactive reporting solution that highlights performance patterns, company comparisons, daily returns, trading-volume concentration, and price trends over time.

| 📌 Item | 📝 Details |
|---|---|
| 🏦 **Domain** | Finance / Stock Market Analytics |
| 🧾 **Records** | 14,315 |
| 🏢 **Stocks** | 14 |
| 📅 **Period** | 2010 – 2014 |
| 🔍 **Focus Areas** | Price • Return • Volume • Time Trends |
| 🖥️ **Deliverable** | 3-page interactive Power BI dashboard |

---

## ❓ Business Problem

Historical stock datasets contain opening and closing prices, daily highs and lows, trading volume, and daily returns. Across thousands of rows, multiple companies, and several years, spotting meaningful patterns manually is slow and error-prone.

> 🧠 **Key questions this project answers**

- 📈 Which stocks demonstrate stronger return performance?
- 💰 Which companies have higher average closing prices?
- 📦 Which stocks have the highest trading activity?
- 🕒 How do closing prices change over time?
- 🔁 Which companies generate stronger average daily returns?
- 📅 How does performance change across years?
- 🥧 Which stocks contribute the largest share of trading volume?
- 🏆 Which companies rank among the top performers?

> ✅ **Solution:** a **SQL → Power BI analytics workflow** that prepares, analyzes, models, and visualizes the data in an interactive dashboard.

---

## 🎯 Project Objectives

| | Objective |
|---|---|
| ✅ | Analyze historical stock price movements |
| ✅ | Measure company-level stock performance |
| ✅ | Evaluate daily return behavior |
| ✅ | Compare trading volume across companies |
| ✅ | Identify top-performing stocks |
| ✅ | Analyze yearly price and return trends |
| ✅ | Evaluate YTD stock performance |
| ✅ | Build an interactive Power BI reporting solution |
| ✅ | Convert analytical results into business-friendly insights |

---

## 🔄 End-to-End Workflow

```text
 📥 Raw Data
     ⬇️
 📗 Excel Data Validation
     ⬇️
 🧹 Data Cleaning
     ⬇️
 🗄️ SQL Analysis
     ⬇️
 ⚙️ Power Query Transformation
     ⬇️
 🧱 Power BI Data Model
     ⬇️
 🧮 DAX Measures
     ⬇️
 📊 Interactive Dashboard
     ⬇️
 💡 Business Insights
```

---

## 📊 Dataset Overview

| 📌 Metric | 🔢 Details |
|---|---:|
| 🧾 **Total Records** | **14,315** |
| 🏢 **Total Stocks** | **14** |
| 📅 **Analysis Period** | **2010 – 2014** |
| 🔍 **Analysis Areas** | Price, Return & Volume |
| 🧰 **Analytical Tools** | SQL, Excel, Power BI |
| 🔧 **Transformation** | Power Query |
| 🧮 **Calculation Layer** | DAX |

**🧬 Key fields:** `Date` • `Stock Symbol` • `Open` • `High` • `Low` • `Close` • `Volume` • `Daily Return`

📁 **Raw data:** [Stock_Market_Raw_Data.csv](https://github.com/rankhambeavantika-source/Stock-Market-Analysis-SQL-PowerBI/blob/main/Stock_Market_Raw_Data.csv)

---

## 🧹 Data Preparation

| ✔️ Check | 🎯 Purpose |
|---|---|
| 🔁 Duplicate records | Prevent double counting |
| ❌ Missing values | Ensure completeness |
| 🔤 Data types | Correct numeric and date formats |
| 📅 Date validation | Valid, continuous historical dates |
| 🔢 Numerical fields | Detect invalid or outlier values |
| 📉 Daily return validation | Confirm return calculations |
| 🏷️ Stock-symbol consistency | Avoid mismatched tickers |
| 🗓️ Date-range verification | Confirm 2010–2014 coverage |

---

## 🗄️ SQL Analysis

SQL served as the analytical foundation and validation layer before dashboard development.

📄 **Full script:** [Share Market Analysis.sql](https://github.com/rankhambeavantika-source/Stock-Market-Analysis-SQL-PowerBI/blob/main/Share%20Market%20Analysis.sql)

**🔍 Coverage:**

- 🔢 Record counts and dataset validation
- 📅 Date-range analysis
- 🏢 Company-level analysis
- 💵 Average, maximum, and minimum prices
- 📦 Trading-volume aggregation
- 🔁 Daily-return analysis
- 🏆 Company rankings and top performers
- 📈 Historical trends and yearly comparisons

<details>
<summary><b>🧪 Example 1: Company Performance Summary</b> (click to expand)</summary>

```sql
SELECT
    stock_symbol,
    AVG(close)  AS average_closing_price,
    MAX(high)   AS highest_price,
    MIN(low)    AS lowest_price,
    SUM(volume) AS total_trading_volume
FROM stock_data
GROUP BY stock_symbol
ORDER BY average_closing_price DESC;
```
</details>

<details>
<summary><b>🧪 Example 2: Yearly Trading Volume by Stock</b> (click to expand)</summary>

```sql
SELECT
    stock_symbol,
    EXTRACT(YEAR FROM trade_date) AS trade_year,
    SUM(volume)                   AS yearly_volume
FROM stock_data
GROUP BY stock_symbol, EXTRACT(YEAR FROM trade_date)
ORDER BY trade_year, yearly_volume DESC;
```
</details>

<details>
<summary><b>🧪 Example 3: Top 5 Stocks by Average Daily Return</b> (click to expand)</summary>

```sql
SELECT
    stock_symbol,
    AVG(daily_return) AS avg_daily_return
FROM stock_data
GROUP BY stock_symbol
ORDER BY avg_daily_return DESC
LIMIT 5;
```
</details>

---

## ⚙️ Power Query & Data Model

- 🔄 Transforming and typing fields
- ✅ Checking data consistency
- 🗓️ Preparing date-related fields (Year, Month)
- 🧱 Structuring columns for analysis
- 🔗 Supporting the Power BI data model

---

## 🧮 DAX & KPI Development

| 📌 KPI | 📝 Description |
|---|---|
| 💰 Average Closing Price | Mean closing price for the selection |
| 🔺 Highest Closing Price | Peak closing price |
| 🔻 Lowest Closing Price | Lowest closing price |
| 🔁 Average Daily Return | Mean daily return |
| 📦 Total Trading Volume | Sum of shares traded |
| 📆 YTD Return | Year-to-date performance |
| 🏆 Stock Rankings | Top N by return, volume, or YTD |
| ⚖️ Company Comparisons | Consistent metrics across stocks |

```dax
Avg Closing Price = AVERAGE ( stock_data[close] )
Total Volume      = SUM ( stock_data[volume] )
Avg Daily Return  = AVERAGE ( stock_data[daily_return] )
```

---

## 🧭 Business Questions Answered

| ❓ Business Question | 🔎 Analysis Used | ✅ Value |
|---|---|---|
| Which stocks show stronger return performance? | Top stock return analysis | Identifies stronger performers |
| Which companies have higher closing prices? | Average and highest close | Enables company comparison |
| Which stocks have the highest trading activity? | Trading volume analysis | Identifies highly active stocks |
| How are prices changing over time? | Closing price trend | Reveals historical movement |
| How does performance change by year? | Yearly analysis | Highlights changes over time |
| Which stocks are top performers? | Top 5 / Top 10 analysis | Supports performance comparison |
| How does YTD performance differ? | YTD return analysis | Enables comparative analysis |
| Who contributes the most volume? | Volume-by-stock analysis | Shows market-activity concentration |

---

## 📊 Power BI Dashboard

The report contains **three analytical pages**, each designed for a different level of analysis.

### 1️⃣ Executive Summary 🧭

> A high-level view of overall stock market performance.

- 🎚️ Filters: Stock Symbol, Year, Month
- 🥇 Best Performing Stock • 🥉 Worst Performing Stock
- 📦 Highest Trading Volume • 💰 Highest Average Close
- 📈 Performance Trend Over Time
- 🏆 Top 5 Stocks by Return
- 📊 Trading Volume by Year and by Stock
- 🥧 Stock Distribution by Trading Volume
- 🗓️ Analysis Period panel (2010–2014 • 14 stocks • 14,315 records)

<div align="center">

![Executive Summary Dashboard](https://github.com/rankhambeavantika-source/Stock-Market-Analysis-SQL-PowerBI/blob/main/Executive_summary.png?raw=true)

</div>

---

### 2️⃣ Stock Performance Analysis 💹

> Detailed company-level comparison across price, return, and volume.

- 💲 KPIs: Lowest / Average / Highest Closing Price
- 🔁 Average Daily Return and YTD Return
- 📦 Total Trading Volume and Total Stocks
- 📈 Stock Closing Price Trend
- 🗂️ Company Performance Table
- 🏆 Top 5 Stocks by Daily Return
- 📊 Daily Return and Trading Volume by Stock

<div align="center">

![Stock Performance Analysis](https://github.com/rankhambeavantika-source/Stock-Market-Analysis-SQL-PowerBI/blob/main/Detailed_Market_Analysis.png?raw=true)

</div>

---

### 3️⃣ Detailed Market Analysis 🔬

> Deeper time-based analysis of market behavior.

- 📈 Closing Price Trend by Year
- 📦 Trading Volume by Year
- 🏆 Top 5 Stocks by Return
- 🥇 Top 10 Stocks by YTD Return
- 🔁 Average Daily Return by Year
- 🔍 Comparative stock analysis

<div align="center">

![Detailed Market Analysis](https://github.com/rankhambeavantika-source/Stock-Market-Analysis-SQL-PowerBI/blob/main/Stock-Performance_analysis.png?raw=true)

</div>

---

## 🎛️ Interactive Features

| 🎚️ Filter | 🧭 What Users Can Do |
|---|---|
| 🏷️ **Stock Symbol** | Select one or compare multiple companies |
| 📅 **Year** | Focus on a specific year |
| 🗓️ **Month** | Drill into monthly behavior |

✨ KPIs update dynamically as filters change, so users can explore price trends, compare daily returns, and analyze trading-volume patterns.

---

## 💡 Key Insights

### 📌 Highlights from the Dashboard

| 📊 Metric | 🔢 Value |
|---|---:|
| 🔻 Lowest Closing Price | 1.05 |
| 🔺 Highest Closing Price | 691.69 |
| 📆 YTD Return | 14.75% |
| 📦 Total Trading Volume | ~2 Trillion shares |
| 🍎 Highest Trading Volume | AAPL |
| 🎬 Highest Average Close | NFLX (188.25) |
| 🏆 Top Stocks by Average Daily Return | GOOGL, NVDA, TSLA, INTC, AAPL |

### 🔍 What the dashboard helps you spot

- 🚀 Stocks with stronger daily-return performance
- 💰 Companies with higher average closing prices
- 📦 Stocks with significant trading activity
- 📉 Changes in closing prices over time
- ⚖️ Performance differences between companies
- 📅 Yearly changes in trading volume
- 🥧 Concentration of trading activity in selected stocks

---

## 📁 Repository Structure

```text
📦 Stock-Market-Analysis-SQL-PowerBI
 ┣ 🗄️ Share Market Analysis.sql
 ┣ 📊 Stock Market analsysis.pbix
 ┣ 🧾 Stock_Market_Raw_Data.csv
 ┣ 🖼️ Executive_summary.png
 ┣ 🖼️ Stock-Performance_analysis.png
 ┣ 🖼️ Detailed_Market_Analysis.png
 ┗ 📄 README.md
```

---

## 🚀 How to Use This Project

1. 📥 **Clone** the repository
   ```bash
   git clone https://github.com/rankhambeavantika-source/Stock-Market-Analysis-SQL-PowerBI.git
   ```
2. 🗄️ **Run** the SQL script on the raw dataset
3. 📊 **Open** the `.pbix` file in Power BI Desktop
4. 🔄 **Refresh** the data source path if prompted
5. 🎛️ **Explore** using the Stock, Year, and Month filters

---

## 🛠️ Tools & Skills Demonstrated

| 🧰 Category | 💼 Details |
|---|---|
| 🗄️ **Querying** | SQL aggregation, grouping, filtering, ranking |
| 🧹 **Data Cleaning** | Excel validation, duplicate and missing-value checks |
| 🔧 **ETL** | Power Query transformations |
| 🧱 **Data Modeling** | Power BI data model, date fields |
| 🧮 **Calculations** | DAX measures and KPIs |
| 📊 **Visualization** | Interactive multi-page dashboards |
| 📈 **Analytics** | Trend, return, volume, and ranking analysis |
| 🗣️ **Communication** | Business-friendly insight storytelling |

---

## 🔮 Future Enhancements

- 📊 Add volatility and risk metrics (standard deviation, Sharpe ratio)
- 📈 Add moving averages (50-day / 200-day)
- 🔗 Add correlation analysis between stocks
- 🔄 Extend the dataset beyond 2014
- 🤖 Add forecasting for price and volume
- 🌐 Publish the dashboard to Power BI Service

---

## 👤 Author

**Avantika Rankhambe**
📧 rankhambeavantika@gmail.com 
• 💼 [LinkedIn](www.linkedin.com/in/avantika-rankhambe-746808275) 
• 🐙 [GitHub](https://github.com/rankhambeavantika-source)

⭐ *If you found this project useful, give it a star!* ⭐

</div>
