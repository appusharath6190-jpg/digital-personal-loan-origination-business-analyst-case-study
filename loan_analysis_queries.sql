-- Portfolio demonstration only. Uses synthetic sample data.
-- Load sample_applications.csv into a table named loan_applications.

-- 1. Application funnel by status
SELECT application_status, COUNT(*) AS application_count
FROM loan_applications
GROUP BY application_status
ORDER BY application_count DESC;

-- 2. Average decision turnaround by channel
SELECT channel, ROUND(AVG(decision_tat_hours), 2) AS avg_decision_tat_hours
FROM loan_applications
WHERE decision_outcome IN ('Approved', 'Declined', 'Refer')
GROUP BY channel
ORDER BY avg_decision_tat_hours;

-- 3. Exception categories requiring operational attention
SELECT decision_reason_code, COUNT(*) AS case_count
FROM loan_applications
WHERE decision_outcome = 'Refer'
   OR application_status IN ('Incomplete', 'Technical_Hold')
GROUP BY decision_reason_code
ORDER BY case_count DESC;

-- 4. Illustrative debt-to-income proxy (not a credit policy decision)
SELECT application_id,
       monthly_income_inr,
       monthly_obligations_inr,
       ROUND(100.0 * monthly_obligations_inr / NULLIF(monthly_income_inr, 0), 1)
           AS obligations_to_income_pct
FROM loan_applications
WHERE monthly_income_inr > 0;

-- 5. KYC / bureau exception monitoring
SELECT kyc_status, bureau_status, COUNT(*) AS application_count
FROM loan_applications
GROUP BY kyc_status, bureau_status
ORDER BY application_count DESC;

-- Note: Small synthetic data is for demonstrating query structure only.
-- Never use this proxy as an approval/decline rule. Real credit policy is owned
-- and validated by authorised Credit Risk / Model Risk teams.
