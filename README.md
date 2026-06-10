# Healthcare Patient Analytics Dashboard

End-to-end data analytics project analyzing 54,860 healthcare records with patient demographics, disease trends, billing insights, and insurance analytics. Built using Python, MySQL, and Power BI.

---

## Dashboard Screenshots

### Overview
![Overview](Healthcare%20project%20overview.png)

### Disease Analysis
![Disease Analysis](Healthcare%20project%20disease%20analysis.png)

### Demographics
![Demographics](Healthcare%20project%20Demographics.png)

### Billing & Insurance
![Billing & Insurance](Healthcare%20project%20Billing%20%26%20Insurance.png)

---

## Dataset

- 54,860 patient records across 2019–2024
- 15 original columns + 5 engineered features
- 6 medical conditions, 5 insurance providers

---

## Key Findings

1. Admissions jumped 52.8% from 2019 (7,387) to 2020 (11,285)
2. Obesity has the highest average billing at $25,806 per patient
3. Inconclusive test results cost more than Abnormal results ($25,624 vs $25,538)
4. Found and removed 108 negative billing entries as a data quality fix
5. K-Means clustering identified 3 distinct patient cost segments

---

## Tools Used

| Tool | Purpose |
|------|---------|
| Python (pandas, seaborn, scikit-learn) | Data cleaning, EDA, and ML |
| MySQL | Business queries and aggregation |
| Power BI | Interactive dashboard |
| GitHub | Version control and portfolio |

---

## Repository Structure

| File | Description |
|------|-------------|
| `01_cleaning.ipynb` | Data cleaning notebook |
| `02_charts.ipynb` | EDA and visualisation notebook |
| `healthcare_clean.csv` | Cleaned dataset |
| `healthcare_dashboard.pbix` | Power BI dashboard file |
| `query1_disease_frequency.sql` | Disease frequency analysis |
| `query2_yearly_trend.sql` | Yearly admissions trend |
| `query3_disease_ranking.sql` | Disease ranking by billing |
| `query4_insurance_analysis.sql` | Insurance provider analysis |
| `query5_test_results.sql` | Test results analysis |

---

## Author

**Priyanka Selvaraj** — [GitHub Profile](https://github.com/priyankaselva2724)
