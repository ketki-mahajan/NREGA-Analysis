-- Create project database
create database nrega_analysis;

use nrega_analysis;

-- Check whether the table was created
use nrega_analysis;

show tables;

-- Check the column names
DESCRIBE `nrega data`;

-- VIEW THE DATA

-- Query 1 — Show all columns, first 10 rows
select *
from `nrega data`
limit 10;

-- Query 2 — Show selected columns
SELECT
state_name,
district_name,
`Total No. of JobCards issued`,
`Total No. of Workers`,
`Total No. of Active Job Cards`,
`Total No. of Active Workers`
FROM `nrega data`
LIMIT 10;

-- FILTER AND SORT DATA

-- Query 3 — Find records for one state
SELECT
state_name,
district_name,
`Total No. of Active Workers`
FROM `nrega data`
WHERE state_name = 'Maharashtra';

SELECT
state_name,
district_name,
`Total No. of Active Workers`
FROM `nrega data`
WHERE state_name = 'West Bengal';

-- Query 4 — Find districts with more than 10,000 active workers
SELECT
state_name,
district_name,
`Total No. of Active Workers`
FROM `nrega data`
WHERE `Total No. of Active Workers` > 10000
ORDER BY `Total No. of Active Workers` DESC;

-- Query 5 — Show the 10 districts with the most active workers
SELECT
state_name,
district_name,
`Total No. of Active Workers`
FROM `nrega data`
ORDER BY `Total No. of Active Workers` DESC
LIMIT 10;

-- BASIC TOTALS AND AVERAGES

-- Query 6 — Count the records
SELECT COUNT(*) AS total_records
FROM `nrega data`;

-- Query 7 — Count states and districts
SELECT
COUNT(DISTINCT state_name) AS number_of_states,
COUNT(DISTINCT district_name) AS number_of_distinct_district_names
FROM `nrega data`;

-- Query 8 — Overall job cards and workers
SELECT
SUM(`Total No. of JobCards issued`) AS total_job_cards,
SUM(`Total No. of Workers`) AS total_workers,
SUM(`Total No. of Active Job Cards`) AS active_job_cards,
SUM(`Total No. of Active Workers`) AS active_workers
FROM `nrega data`;

-- Query 9 — Average employment days and wage rate
SELECT
AVG(`Average days of employment provided per Household`)
AS avg_employment_days_per_household,
AVG(`Average Wage rate per day per person(Rs.)`)
AS avg_daily_wage_rate
FROM `nrega data`;

-- Query 10 — Active workers by state
SELECT
state_name,
SUM(`Total No. of Active Workers`) AS active_workers
FROM `nrega data`
GROUP BY state_name
ORDER BY active_workers DESC;

-- Query 11 — Job cards and workers by state
SELECT
state_name,
SUM(`Total No. of JobCards issued`) AS job_cards_issued,
SUM(`Total No. of Workers`) AS total_workers,
SUM(`Total No. of Active Job Cards`) AS active_job_cards,
SUM(`Total No. of Active Workers`) AS active_workers
FROM `nrega data`
GROUP BY state_name
ORDER BY active_workers DESC;

-- Query 12 — State-wise employment and wages
SELECT
state_name,
AVG(`Average days of employment provided per Household`)
AS avg_employment_days,
AVG(`Average Wage rate per day per person(Rs.)`)
AS avg_daily_wage
FROM `nrega data`
GROUP BY state_name
ORDER BY avg_employment_days DESC;

-- BUDGET AND EXPENDITURE ANALYSIS

-- Query 13 — Total budget and expenditure by state
SELECT
state_name,
SUM(`Approved Labour Budget`) AS approved_labour_budget,
SUM(`Total Exp(Rs. in Lakhs.)`) AS total_expenditure_lakhs,
SUM(`Wages(Rs. In Lakhs)`) AS wages_lakhs,
SUM(`Material and skilled Wages(Rs. In Lakhs)`) AS material_and_skilled_wages_lakhs,
SUM(`Total Adm Expenditure (Rs. in Lakhs.)`) AS admin_expenditure_lakhs
FROM `nrega data`
GROUP BY state_name
ORDER BY total_expenditure_lakhs DESC;

-- Query 14 — Calculate expenditure as a percentage of approved budget
SELECT
state_name,
SUM(`Approved Labour Budget`) AS approved_labour_budget,
SUM(`Total Exp(Rs. in Lakhs.)`) AS total_expenditure_lakhs,
ROUND(
SUM(`Total Exp(Rs. in Lakhs.)`)
/ NULLIF(SUM(`Approved Labour Budget`), 0) * 100,
2
) AS expenditure_to_budget_percent
FROM `nrega data`
GROUP BY state_name
ORDER BY expenditure_to_budget_percent DESC;

-- WORK COMPLETION ANALYSIS

-- Query 15 — Completed and ongoing works by state
SELECT
state_name,
SUM(`Total No. of Works Takenup (New+Spill Over)`) AS works_taken_up,
SUM(`Number of Ongoing Works`) AS ongoing_works,
SUM(`Number of Completed Works`) AS completed_works
FROM `nrega data`
GROUP BY state_name
ORDER BY completed_works DESC;

-- Query 16 — Calculate completed-work share
SELECT
state_name,
SUM(`Number of Completed Works`) AS completed_works,
SUM(`Total No. of Works Takenup (New+Spill Over)`) AS works_taken_up,
ROUND(
SUM(`Number of Completed Works`)
/ NULLIF(SUM(`Total No. of Works Takenup (New+Spill Over)`), 0) * 100,
2
) AS completed_work_percent
FROM `nrega data`
GROUP BY state_name
ORDER BY completed_work_percent DESC;

-- PARTICIPATION AND INCLUSION

-- Query 17 — Women, SC, and ST person-days by state
SELECT
state_name,
SUM(`Women Persondays`) AS women_persondays,
SUM(`SC persondays`) AS sc_persondays,
SUM(`ST persondays`) AS st_persondays
FROM `nrega data`
GROUP BY state_name
ORDER BY women_persondays DESC;

-- Query 18 — Households completing 100 days
SELECT
state_name,
SUM(`Total No of HHs completed 100 Days of Wage Employment`)
AS households_completed_100_days
FROM `nrega data`
GROUP BY state_name
ORDER BY households_completed_100_days DESC;

-- DATA QUALITY CHECK

-- Query 19 — Check for missing state and district names
SELECT
    COUNT(*) AS total_rows,
    SUM(state_name IS NULL OR TRIM(state_name) = '')
        AS missing_state_names,
    SUM(district_name IS NULL OR TRIM(district_name) = '')
        AS missing_district_names
FROM `nrega data`;

-- Query 20 — Check duplicate state-district records
SELECT
    state_name,
    district_name,
    COUNT(*) AS record_count
FROM `nrega data`
GROUP BY state_name, district_name
HAVING COUNT(*) > 1
ORDER BY record_count DESC;

-- CREATE SQL VIEWS

-- Query 21 — State-wise worker summary
CREATE OR REPLACE VIEW state_worker_summary AS
SELECT
    state_name,
    SUM(`Total No. of JobCards issued`) AS job_cards_issued,
    SUM(`Total No. of Workers`) AS total_workers,
    SUM(`Total No. of Active Job Cards`) AS active_job_cards,
    SUM(`Total No. of Active Workers`) AS active_workers
FROM `nrega data`
GROUP BY state_name;

-- Test
SELECT *
FROM state_worker_summary
ORDER BY active_workers DESC;

-- Query 22 — State-wise works summary
CREATE OR REPLACE VIEW state_works_summary AS
SELECT
    state_name,
    SUM(`Total No. of Works Takenup (New+Spill Over)`) AS works_taken_up,
    SUM(`Number of Ongoing Works`) AS ongoing_works,
    SUM(`Number of Completed Works`) AS completed_works
FROM `nrega data`
GROUP BY state_name;

-- Test
SELECT *
FROM state_works_summary
ORDER BY completed_works DESC;

-- Query 23 — State-wise budget summary
CREATE OR REPLACE VIEW state_budget_summary AS
SELECT
    state_name,
    SUM(`Approved Labour Budget`) AS approved_labour_budget,
    SUM(`Total Exp(Rs. in Lakhs.)`) AS total_expenditure_lakhs,
    SUM(`Wages(Rs. In Lakhs)`) AS wages_lakhs,
    SUM(`Material and skilled Wages(Rs. In Lakhs)`)
        AS material_skilled_wages_lakhs,
    SUM(`Total Adm Expenditure (Rs. in Lakhs.)`)
        AS admin_expenditure_lakhs
FROM `nrega data`
GROUP BY state_name;

-- Test
SELECT *
FROM state_budget_summary
ORDER BY total_expenditure_lakhs DESC;

-- Final: Check all 3 views
SHOW FULL TABLES
WHERE TABLE_TYPE = 'VIEW';

-- Query 24 — Combine the summaries
SELECT
    w.state_name,
    w.job_cards_issued,
    w.total_workers,
    w.active_job_cards,
    w.active_workers,
    b.approved_labour_budget,
    b.total_expenditure_lakhs,
    b.wages_lakhs,
    b.material_skilled_wages_lakhs,
    x.works_taken_up,
    x.ongoing_works,
    x.completed_works
FROM state_worker_summary w
LEFT JOIN state_budget_summary b
    ON w.state_name = b.state_name
LEFT JOIN state_works_summary x
    ON w.state_name = x.state_name
ORDER BY w.active_workers DESC;

-- Query 25 — Create a final State Performance Analysis
SELECT
    w.state_name,

    w.job_cards_issued,
    w.total_workers,
    w.active_workers,

    ROUND(
        w.active_workers / NULLIF(w.total_workers, 0) * 100,
        2
    ) AS active_worker_percent,

    b.approved_labour_budget,
    b.total_expenditure_lakhs,

    ROUND(
        b.total_expenditure_lakhs /
        NULLIF(b.approved_labour_budget, 0) * 100,
        2
    ) AS expenditure_percent,

    x.works_taken_up,
    x.ongoing_works,
    x.completed_works,

    ROUND(
        x.completed_works /
        NULLIF(x.works_taken_up, 0) * 100,
        2
    ) AS work_completion_percent

FROM state_worker_summary w

LEFT JOIN state_budget_summary b
    ON w.state_name = b.state_name

LEFT JOIN state_works_summary x
    ON w.state_name = x.state_name

ORDER BY active_worker_percent DESC;