-- QUERY 3: Rank diseases by billing cost AND hospital stay length
-- Uses RANK() window function twice in one query

SELECT
    medical_condition,
    ROUND(AVG(billing_amount), 2)      AS avg_billing,
    ROUND(AVG(length_of_stay), 1)      AS avg_stay_days,
    ROUND(AVG(age), 1)                 AS avg_patient_age,
    COUNT(*)                            AS total_patients,
    RANK() OVER
        (ORDER BY AVG(billing_amount) DESC) AS cost_rank,
    RANK() OVER
        (ORDER BY AVG(length_of_stay) DESC) AS stay_rank
FROM healthcare_clean
GROUP BY medical_condition
ORDER BY cost_rank;