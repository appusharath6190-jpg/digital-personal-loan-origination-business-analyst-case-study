# Use Cases

## UC-01 Submit personal-loan application
**Primary actor:** Applicant  
**Preconditions:** Product available; applicant authenticated or session established; privacy notice displayed.  
**Trigger:** Applicant selects Apply.

**Main flow**
1. System displays product and required information.
2. Applicant provides consent selections.
3. Applicant enters personal, employment, income, liability and loan details.
4. System validates mandatory fields.
5. Applicant submits.
6. System creates application ID and displays confirmation.
7. System triggers approved downstream checks according to consent and workflow.

**Alternate flows**
- Missing fields: show errors and allow correction.
- Applicant saves draft: save securely and allow resume within configured expiry.
- Duplicate suspected: route for review.
- Consent not granted: explain which optional / required workflow cannot proceed; follow approved policy.

**Postconditions:** Application and consent evidence are stored; status is visible.

## UC-02 Review KYC exception
**Primary actor:** KYC Operations Reviewer  
**Preconditions:** Case is in authorised review queue.  
**Main flow:** Reviewer opens case → verifies permitted evidence → records resolution and reason → submits → system logs actor/time/evidence → case progresses or remains held.  
**Exceptions:** Insufficient evidence, suspected fraud or restricted case is escalated to authorised team.  
**Postconditions:** KYC outcome and audit record updated.

## UC-03 Review referred credit application
**Primary actor:** Credit Officer  
**Preconditions:** Valid application, available required checks and referral reason.  
**Main flow:** Officer reviews application and permitted supporting data → checks policy guidance → records approve/decline/return-for-information outcome → adds reason and evidence → second approver acts where required → system records policy version and audit event.  
**Postconditions:** Decision state updated; customer-safe communication is triggered where approved.

## UC-04 Accept offer and initiate disbursal
**Primary actor:** Applicant / Operations  
**Preconditions:** Approved, current offer; required disclosure available.  
**Main flow:** Applicant reviews offer and KFS → accepts → completes agreement → system runs pre-disbursal checks → sends idempotent instruction → reconciles confirmation → notifies applicant.  
**Exceptions:** Offer expired, agreement failed, pre-check failed or disbursal pending/failed.  
**Postconditions:** Application is disbursed only after positive confirmation; otherwise remains in a controlled pending/exception state.
