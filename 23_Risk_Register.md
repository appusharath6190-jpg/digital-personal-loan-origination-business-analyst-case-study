# Risk Register

| Risk ID | Risk | Impact | Mitigation / control | Owner |
|---|---|---|---|---|
| R-01 | Incorrect or stale KYC / identity result | Financial crime / regulatory exposure | Approved provider, freshness checks, exception route, audit evidence | Compliance |
| R-02 | Bureau data mismatch or unavailable | Incorrect decision / delay | Match controls, timeout handling, no assumed score, manual referral | Credit Risk / Tech |
| R-03 | Inappropriate credit decision / biased outcome | Customer harm / portfolio loss | Approved policy, validation, monitoring, reason codes, human oversight | Credit Risk / Model Risk |
| R-04 | Consent missing or unclear | Privacy / regulatory exposure | Purpose-specific consent, versioned evidence, block dependent calls | Compliance / Privacy |
| R-05 | Sensitive data exposure | Privacy / security incident | Least privilege, encryption, masking, monitoring and export controls | Security |
| R-06 | Duplicate disbursal | Financial loss | Idempotency, reconciliation, duplicate-event tests | Technology / Operations |
| R-07 | Manual override abuse | Control failure | Role separation, maker-checker, reason and evidence, monitoring | Credit Risk / Operations |
| R-08 | Third-party outage | Application delays | Resilience, retries, queues, fallback and vendor monitoring | Technology |
| R-09 | Misleading offer disclosure | Customer harm / complaints | Approved KFS and offer template, versioning, acceptance evidence | Legal / Compliance |
| R-10 | KPI incentives create unsafe approvals | Portfolio deterioration | Balanced scorecard including risk, fraud, complaints and delinquency | Product / Risk |

## Issue, assumption and dependency management
Maintain a RAID log with ID, description, category, impact, probability, owner, due date, mitigation and status. Escalate unresolved regulatory interpretation, credit-policy decisions, vendor constraints and data privacy questions to the accountable owner.
