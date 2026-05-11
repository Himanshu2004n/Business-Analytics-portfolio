create database AI_supplychain_analytics;

use AI_supplychain_analytics;

create table semiconductors_tradeflows (
       trade_id int primary key auto_increment,
       country varchar(100),
       partner_country varchar(100),
       year int,
       import_value decimal(15,2),
       export_value decimal(15,2),
       semiconductor_type varchar(100));
       
       
create table trade_sanctions (
      sanction_id int primary key auto_increment, 
      country varchar(100),
      sanction_type varchar(100),
      affected_sector varchar(100),
      year int,
      severity_level varchar(50));
      
create table national_ai_infrastructure_budgets (
       budget_id int primary key auto_increment, 
       country varchar(100),
       year int,
       ai_budget_billions_usd decimal(15,2),
       ai_research_centers int,
       semiconductor_investment_billions decimal(15,2));
       
create table energy_grid_capacity (
     energy_id int primary key auto_increment, 
     country varchar(100),
     year int,
     grid_capacity decimal(10,2),
     renewable_energy_percent decimal(5,2),
     industrial_energy_demand_gw decimal(10,2));
     
CREATE TABLE macroeconomic_indicators (
    macro_id INT PRIMARY KEY AUTO_INCREMENT,
    country VARCHAR(100),
    year INT,
    gdp_growth_percent DECIMAL(5,2),
    inflation_rate DECIMAL(5,2),
    unemployment_rate DECIMAL(5,2)
);

CREATE TABLE company_profiles (
    company_id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(200),
    country VARCHAR(100),
    industry VARCHAR(100),
    market_cap_billion DECIMAL(15,2),
    ai_focus_area VARCHAR(200)
);

SHOW TABLES;
SELECT * FROM 06_company_profiles limit 20;


DROP TABLE company_profiles;

RENAME TABLE 06_company_profiles TO company_profiles;

DESCRIBE company_profiles;
DESCRIBE semiconductors_tradeflows;

DESCRIBE trade_sanctions;

ALTER TABLE company_profiles
MODIFY company_id VARCHAR(50);

ALTER TABLE company_profiles
ADD PRIMARY KEY (company_id);

ALTER TABLE semiconductors_tradeflows
MODIFY trade_id VARCHAR(50);
     
ALTER TABLE semiconductors_tradeflows
ADD PRIMARY KEY (trade_id);

ALTER TABLE trade_sanctions
MODIFY sanction_id VARCHAR(50);

ALTER TABLE trade_sanctions
ADD PRIMARY KEY (sanction_id);

describe national_ai_infrastructure_budgets;

alter table national_ai_infrastructure_budgets
modify budget_id varchar(50);

alter table national_ai_infrastructure_budgets
add primary key(budget_id);

describe macroeconomic_indicators;

alter table macroeconomic_indicators
modify macro_id varchar(50);

alter table macroeconomic_indicators
add primary key(macro_id);

describe energy_grid_capacity;

alter table energy_grid_capacity
modify energy_id varchar(50);
       
alter table energy_grid_capacity
add primary key(energy_id);

select count(*) from company_profiles ;

select count(*) from energy_grid_capacity;

select count(*) from macroeconomic_indicators;

select count(*) from national_ai_infrastructure_budgets;

select count(*) from semiconductors_tradeflows;

select count(*) from trade_sanctions;

SELECT *
FROM company_profiles
WHERE company_name IS NULL
   OR hq_country IS NULL;
   
SELECT *
FROM semiconductors_tradeflows
WHERE exporter_country IS NULL
   OR importer_country IS NULL;

SELECT *
FROM trade_sanctions
WHERE target_country IS NULL;

SELECT *
FROM national_ai_infrastructure_budgets
WHERE country IS NULL;

SELECT *
FROM macroeconomic_indicators
WHERE country IS NULL;

SELECT *
FROM energy_grid_capacity
WHERE country IS NULL;

select hq_country , round(sum(revenue_usd_bn),2) as total_revenue_bn
from company_profiles
group by hq_country
order by total_revenue_bn desc;

SELECT
    exporter_country,
    ROUND(SUM(trade_value_usd_millions),2) AS total_exports
FROM semiconductors_tradeflows
GROUP BY exporter_country
ORDER BY total_exports DESC;

SELECT
    target_country,
    COUNT(*) AS total_sanctions
FROM trade_sanctions
GROUP BY target_country
ORDER BY total_sanctions DESC;

SELECT
    country, 
    round(SUM(total_ai_investment_usd_bn),2)as total_ai_budget
FROM national_ai_infrastructure_budgets
GROUP BY country
ORDER BY total_ai_budget DESC;

SELECT
    country,
    AVG(gdp_growth_rate_pct) as avg_gdp_growth
FROM macroeconomic_indicators
GROUP BY country
ORDER BY avg_gdp_growth DESC;

SELECT
    country,
    AVG(total_grid_capacity_gw) AS avg_grid_capacity
FROM energy_grid_capacity
GROUP BY country
ORDER BY avg_grid_capacity DESC;


DESCRIBE company_profiles;

DESCRIBE semiconductors_tradeflows;

DESCRIBE trade_sanctions;

DESCRIBE national_ai_infrastructure_budgets;

DESCRIBE macroeconomic_indicators;

DESCRIBE energy_grid_capacity;
       
SELECT
    a.region,
    a.year,
    a.total_ai_investment_usd_bn,
    m.gdp_growth_rate_pct
FROM national_ai_infrastructure_budgets a
JOIN macroeconomic_indicators m
ON a.region = m.region
AND a.year = m.year
ORDER BY a.total_ai_investment_usd_bn DESC;

SELECT
    a.region,
    a.year,
    a.total_ai_investment_usd_bn,
    e.total_grid_capacity_gw
FROM national_ai_infrastructure_budgets a
JOIN energy_grid_capacity e
ON a.region = e.region
AND a.year = e.year
ORDER BY a.total_ai_investment_usd_bn DESC;

SELECT
    cp.company_name,
    cp.hq_country,
    cp.revenue_usd_bn,
    cp.geopolitical_exposure,
    ts.severity_level
FROM company_profiles cp
LEFT JOIN trade_sanctions ts
ON cp.hq_country = ts.target_country
ORDER BY ts.severity_level DESC;

SELECT
    importer_country,
    exporter_country,
    ROUND(SUM(trade_value_usd_millions),2) AS trade_volume
FROM semiconductors_tradeflows
GROUP BY importer_country, exporter_country
ORDER BY trade_volume DESC;

SELECT
    target_country,
    COUNT(*) AS sanctions_count,
    AVG(severity_level) AS avg_severity,
    COUNT(*) * AVG(severity_level) AS geopolitical_risk_score
FROM trade_sanctions
GROUP BY target_country
ORDER BY geopolitical_risk_score DESC;

SELECT
    a.region,
    a.total_ai_investment_usd_bn,
    e.total_grid_capacity_gw
FROM national_ai_infrastructure_budgets a
JOIN energy_grid_capacity e
ON a.region = e.region
AND a.year = e.year
WHERE e.total_grid_capacity_gw < 100
ORDER BY a.total_ai_investment_usd_bn DESC;

SELECT
    company_name,
    ROUND(SUM(rd_expenditure_usd_bn),2) AS total_rd_spending
FROM company_profiles
GROUP BY company_name
ORDER BY total_rd_spending DESC
LIMIT 10;

SELECT
    year_quarter,
    hardware_category,
    ROUND(SUM(trade_value_usd_millions),2) AS total_trade_value
FROM semiconductors_tradeflows
GROUP BY year_quarter, hardware_category
ORDER BY year_quarter;

SELECT * FROM company_profiles;

SELECT * FROM semiconductors_tradeflows;

SELECT * FROM trade_sanctions;

SELECT * FROM national_ai_infrastructure_budgets;

SELECT * FROM macroeconomic_indicators;

SELECT * FROM energy_grid_capacity;
