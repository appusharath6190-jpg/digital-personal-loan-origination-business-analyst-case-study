# Business Problem Statement

## Context
A fictional Indian retail bank offers unsecured personal loans through branches, a website and partner channels. Application information is re-entered into multiple systems and reviewed by separate operations, KYC and credit teams.

## Problem
Applicants have limited visibility into application status. Operations teams spend time checking document completeness and chasing missing information. Credit reviewers receive inconsistent application packs, while managers lack a single view of turnaround time, pending cases and decline reasons.

## Business impact (illustrative baseline)
- Application-to-decision turnaround is assumed to average 2 business days.
- 18% of applications are assumed to be returned for missing or unclear information.
- Applicants contact the bank repeatedly to understand status.
- Management reporting requires manual consolidation.

These are fictional assumptions for portfolio demonstration, not actual bank metrics.

## Objective
Design a digital loan-origination workflow that captures applications once, validates mandatory information, routes cases for KYC and credit assessment, records decisions with reasons, and provides status visibility.

## Scope
In scope: application capture, consent, document upload, KYC status, bureau/credit-check integration status, affordability inputs, decision workflow, exception handling, customer notifications, audit trail and operational reporting.

Out of scope: building a credit-scoring model, making real lending decisions, integrating with live bureau/KYC providers, and actual disbursal of funds.

## Success measures
Reduce avoidable rework, improve application status visibility, increase completeness at first submission and provide reliable operational KPIs. Targets must be validated with business stakeholders before implementation.
