# Low-Fidelity Wireframe Specification

## Screen 1 – Applicant journey
Header: Personal Loan | Application progress indicator  
Sections: Personal details; Employment & income; Existing obligations; Loan request; Consent & declarations.  
Actions: Save draft; Continue; Submit.  
Validation: Inline errors, field-level guidance, accessible labels and clear distinction between required / optional fields.

## Screen 2 – Application status
Application reference; current customer-safe status; last updated time; next action; document checklist; support / grievance contact. Do not expose internal risk scores, fraud flags or sensitive review notes.

## Screen 3 – Operations work queue
Filters: status, age, channel, assigned team, exception category.  
Columns: masked application reference, submitted time, status, ageing, SLA indicator, assigned reviewer.  
Actions: open case, assign, escalate. Export permission must be restricted and logged.

## Screen 4 – Credit review case
Tabs: application summary; verified income/obligations; KYC status; bureau status; policy outcome/reason; supporting evidence; audit history.  
Actions: approve / decline / request information / refer, subject to role permissions. Mandatory reason and maker-checker controls where applicable.

## Screen 5 – Offer acceptance
Show approved amount, tenure, rate, fees, APR, instalment, repayment schedule, KFS and agreement. Customer must be able to review before acceptance. Exact layout and wording require Legal/Compliance approval.

This is a textual low-fidelity specification; a visual prototype can be created in Figma as a separate portfolio enhancement.
