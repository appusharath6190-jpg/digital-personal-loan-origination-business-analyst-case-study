# Non-Functional Requirements

| ID | Category | Requirement |
|---|---|---|
| NFR-01 | Security | Enforce least-privilege role-based access and strong authentication for staff. |
| NFR-02 | Privacy | Collect only approved, necessary data for stated purposes; record consent and access. |
| NFR-03 | Encryption | Protect sensitive data in transit and at rest using institution-approved standards. |
| NFR-04 | Auditability | Record actor/system, timestamp, action, old/new state where appropriate, correlation ID and source. |
| NFR-05 | Availability | Define service availability and recovery objectives with business owners; no unsupported SLA assumed. |
| NFR-06 | Performance | Agree response-time targets for application save, validation, queue search and status retrieval through non-functional testing. |
| NFR-07 | Scalability | Support forecast peak application volumes and burst traffic from campaigns. |
| NFR-08 | Resilience | Handle dependency outage, retry safely, queue messages and reconcile uncertain outcomes. |
| NFR-09 | Accessibility | Follow institution-approved accessibility and inclusive design standards. |
| NFR-10 | Data quality | Validate mandatory fields, source, freshness and consistency; identify incomplete / conflicting records. |
| NFR-11 | Retention | Apply approved legal retention and deletion schedules; do not invent retention periods. |
| NFR-12 | Observability | Provide metrics, structured logs, alerts and trace IDs across integrations. |
| NFR-13 | Interoperability | Use documented, versioned APIs / event contracts and secure service-to-service authentication. |
| NFR-14 | Explainability | Retain understandable reason codes and policy version for decisions and manual referrals. |
