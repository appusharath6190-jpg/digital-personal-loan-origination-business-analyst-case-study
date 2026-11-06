# Project Charter

## Project name
Digital Personal Loan Origination & Decisioning (DPLOD)

## Business context
A fictional retail bank wants to modernise its unsecured personal-loan application journey across mobile, web and assisted channels. The bank wants a consistent workflow from application capture to disbursal, with transparent status, fewer avoidable manual hand-offs and stronger auditability.

## Problem statement
The current journey is fragmented. Customer information may be captured more than once; document and KYC status are not always visible in one place; bureau and affordability checks can require manual follow-up; exception cases are routed through email or spreadsheets; applicants receive inconsistent status updates; and managers cannot easily identify where applications are delayed or abandoned.

## Goal
Define business and functional requirements for a controlled digital workflow that improves application completeness, decision turnaround, customer visibility and operational traceability without weakening credit-risk, fraud or compliance controls.

## Measurable objectives (illustrative targets; validate with sponsor)
- Reduce median application-to-decision time by 30% from an agreed baseline.
- Improve first-time-right application completeness by 20 percentage points.
- Reduce manual re-keying / avoidable operations touches by 25%.
- Ensure 100% of application state changes and decision overrides have attributable audit events.
- Ensure applicants receive a status notification at agreed milestone events.
- Monitor approval, decline, withdrawal, fraud referral and early delinquency outcomes; do not optimise approval rate alone.

## In scope
- Application capture and save/resume
- Consent capture and consent evidence
- Application completeness validation
- KYC status / verification workflow integration (conceptual)
- Credit-bureau request and response handling (subject to consent and lawful basis)
- Income and affordability data capture / verification
- Configurable eligibility and credit decision workflow
- Manual review, exception and maker-checker routing
- Offer presentation, KFS disclosure and acceptance
- Agreement/e-sign hand-off and disbursal instruction
- Customer notifications and application status
- Audit trail, operational queues and management reporting

## Out of scope
- Building a production credit scoring model
- Setting actual bank credit policy, score cut-offs, pricing or risk appetite
- Core banking, bureau, KYC, payment or e-sign vendor implementation
- Collections strategy and loan servicing after disbursal (except status hand-off)
- Regulatory/legal sign-off, model validation or security certification
- Real customer data, real credentials or production integrations

## Success measures
Application completion rate; first-time-right rate; median/p90 decision TAT; manual review rate; exception ageing; KYC completion rate; offer acceptance rate; disbursal success rate; complaint rate; fraud referral rate; early delinquency; audit-event completeness.

## Assumptions
- The bank has approved vendors / services for KYC, bureau, e-sign and disbursal.
- Credit Risk owns eligibility, scorecard, affordability and pricing policy.
- Compliance and Legal approve disclosures, consent wording, retention and customer communications.
- The solution can expose status events through secure APIs.
- Thresholds and SLAs in this simulation are placeholders only.

## Constraints
Regulatory obligations, data privacy, vendor availability, legacy integration, information security, credit policy, model governance, accessibility and operational capacity.

## BA deliverables
Project charter; stakeholder register; scope; As-Is and To-Be process; gap analysis; BRD; FRD; business rules; NFRs; use cases; user stories; acceptance criteria; data dictionary; wireframe specification; RTM; backlog; UAT plan and test scenarios; KPI definitions; risk register; change-control approach.
