# Functional Requirements Document (FRD)

## Functional modules

### FR-01 Application capture
- Capture applicant identity, contact, address, employment, income, liabilities and requested loan details.
- Validate mandatory fields, formats, allowed values and cross-field consistency.
- Generate a unique application ID and timestamp.
- Support save/resume with secure authentication and draft expiry policy.
- Prevent duplicate active applications based on bank-approved matching rules; route potential duplicates for review rather than silently merging.

### FR-02 Consent and privacy
- Present purpose-specific consent for identity/KYC, bureau and other data checks.
- Store consent text/version, purpose, timestamp, channel, status and withdrawal event.
- Block downstream data calls when required consent is absent or withdrawn, subject to legally approved exceptions.

### FR-03 KYC workflow
- Initiate approved KYC process and display status: Not Started, In Progress, Verified, Failed, Manual Review.
- Store provider reference, response timestamp and reason category.
- Route mismatch / inconclusive response to restricted manual review.
- Prevent application from reaching final approval/disbursal while mandatory KYC checks remain unresolved.

### FR-04 Credit bureau integration
- Trigger bureau request only after required consent and validation.
- Store request ID, bureau reference, response timestamp, match status and permitted result attributes.
- Handle timeout, unavailable, mismatch and partial response states.
- Do not fabricate, default or infer a bureau score when no valid response exists.

### FR-05 Income and affordability
- Capture verified income and recurring obligations from approved sources.
- Calculate affordability using a Credit Risk-approved formula and policy version.
- Record input provenance, calculation output and exception reason.
- Treat missing or inconsistent data as incomplete/refer, not as a favourable assumption.

### FR-06 Decision workflow
- Consume approved policy outputs and return Approved, Declined, Refer, Incomplete or Technical Hold.
- Record decision timestamp, policy/rule version, reason codes and source references.
- Support manual review queue with assignment, SLA clock, notes and resolution.
- Enforce maker-checker for configured actions and prevent self-approval where required.

### FR-07 Offer and disclosure
- Display approved amount, tenure, interest rate, fees, APR, instalment and applicable terms.
- Generate or retrieve applicable Key Facts Statement (KFS) and agreement documents.
- Store disclosure version, generated timestamp, delivery status and customer acceptance.
- Do not allow acceptance against an expired or superseded offer.

### FR-08 Agreement and disbursal
- Initiate e-sign only after customer accepts current offer.
- Run pre-disbursal checklist, including KYC and account validation as required.
- Send idempotent disbursal instruction to approved downstream service.
- Reconcile success, pending, failed and reversed states; display only confirmed status.

### FR-09 Notifications and status
- Provide customer-facing milestones: Draft, Submitted, Action Required, Verification, Under Review, Decisioned, Offer Pending, Accepted, Disbursal Pending, Disbursed, Closed.
- Use approved templates and avoid exposing sensitive risk or fraud details.
- Record notification channel, template version, send time and delivery status.

### FR-10 Operations and reporting
- Provide role-based queues, filters, ageing, assignment and escalation.
- Provide KPI views with consistent definitions and data lineage.
- Export only authorised data fields and log exports.

## Error handling
Every external dependency must have defined timeout, retry, duplicate-message, reconciliation and manual fallback behaviour. Retries must be bounded and safe; duplicate disbursal must be prevented through idempotency controls.
