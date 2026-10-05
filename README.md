# 📈 Stock Market Analysis | SQL + Power BI

**Turning raw stock market data into a decision-ready analytics layer for understanding stock performance, price trends, trading activity, and company-level insights.**

---

## 📌 Business Problem

Stock market datasets contain large volumes of historical information such as opening prices, closing prices, highest and lowest prices, daily returns, and trading volume. However, raw data alone does not provide an easy way to understand overall market performance.

Investors, analysts, and business stakeholders need quick answers to questions such as:

- Which companies are performing the best?
- Which stocks are showing weaker performance?
- Which stocks have the highest trading volume?
- How are stock prices changing over time?
- Which companies have higher average closing prices?
- How does performance change across different years?
- How does one company compare with another?

**Without a proper analytics layer, identifying these patterns from raw stock market data becomes time-consuming and difficult.**

I built a **SQL → Power BI analytics workflow** to transform raw stock market data into an interactive dashboard that makes these insights easier to explore and understand.

---

## 🎯 What I Did

1. **Cleaned and prepared the stock market dataset** by checking data types, missing values, duplicate records, dates, and numerical fields.
2. **Used SQL for analytical queries** to calculate average prices, highest and lowest prices, trading volume, daily returns, rankings, and historical trends.
3. **Built a Power BI data model** and created calculated measures using DAX.
4. **Designed an interactive Power BI dashboard** with KPI cards, trends, company comparisons, rankings, and filters.
5. **Converted the analysis into business-friendly insights** to make stock market performance easier to understand.

---

## 📊 Impact — The Numbers

The dashboard summarizes the major metrics available in the stock market dataset.

| **KPI** | **Value** |
|---|---:|
| **Total Companies** | **[Your Value]** |
| **Average Closing Price** | **[Your Value]** |
| **Highest Closing Price** | **[Your Value]** |
| **Lowest Closing Price** | **[Your Value]** |
| **Total Trading Volume** | **[Your Value]** |
| **Average Daily Return** | **[Your Value]** |
| **Total Records Analyzed** | **[Your Value]** |
| **Analysis Period** | **[Start Date – End Date]** |

> Replace the bracketed values with the exact values from your dataset/dashboard.

---

## 📈 Where the Value Concentrates

The analysis focuses on identifying where stock market activity and performance are concentrated.

- **Top-performing stocks:** Identify companies with stronger daily return performance.
- **Price performance:** Compare average, highest, and lowest closing prices across companies.
- **Trading activity:** Identify stocks with the highest trading volumes.
- **Price trends:** Analyze how closing prices change over time.
- **Yearly trends:** Compare stock performance and trading activity across different years.
- **Company comparison:** Evaluate multiple companies using consistent performance metrics.

These findings help transform the dashboard from a collection of charts into a tool for understanding **where market activity is concentrated and how stock performance differs across companies.**

---

## 🧭 How This Drives Business & Investment Analysis

| **Business Question** | **Dashboard Answer** | **Decision / Insight** |
|---|---|---|
| Which companies show stronger performance? | Company-level performance comparison | Helps identify stronger-performing stocks |
| Which stocks have higher returns? | Top stocks by daily return | Highlights stocks with stronger return performance |
| Which stocks have the highest trading activity? | Trading volume analysis | Identifies highly active stocks |
| How are prices changing over time? | Historical closing price trend | Helps understand market movement |
| How does performance change by year? | Yearly trend analysis | Helps identify changes in market performance |
| How does one company compare with another? | Interactive company filters | Enables direct company comparison |

---

## 🛠 Tools & Technologies

- **SQL** — data analysis, filtering, aggregation, ranking, and analytical queries
- **Power BI** — dashboard development, visualization, data modeling, and interactive analysis
- **DAX** — calculated measures and KPI development
- **Power Query** — data cleaning and transformation
- **Excel / CSV** — supporting data preparation and analysis

---

## 📊 Power BI Dashboard

The Power BI report contains three analytical pages designed to provide different levels of stock market analysis.

### 1. Executive Summary Dashboard

Provides a high-level overview of stock market performance.

**Key components:**

- Total Companies
- Average Closing Price
- Highest Closing Price
- Lowest Closing Price
- Total Trading Volume
- Average Daily Return
- Stock Performance Trend
- Top 5 Stocks by Average Daily Return
- Trading Volume by Year
- Trading Volume by Company

### 2. Company Performance Dashboard

Focuses on comparing individual companies and understanding their performance.

**Key components:**

- Lowest Closing Price
- Average Daily Return
- Average Closing Price
- Highest Closing Price
- Total Trading Volume
- YTD Return
- Company Performance Table
- Closing Price Trend
- Top 5 Stocks by Daily Return
- Average Daily Return by Company
- Trading Volume by Company

### 3. Detailed Market Analysis Dashboard

Provides a deeper view of stock market trends.

**Key components:**

- Closing Price Trend by Year
- Trading Volume by Year
- Top 5 Stocks by Return
- Top 10 Stocks by YTD Return
- Average Daily Return by Year
- Trading Volume by Company

### Interactive Filters

The dashboard allows users to filter the analysis using:

- **Company**
- **Year**
- **Month**

---

# 📸 Dashboard Screenshots

### Executive Summary Dashboard

![Stock Market Executive Summary](Screenshots/dashboard-1.png)



### Company Performance Dashboard

![Stock Market Company Performance](Screenshots/dashboard-2.png)

---

### Detailed Market Analysis Dashboard

![Stock Market Detailed Analysis](Screenshots/dashboard-3.png)

---

## 🗄️ SQL Analysis

SQL was used to explore the stock market dataset and answer important analytical questions.

The analysis includes:

- Company-wise performance
- Average stock prices
- Highest and lowest prices
- Trading volume analysis
- Daily return analysis
- Price movement analysis
- Company comparisons
- Historical trend analysis
- Top and bottom performing stocks

### Example Analytical Query

```sql
SELECT
    Company,
    AVG(Close) AS Average_Close_Price,
    MAX(High) AS Highest_Price,
    MIN(Low) AS Lowest_Price,
    SUM(Volume) AS Total_Trading_Volume
FROM stock_market_data
GROUP BY Company
ORDER BY Average_Close_Price DESC;
