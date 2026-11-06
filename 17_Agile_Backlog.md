# Prioritised Agile Backlog (Illustrative)

| Epic | Story IDs | Priority | Dependency |
|---|---|---|---|
| Application capture | US-01, US-02 | Must | Identity / application API |
| Consent | US-03 | Must | Approved consent wording and consent store |
| KYC workflow | US-04 | Must | KYC provider / compliance rules |
| Bureau integration | US-05 | Must | Consent, bureau contract and API |
| Decision workflow | US-06 | Must | Credit Risk policy and decision service |
| Exception queue | US-07 | Must | Workflow / role model |
| Maker-checker | US-08 | Must | Access control and approval matrix |
| Offer & KFS | US-09 | Must | Product pricing and Legal/Compliance |
| Disbursal | US-10 | Must | E-sign and core banking / payment integration |
| Notifications | US-11 | Should | Approved templates and notification gateway |
| MI dashboard | US-12 | Should | Data model and KPI definitions |

## Example sprint slicing
Sprint 1: application shell, mandatory-field validation, application ID and draft.
Sprint 2: consent record, KYC status integration and exception states.
Sprint 3: bureau response handling, affordability inputs and decision traceability.
Sprint 4: manual review queue, maker-checker and customer-safe status.
Sprint 5: offer/KFS, agreement hand-off and disbursal reconciliation.
Sprint 6: reporting, UAT fixes, security / performance validation and release readiness.

Sprint plan is illustrative; actual sizing and sequencing depend on architecture, team capacity and dependencies.
