-- =====================================
-- BANK TRANSACTION ANALYSIS PROJECT
-- =====================================

create database bank_analysis;

-- Use Database
use bank_analysis;

-- Preview dataset
Select * from bank_transactions 
limit 10;

-- Total number of transactions
SELECT COUNT(*) AS total_transactions
FROM bank_transactions;

-- Total unique accounts
SELECT COUNT(DISTINCT AccountID) AS total_accounts
FROM bank_transactions;

-- Total transaction value
select sum(TransactionAmount) as total_transaction_value 
from bank_transactions;

-- Average transaction amount
SELECT AVG(TransactionAmount) AS avg_transaction_amount
FROM bank_transactions;

-- Transactions by type
SELECT TransactionType,
COUNT(*) AS total_transactions
FROM bank_transactions
GROUP BY TransactionType;

-- Total amount by transaction type
SELECT TransactionType,
SUM(TransactionAmount) AS total_amount
FROM bank_transactions
GROUP BY TransactionType;


-- Transactions by channel
SELECT Channel,
COUNT(*) AS total_transactions
FROM bank_transactions
GROUP BY Channel
ORDER BY total_transactions DESC;




-- Total transaction value by channel
SELECT Channel,
SUM(TransactionAmount) AS total_value
FROM bank_transactions
GROUP BY Channel
ORDER BY total_value DESC;


-- Average transaction amount by channel
SELECT Channel,
AVG(TransactionAmount) AS avg_amount
FROM bank_transactions
GROUP BY Channel
ORDER BY avg_amount DESC;


-- Top 10 accounts by transaction value
SELECT AccountID,
SUM(TransactionAmount) AS total_spent
FROM bank_transactions
GROUP BY AccountID
ORDER BY total_spent DESC
LIMIT 10;



--  Most active accounts
SELECT AccountID,
COUNT(TransactionID) AS total_transactions
FROM bank_transactions
GROUP BY AccountID
ORDER BY total_transactions DESC
LIMIT 10;



-- Transactions by location 
SELECT Location,
COUNT(*) AS total_transactions
FROM bank_transactions
GROUP BY Location
ORDER BY total_transactions DESC;

-- Transaction value by location
SELECT Location,
SUM(TransactionAmount) AS total_value
FROM bank_transactions
GROUP BY Location
ORDER BY total_value DESC;

-- Spendings by Age
SELECT
CASE
WHEN CustomerAge < 25 THEN 'Under 25'
WHEN CustomerAge BETWEEN 25 AND 40 THEN '25-40'
WHEN CustomerAge BETWEEN 41 AND 60 THEN '41-60'
ELSE '60+'
END AS Age_Group,
COUNT(*) AS transactions
FROM bank_transactions
GROUP BY Age_Group;

-- Spending by Occupation
SELECT CustomerOccupation,
SUM(TransactionAmount) AS total_spending
FROM bank_transactions
GROUP BY CustomerOccupation
ORDER BY total_spending DESC;



-- Highest transaction
SELECT *
FROM bank_transactions
ORDER BY TransactionAmount DESC
LIMIT 1;


-- Transactions with high login attempts
SELECT AccountID,
TransactionAmount,
LoginAttempts
FROM bank_transactions
WHERE LoginAttempts > 3
ORDER BY LoginAttempts DESC;


-- Average transaction duration
SELECT AVG(TransactionDuration) AS avg_transaction_duration
FROM bank_transactions;

SELECT *
FROM bank_transactions
WHERE TransactionDuration > 300;

DESCRIBE bank_transactions;