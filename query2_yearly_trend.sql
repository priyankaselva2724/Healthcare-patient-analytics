SELECT
    admission_year,
    COUNT(*) AS admissions,
    LAG(COUNT(*)) OVER (ORDER BY admission_year) AS prev_year
FROM healthcare_clean
GROUP BY admission_year
ORDER BY admission_year;