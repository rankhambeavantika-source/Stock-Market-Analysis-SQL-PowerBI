```sql
/* ============================================================
   STOCK MARKET ANALYSIS
   SQL Business Analysis Project
   Database: Stock_data
   Tool: MySQL Workbench
   ============================================================ */


/* ============================================================
   1. DATABASE SETUP
   ============================================================ */

CREATE DATABASE IF NOT EXISTS Stock_data;

USE Stock_data;

SHOW TABLES;


/* Rename original table if required */

RENAME TABLE big_tech_stock_prices TO Stock_Data;


/* ============================================================
   2. DATA OVERVIEW
   ============================================================ */

/* View complete dataset */

SELECT *
FROM Stock_data;


/* Total number of records */

SELECT COUNT(*) AS total_records
FROM Stock_data;


/* Analysis period */

SELECT
    MIN(date) AS start_date,
    MAX(date) AS end_date
FROM Stock_data;


/* Number of records for each stock */

SELECT
    stock_symbol,
    COUNT(*) AS total_records
FROM Stock_data
GROUP BY stock_symbol
ORDER BY total_records DESC;


/* ============================================================
   3. STOCK PERFORMANCE ANALYSIS
   ============================================================ */


/* 3.1 Stock with highest average daily return */

SELECT
    stock_symbol,
    AVG((close - open) / open * 100) AS avg_daily_return_pct
FROM Stock_data
GROUP BY stock_symbol
ORDER BY avg_daily_return_pct DESC
LIMIT 1;


/* 3.2 Stock with lowest average daily return */

SELECT
    stock_symbol,
    AVG((close - open) / open * 100) AS avg_daily_return_pct
FROM Stock_data
GROUP BY stock_symbol
ORDER BY avg_daily_return_pct ASC
LIMIT 1;


/* 3.3 Stock with highest average trading volume */

SELECT
    stock_symbol,
    AVG(volume) AS avg_volume
FROM Stock_data
GROUP BY stock_symbol
ORDER BY avg_volume DESC
LIMIT 1;


/* 3.4 Stock with highest average closing price */

SELECT
    stock_symbol,
    AVG(close) AS avg_close
FROM Stock_data
GROUP BY stock_symbol
ORDER BY avg_close DESC
LIMIT 1;


/* ============================================================
   4. PRICE RANGE & VOLATILITY ANALYSIS
   ============================================================ */


/* 4.1 Stock with highest average daily price range */

SELECT
    stock_symbol,
    AVG(high - low) AS avg_price_range
FROM Stock_data
GROUP BY stock_symbol
ORDER BY avg_price_range DESC
LIMIT 1;


/* 4.2 Stock volatility based on percentage price range */

SELECT
    stock_symbol,
    AVG((high - low) / close * 100) AS volatility_pct
FROM Stock_data
GROUP BY stock_symbol
ORDER BY volatility_pct DESC;


/* ============================================================
   5. FIRST & LAST PRICE ANALYSIS
   ============================================================ */


/* First and last closing price for each stock */

SELECT DISTINCT
    stock_symbol,

    FIRST_VALUE(close) OVER (
        PARTITION BY stock_symbol
        ORDER BY date
    ) AS first_close,

    LAST_VALUE(close) OVER (
        PARTITION BY stock_symbol
        ORDER BY date
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND UNBOUNDED FOLLOWING
    ) AS last_close

FROM Stock_data;


/* ============================================================
   6. OVERALL STOCK RETURN
   ============================================================ */


/* Overall return from first trading price to last trading price */

SELECT DISTINCT
    stock_symbol,

    FIRST_VALUE(close) OVER (
        PARTITION BY stock_symbol
        ORDER BY date
    ) AS first_close,

    LAST_VALUE(close) OVER (
        PARTITION BY stock_symbol
        ORDER BY date
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND UNBOUNDED FOLLOWING
    ) AS last_close,

    (
        (
            LAST_VALUE(close) OVER (
                PARTITION BY stock_symbol
                ORDER BY date
                ROWS BETWEEN UNBOUNDED PRECEDING
                AND UNBOUNDED FOLLOWING
            )
            -
            FIRST_VALUE(close) OVER (
                PARTITION BY stock_symbol
                ORDER BY date
            )
        )
        /
        FIRST_VALUE(close) OVER (
            PARTITION BY stock_symbol
            ORDER BY date
        )
    ) * 100 AS overall_return_pct

FROM Stock_data
ORDER BY overall_return_pct DESC;


/* ============================================================
   7. MAXIMUM DRAWDOWN ANALYSIS
   ============================================================ */


/* Stock with the largest fall from a previous peak */

SELECT
    stock_symbol,
    MIN((close - peak_price) / peak_price * 100) AS max_drawdown_pct
FROM (
    SELECT
        stock_symbol,
        date,
        close,

        MAX(close) OVER (
            PARTITION BY stock_symbol
            ORDER BY date
            ROWS BETWEEN UNBOUNDED PRECEDING
            AND CURRENT ROW
        ) AS peak_price

    FROM Stock_data
) AS t

GROUP BY stock_symbol
ORDER BY max_drawdown_pct ASC;


/* ============================================================
   8. HIGHEST & LOWEST PRICE ANALYSIS
   ============================================================ */


/* Stock that reached the highest closing price */

SELECT
    stock_symbol,
    date,
    close
FROM Stock_data
ORDER BY close DESC
LIMIT 1;


/* Stock that reached the lowest closing price */

SELECT
    stock_symbol,
    date,
    close
FROM Stock_data
ORDER BY close ASC
LIMIT 1;


/* ============================================================
   9. BIGGEST DAILY MOVEMENT
   ============================================================ */


/* Biggest single-day gain */

SELECT
    stock_symbol,
    date,
    open,
    close,
    ((close - open) / open) * 100 AS daily_return_pct
FROM Stock_data
ORDER BY daily_return_pct DESC
LIMIT 1;


/* Biggest single-day loss */

SELECT
    stock_symbol,
    date,
    open,
    close,
    ((close - open) / open) * 100 AS daily_return_pct
FROM Stock_data
ORDER BY daily_return_pct ASC
LIMIT 1;


/* ============================================================
   10. BUSINESS SUMMARY
   ============================================================ */

/*
   Key business questions answered:

   1. Which stock has the highest average daily return?
   2. Which stock has the lowest average daily return?
   3. Which stock has the highest trading volume?
   4. Which stock has the highest average closing price?
   5. Which stock has the highest average daily price range?
   6. Which stock has the highest volatility?
   7. What was the first and last closing price of each stock?
   8. Which stock generated the highest overall return?
   9. Which stock experienced the largest drawdown?
   10. Which stock reached the highest closing price?
   11. Which stock reached the lowest closing price?
   12. What was the biggest single-day gain?
   13. What was the biggest single-day loss?

   These analyses support comparison of:
   - Stock performance
   - Market activity
   - Price movement
   - Volatility and risk
   - Overall returns
   - Downside risk
*/
```
