SELECT COUNT(*) AS total_rows
FROM healthcare_clean;

SELECT COUNT(*) FROM healthcare_clean;
-- QUERY 1: How many patients does each disease have?
-- What percentage of total does each disease represent?

SELECT
    medical_condition,
    COUNT(*)                                    AS total_patients,
    ROUND(COUNT(*) * 100.0 /
          (SELECT COUNT(*) FROM healthcare_clean), 2) AS percentage,
    ROUND(AVG(billing_amount), 2)               AS avg_billing
FROM healthcare_clean
GROUP BY medical_condition
ORDER BY total_patients DESC;
