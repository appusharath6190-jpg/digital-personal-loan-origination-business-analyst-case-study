# Logical Data Dictionary

| Entity / field | Description | Sensitivity / handling |
|---|---|---|
| application_id | Unique application reference | Internal identifier |
| applicant_reference | Tokenised applicant reference | Restricted; avoid exposing direct identifiers |
| channel | Branch / web / mobile / partner | Internal |
| created_at | Application creation timestamp | Audit |
| application_status | Current workflow state | Customer-safe mapping required |
| consent_id | Consent record reference | Restricted audit evidence |
| consent_purpose | Purpose for which consent was captured | Privacy-sensitive |
| consent_version | Version of approved consent wording | Audit |
| kyc_status | KYC workflow state | Restricted |
| kyc_reference | Provider reference | Restricted |
| bureau_reference | Bureau request / response reference | Highly restricted |
| bureau_status | Received / timeout / mismatch / unavailable | Highly restricted |
| verified_monthly_income | Verified monthly income amount | Financial personal data |
| monthly_obligations | Verified monthly obligations | Financial personal data |
| affordability_result | Policy-calculated result / band | Highly restricted |
| decision_outcome | Approved / declined / refer / incomplete / hold | Highly restricted |
| decision_reason_code | Approved reason category | Highly restricted |
| policy_version | Version of credit policy applied | Audit |
| offer_id | Offer reference | Internal |
| kfs_version | Applicable disclosure version | Audit |
| acceptance_timestamp | Customer acceptance time | Audit |
| disbursal_reference | Downstream disbursal reference | Restricted |
| event_id / correlation_id | Event and cross-system trace identifiers | Audit |

## Data quality controls
Completeness, format, validity, uniqueness, consistency, timeliness, source provenance and reconciliation status must be defined for each field. Use synthetic or masked data in portfolio demonstrations.
