# Business Requirements Document (BRD)

## 1. Purpose
Define the business requirements for a controlled digital personal-loan origination journey from application capture through decision, offer acceptance and disbursal hand-off.

## 2. Business objectives
- Improve application completion and reduce avoidable rework.
- Reduce decision turnaround time without weakening controls.
- Provide consistent application status to customers and staff.
- Standardise exception handling and decision traceability.
- Enable management reporting across the application funnel.

## 3. Business requirements
| ID | Requirement | Priority | Acceptance measure |
|---|---|---|---|
| BR-01 | Provide a consistent application journey across supported channels. | Must | Channel-neutral application record created |
| BR-02 | Capture and evidence required consent before relevant data checks. | Must | Consent purpose, version, timestamp and status stored |
| BR-03 | Validate mandatory data and document checklist before submission. | Must | Incomplete applications cannot progress to decision |
| BR-04 | Display KYC status and route unresolved cases for review. | Must | No unresolved KYC case bypasses control |
| BR-05 | Request and associate bureau data only under approved consent and policy. | Must | Request/response reference and timestamp retained |
| BR-06 | Evaluate affordability and eligibility using Credit Risk-approved rules. | Must | Policy version and outcome recorded |
| BR-07 | Support manual review, referral and maker-checker controls. | Must | Role, action, reason and evidence recorded |
| BR-08 | Communicate decision and required next steps clearly. | Must | Customer receives approved status communication |
| BR-09 | Present applicable KFS and offer terms before acceptance. | Must | Disclosure version and acceptance evidence stored |
| BR-10 | Trigger disbursal only after required agreement and pre-disbursal checks. | Must | Disbursal status reconciled with source system |
| BR-11 | Provide operational dashboard and queue ageing. | Should | KPI definitions and role-based views available |
| BR-12 | Maintain complete audit history for material actions. | Must | Events attributable and searchable |

## 4. Business rules
See `10_Business_Rules.md`. All eligibility thresholds, pricing, score cut-offs, fraud rules and approval authority are owned by the bank's authorised policy owners, not by the BA.

## 5. Reporting requirements
Daily funnel by channel and status; application completion; decision TAT median/p90; manual review volume and ageing; KYC pending/failure; bureau latency; offer acceptance; disbursal success; override rate; reason-code distribution; complaints; fraud referrals; early delinquency.

## 6. Dependencies
KYC provider, credit bureau, income verification source, decision engine, notification service, e-sign provider, core banking / disbursal service, identity/access management, data platform and approved customer communication templates.

## 7. Approval
Business Product Owner, Credit Risk, Compliance, Operations, Technology and other control owners approve requirements within their respective authority.
