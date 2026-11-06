# Acceptance Criteria (Given / When / Then)

## US-02 – Field-level validation
- Given an applicant is completing the form, when a mandatory field is blank and Submit is selected, then the system prevents submission and identifies the missing field.
- Given a field contains an invalid format, when validation runs, then a clear error is displayed without losing valid entered data.
- Given all required fields are valid, when Submit is selected, then the application is assigned a unique ID and moves to Submitted.

## US-03 – Consent evidence
- Given a bureau check requires consent, when the applicant has not granted the required consent, then no bureau request is sent.
- Given consent is granted, when the request is initiated, then consent purpose, version, timestamp and correlation reference are retained.
- Given consent is withdrawn before a future optional check, when the workflow evaluates the request, then the check is blocked unless an approved legal basis applies.

## US-04 – KYC exception
- Given the KYC provider returns Pending or Mismatch, when the response is received, then the application is routed to the appropriate review state.
- Given KYC is unresolved, when final approval or disbursal is attempted, then the action is blocked.
- Given an authorised reviewer resolves the case, when the reviewer submits the resolution, then actor, timestamp, reason and evidence reference are logged.

## US-06 – Decision traceability
- Given the decision service returns an outcome, when the application state is updated, then outcome, reason code, policy version, timestamp and correlation ID are stored.
- Given the service times out, when the timeout threshold is reached, then the application is marked Technical Hold / Refer and is not treated as approved.
- Given an authorised override is performed, when the override is saved, then mandatory reason and evidence are recorded and maker-checker is enforced where configured.

## US-09 – Offer and KFS
- Given an approved offer exists, when the offer is displayed, then amount, tenure, rate, fees, APR, instalment and applicable KFS are visible in approved format.
- Given the offer or disclosure has expired / been superseded, when acceptance is attempted, then acceptance is blocked and the current version is presented.

## US-10 – Disbursal reconciliation
- Given agreement and mandatory checks are complete, when a disbursal instruction is sent, then a unique idempotency key is used.
- Given the downstream system returns Pending or times out, when the customer status is displayed, then the status is not shown as Disbursed.
- Given positive confirmation is received and reconciled, when the status is updated, then Disbursed timestamp and reference are recorded.

## Cross-cutting
- All status transitions are attributable and timestamped.
- Unauthorised users cannot view or export restricted fields.
- Duplicate events do not create duplicate disbursal instructions.
