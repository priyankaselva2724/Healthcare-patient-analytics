-- QUERY 5: Do test results affect billing amount?
-- Most people expect Abnormal to cost most — the data shows Inconclusive does

SELECT
    test_results,
    COUNT(*)                        AS patient_count,
    ROUND(AVG(billing_amount), 2)   AS avg_billing,
    ROUND(AVG(length_of_stay), 1)   AS avg_stay_days,
    ROUND(MIN(billing_amount), 2)   AS min_billing,
    ROUND(MAX(billing_amount), 2)   AS max_billing,
    RANK() OVER
        (ORDER BY AVG(billing_amount) DESC) AS billing_rank
FROM healthcare_clean
GROUP BY test_results
ORDER BY billing_rank;