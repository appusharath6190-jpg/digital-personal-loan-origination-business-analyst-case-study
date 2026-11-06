# To-Be Process

1. Applicant selects product and reviews eligibility guidance / privacy notice.
2. Applicant provides purpose-specific consent for required data processing and checks.
3. Applicant completes a common application form; system validates mandatory fields and formats.
4. System creates application ID and displays a document / information checklist.
5. KYC service returns verified, pending, failed or manual-review status; unresolved cases are routed safely.
6. With required consent and approved purpose, bureau service is queried; response is matched to the application and stored with source/time/reference.
7. Income, obligations and affordability data are evaluated against Credit Risk-approved policy.
8. Decision workflow returns approved, declined, refer/manual review or incomplete; all outcomes have reason codes and policy version.
9. Manual cases enter a role-based queue; maker-checker applies where policy requires; override reason and evidence are recorded.
10. Applicant receives decision status and, where an offer is made, clear loan terms and KFS before acceptance, as applicable.
11. Applicant accepts terms and completes agreement/e-sign steps.
12. Pre-disbursal validations run; approved disbursal instruction is sent to the core banking / payment service.
13. Applicant receives disbursal status; the application record is closed or handed off to servicing.
14. Operational dashboard tracks funnel, TAT, exceptions, overrides and control outcomes.

## Exception paths
- Missing mandatory information → return to applicant with field-level guidance.
- KYC mismatch / inconclusive response → manual review; no bypass.
- Bureau timeout / unavailable response → retry under controlled policy or route to review; do not infer a score.
- Suspected fraud → restricted referral queue and controlled access.
- Affordability / policy refer → Credit Risk review.
- Offer expiry / applicant withdrawal → close with reason and retain evidence per approved retention policy.
- Disbursal failure → reconcile status and route to operations; do not mark as disbursed until confirmed.
