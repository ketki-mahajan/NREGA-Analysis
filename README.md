# 🇮🇳 NREGA Data Analytics

**Analyzing Rural Employment and Worker Participation with Python, SQL, and Power BI**

## 📌 Project Overview

NREGA Data Analytics is an end-to-end data analytics project focused on exploring rural employment, job card distribution, worker participation, employment generation, wages, budget utilization, expenditure, and work completion across Indian states and districts.

The project follows a structured data analytics workflow using Python, SQL, and Power BI to transform raw employment data into meaningful insights.

## 🎯 Project Objectives

- Analyze job cards issued and worker participation across states.
- Examine active job cards and active workers.
- Identify states and districts with high worker participation.
- Explore employment days and average wage rates.
- Compare approved labour budgets with actual expenditure.
- Analyze completed and ongoing works.
- Examine women, SC, and ST participation.
- Perform exploratory data analysis using Python.
- Analyze employment indicators using SQL.
- Build interactive Power BI dashboards.

## 🛠️ Tools and Technologies

| Tool | Purpose |
|---|---|
| Python | Data exploration and preparation |
| Pandas | Data manipulation and cleaning |
| NumPy | Numerical operations |
| Matplotlib | Data visualization |
| Jupyter Notebook | Python analysis |
| MySQL | SQL queries and data analysis |
| Microsoft Power BI | Interactive dashboards |
| CSV | Dataset storage and exchange |
| GitHub | Project documentation and version control |

## 📁 Project Structure

```text
NREGA-Analysis/
│
├── Dataset/
│   └── NREGA Data.csv
│
├── Power Bi/
│   └── NREGA_Dashboard.pbix
│
├── Python/
│   └── NREGA_Analysis.ipynb
│
├── SQL/
│   └── NREGA_sql.sql
│
├── Screenshot/
│   ├── 1. Job Cards & Workers Analysis.png
│   ├── 2. Budget & Expenditure Analysis.png
│   ├── 3. Work & Employment Analysis.png
│   └── 4. Overall State-wise Analysis.png
│
├── output/
│   ├── budget_and_expenditure.csv
│   ├── employment_and_wages.csv
│   ├── state_wise_summary.csv
│   ├── top_10_districts_active_workers.csv
│   ├── top_10_states_active_workers.csv
│   ├── women_sc_st_participation.csv
│   └── work_completion_analysis.csv
│
├── .gitignore
└── README.md
```

## 📂 Dataset

The project uses an NREGA dataset containing information about job cards, workers, employment, wages, budgets, expenditure, and work-related indicators.

| File Name | Description |
|---|---|
| `NREGA Data.csv` | Original NREGA dataset |
| `NREGA_Analysis.ipynb` | Python analysis notebook |
| `NREGA_sql.sql` | SQL analysis queries |
| `NREGA_Dashboard.pbix` | Power BI dashboard report |

## 📈 Power BI Dashboard

The Power BI report contains four analytical pages focused on job cards, workers, budget, expenditure, employment, work completion, and state-wise performance.

The dashboard was developed to make NREGA data easier to explore through visual comparisons, summary indicators, charts, and state-level analysis.

### 1. Job Cards & Workers Analysis

![Job Cards & Workers Analysis](<Screenshot/1. Job Cards & Workers Analysis.png>)

The Job Cards & Workers Analysis page focuses on job card distribution and worker participation across Indian states and districts.

**Key Highlights:**

- Analysis of total job cards issued.
- Comparison of total workers and active workers.
- Examination of active job cards.
- State-wise comparison of employment indicators.
- Identification of differences in worker participation.
- Visual exploration of job card and worker distribution.

**Purpose:** To understand the distribution of job cards and workers and compare worker participation across different states.

### 2. Budget & Expenditure Analysis

![Budget & Expenditure Analysis](<Screenshot/2. Budget & Expenditure Analysis.png>)

The Budget & Expenditure Analysis page focuses on financial indicators available in the NREGA dataset. It supports comparisons between approved labour budgets and expenditure.

**Key Highlights:**

- Analysis of approved labour budgets.
- Examination of total expenditure.
- Comparison of budget and expenditure indicators.
- State-wise financial comparisons.
- Exploration of budget utilization.
- Visual presentation of expenditure patterns.

**Purpose:** To explore how budget and expenditure indicators vary across states and identify differences in financial utilization.

### 3. Work & Employment Analysis

![Work & Employment Analysis](<Screenshot/3. Work & Employment Analysis.png>)

The Work & Employment Analysis page examines employment generation, wage rates, and work progress using the available NREGA data.

**Key Highlights:**

- Average employment days per household.
- Average wage rate per day per person.
- Analysis of works taken up.
- Comparison of completed and ongoing works.
- Examination of work completion indicators.
- Visual comparison of employment-related measures.

**Purpose:** To understand employment generation and explore work progress across the available geographical categories.

### 4. Overall State-wise Analysis

![Overall State-wise Analysis](<Screenshot/4. Overall State-wise Analysis.png>)

The Overall State-wise Analysis page brings together key employment indicators to support comparisons across Indian states.

**Key Highlights:**

- State-wise worker participation.
- Comparison of job cards and worker indicators.
- Analysis of employment-related measures.
- Budget and expenditure comparisons.
- Work completion indicators.
- Summary of selected state-level performance measures.

**Purpose:** To provide an overall view of the available NREGA indicators and make state-wise comparisons easier.

### 📌 Dashboard Summary

The four dashboard pages provide complementary views of NREGA data:

- **Job Cards & Workers Analysis:** Focuses on job card distribution and worker participation.
- **Budget & Expenditure Analysis:** Examines financial indicators and spending patterns.
- **Work & Employment Analysis:** Explores employment, wages, and work progress.
- **Overall State-wise Analysis:** Provides a combined view of selected state-level indicators.

Together, these pages demonstrate the use of Power BI to organize employment-related information into a structured and interactive reporting experience.

### 📥 Power BI Report

**Report file:** `NREGA_Dashboard.pbix`

[Open the Power BI report](<Power Bi/NREGA_Dashboard.pbix>)

The report can be opened using Microsoft Power BI Desktop. The link works when the report file is uploaded at the specified location in the repository.

---

## 🐍 Python Analysis

Python was used to perform data exploration, data cleaning, transformation, exploratory data analysis (EDA), and visualization. The analysis was carried out in Jupyter Notebook using Visual Studio Code.

The dataset was loaded from the CSV file and prepared for analysis using Pandas and other Python libraries.

### 🎯 Objectives of Python Analysis

- Understand the structure and contents of the NREGA dataset.
- Examine the number of rows, columns, and available data fields.
- Check data quality and missing values.
- Clean column names and text values.
- Convert relevant fields into appropriate numeric data types.
- Analyze job cards and worker participation.
- Compare state-wise and district-wise employment indicators.
- Explore employment days and wage rates.
- Analyze approved budgets and expenditure.
- Examine work completion and participation indicators.
- Create summary tables and charts.
- Export selected analytical results to CSV files.

### 🔎 Areas of Python Analysis

**1. Dataset Exploration**

The dataset was inspected to understand its dimensions, column names, data types, and available records. This helped identify the fields required for subsequent analysis.

**2. Data Quality Checks**

The data was checked for missing values and potential data preparation issues. These checks helped assess whether the dataset was ready for analysis.

**3. Data Cleaning**

Column names were standardized, unnecessary whitespace was removed from text fields, and relevant columns were prepared for consistent analysis.

**4. Numeric Data Conversion**

Employment, worker, job card, budget, wage, and expenditure fields were converted into numeric formats where appropriate so that calculations and aggregations could be performed.

**5. Overall Worker and Job Card Summary**

Worker and job card indicators were examined to understand the overall employment-related information available in the dataset.

**6. State-wise Worker Analysis**

Worker indicators were grouped by state to compare participation and identify differences between geographical areas.

**7. Active Worker Percentage Analysis**

Active worker percentages were calculated using the relevant active worker and total worker fields, allowing comparisons across states.

**8. District-wise Worker Analysis**

District-level data was analyzed to identify districts with high active worker counts and compare worker participation.

**9. Employment Days and Wage Analysis**

Average employment days and average wage rates were explored to understand employment and wage-related patterns.

**10. Budget and Expenditure Analysis**

Approved labour budget and expenditure indicators were analyzed to examine financial patterns across the available records.

**11. Work Completion Analysis**

Work-related indicators were used to examine works taken up and completed works. Work completion percentages were calculated where the required fields were available.

**12. Women, SC and ST Participation Analysis**

Women person-days, SC person-days, and ST person-days were examined to explore participation across the available categories.

**13. Summary Tables and Visualization**

Grouped summaries and charts were created to present state-wise and district-wise findings in an understandable format.

**14. Exporting Analysis Results**

Selected summary tables were exported to CSV files for reuse, review, and integration with other parts of the project.

### 🛠️ Python Libraries

| Library | Purpose |
|---|---|
| Pandas | Data loading, cleaning, grouping, and analysis |
| NumPy | Numerical operations |
| Matplotlib | Charts and visualizations |
| Jupyter Notebook | Organizing and executing the analysis |

### 📄 Jupyter Notebook

**Notebook file:** `NREGA_Analysis.ipynb`

[View the Python analysis notebook](Python/NREGA_Analysis.ipynb)

The notebook contains the Python workflow for exploring the dataset, preparing the data, analyzing employment indicators, creating summaries, and exporting results.

---

## 🗄️ SQL Analysis

MySQL was used to query and analyze the NREGA dataset. SQL supports structured analysis of job cards, workers, employment, wages, budgets, expenditure, and work completion.

The SQL component complements the Python analysis by using queries, aggregations, filtering, and calculations to investigate employment-related indicators.

### 🎯 Objectives of SQL Analysis

- Retrieve relevant records from the NREGA dataset.
- Analyze job card and worker indicators.
- Compare states and districts.
- Summarize active workers and active job cards.
- Examine employment days and wage rates.
- Compare budget and expenditure measures.
- Analyze works taken up and completed works.
- Investigate women, SC, and ST participation indicators.
- Perform data quality checks.
- Create reusable query results and views where implemented.

### 🔎 Areas of SQL Analysis

**1. Job Card Analysis**

Job card indicators were examined to understand the distribution of job cards issued and active job cards across the available geographical categories.

**2. Worker Analysis**

Total workers and active workers were summarized to compare worker participation across states and districts.

**3. State-wise Analysis**

State-level aggregations were used to compare job cards, workers, and other available employment indicators.

**4. District-wise Analysis**

District-level queries supported comparisons of worker participation and helped identify districts with relatively high active worker counts.

**5. Employment and Wage Analysis**

Employment days and average wage rates were examined using the relevant fields available in the dataset.

**6. Budget and Expenditure Analysis**

Budget and expenditure measures were summarized to investigate financial patterns across the available records.

**7. Work Completion Analysis**

Work-related fields were used to analyze works taken up and completed works. Percentage calculations were applied where suitable data was available.

**8. Women, SC and ST Participation**

Participation-related fields were explored to compare women person-days, SC person-days, and ST person-days where available.

**9. Data Quality Checks**

Queries were used to inspect data and identify issues that could affect analytical results.

**10. Views and Reusable Queries**

Views and reusable query structures were used where implemented to organize selected results and simplify repeated analysis.

### 🛠️ SQL Techniques

The project uses SQL techniques such as:

- `SELECT` for retrieving data.
- `WHERE` for filtering records.
- `ORDER BY` for sorting results.
- `GROUP BY` for state-wise and district-wise summaries.
- `SUM()` for calculating totals.
- `AVG()` for calculating averages.
- `MIN()` and `MAX()` for identifying minimum and maximum values.
- `COUNT()` for counting records.
- Conditional expressions and percentage calculations where required.
- Data quality checks.
- Views and joins where implemented in the SQL script.

### 📄 SQL Script

**SQL file:** `NREGA_sql.sql`

[View the SQL analysis script](SQL/NREGA_sql.sql)

The SQL script contains the queries used for exploring and summarizing the NREGA data. The link assumes that the file is saved in the `SQL/` folder with this exact name.

---

## 📁 Python Analysis Output

The `output/` folder is intended to contain selected analytical results exported from the Python notebook. These CSV files make summary tables easier to review and reuse.

| File | Description |
|---|---|
| `state_wise_summary.csv` | Summary of selected indicators by state |
| `top_10_districts_active_workers.csv` | Top 10 districts by active workers |
| `employment_and_wages.csv` | Employment and wage analysis |
| `budget_and_expenditure.csv` | Budget and expenditure analysis |
| `work_completion_analysis.csv` | Work completion indicators |
| `women_sc_st_participation.csv` | Women, SC, and ST participation analysis |
| `top_10_states_active_workers.csv` | Top 10 states by active workers |

These files are intended to support further review of state-wise and district-wise results.

**Note:** Include these files in the repository only if they have been generated and uploaded.

## 🔍 Key Analysis Areas

The project brings together several important aspects of NREGA data analysis:

- Job card distribution and worker participation.
- Active job cards and active workers.
- State-wise and district-wise comparisons.
- Employment days and average wage rates.
- Approved labour budget and expenditure.
- Works taken up and completed works.
- Women, SC, and ST participation.
- Data cleaning and exploratory data analysis.
- SQL-based aggregation and comparisons.
- Python summaries and visualizations.
- Interactive Power BI dashboards.

## 📈 Key Analytical Questions

The analysis explores questions such as:

- Which states have the highest number of active workers?
- Which districts have the highest active worker counts?
- How do job cards and workers vary across states?
- What patterns can be observed in employment days?
- How do average wage rates vary across the available records?
- How does expenditure compare with approved labour budgets?
- What proportion of works has been completed?
- How does participation by women, SC, and ST categories vary?
- Which states show differences in the available employment indicators?
- How can Python, SQL, and Power BI be combined to explore NREGA data?

## 💡 Key Takeaway

This project demonstrates how Python, SQL, and Power BI can be used together in an end-to-end data analytics workflow.

Python supports data cleaning, exploration, calculations, and visualization. MySQL provides structured querying and aggregation, while Power BI presents employment-related indicators through interactive dashboards.

Combining these tools provides a practical way to organize, compare, and explore rural employment data across states and districts.

## 🚀 How to Explore This Project

1. Open the `Dataset/` folder to review the original NREGA dataset.
2. Open `Python/NREGA_Analysis.ipynb` to explore the Python analysis.
3. Open `SQL/NREGA_sql.sql` to review the SQL queries.
4. Open `Power Bi/NREGA_Dashboard.pbix` in Power BI Desktop to explore the report.
5. View the `Screenshot/` folder to see images of the four dashboard pages.
6. Explore the `output/` folder to review exported analysis results, if available.

## ✅ Conclusion

The NREGA Data Analytics project demonstrates an end-to-end data analytics workflow, from data exploration and preparation to SQL-based analysis and interactive Power BI reporting.

Python and Pandas were used to prepare and analyze the dataset. MySQL supported structured queries and comparisons, while Power BI was used to present four dashboard pages focused on job cards and workers, budget and expenditure, work and employment, and overall state-wise analysis.

Through this project, I practiced data preparation, exploratory data analysis, SQL querying, analytical calculations, data visualization, and business intelligence reporting using a rural employment dataset.

**Key takeaway:** Data analytics helps organize employment-related information and makes it easier to explore and compare indicators across states and districts.

## 👩‍💻 About Me

**Ketki Mahajan**

Aspiring Data Analyst | Python | SQL | Power BI

[LinkedIn](https://www.linkedin.com/in/ketki-mahajan-3484973b9/) · [GitHub](https://github.com/ketki-mahajan)
