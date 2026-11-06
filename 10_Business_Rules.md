# Business Rules Catalogue

| Rule ID | Rule | Owner / caveat |
|---|---|---|
| RULE-01 | Application cannot be submitted until mandatory fields and required declarations are complete. | Product / Operations |
| RULE-02 | Required consent must be recorded before a bureau or other consent-dependent request. | Compliance / Legal |
| RULE-03 | KYC status must be Verified or an explicitly approved alternative state before final approval/disbursal. | Compliance |
| RULE-04 | Bureau mismatch, timeout or unavailable response must route to a controlled exception; no score is assumed. | Credit Risk / Technology |
| RULE-05 | Affordability is calculated using a versioned, approved policy and verified inputs. | Credit Risk |
| RULE-06 | Policy decision outputs must include outcome, reason code, policy version and timestamp. | Credit Risk |
| RULE-07 | Manual overrides require an authorised role, mandatory reason and evidence; maker-checker applies where configured. | Credit Risk / Operations |
| RULE-08 | Decline and refer communications use approved customer-safe reason categories. | Compliance / Legal |
| RULE-09 | Offer acceptance is allowed only for a current, unexpired offer and current disclosure version. | Product / Legal |
| RULE-10 | Disbursal instruction is sent only after agreement completion and all mandatory pre-disbursal checks. | Operations |
| RULE-11 | A disbursal is shown as complete only after positive confirmation / reconciliation. | Operations / Technology |
| RULE-12 | Access to sensitive application and risk information is role-based and logged. | Security / Privacy |

**Illustrative only:** No numerical credit score cut-off, debt-to-income threshold, maximum loan amount, interest rate or fraud trigger is specified here. A real institution must use its approved and validated policy.
