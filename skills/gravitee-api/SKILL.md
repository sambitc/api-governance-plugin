---
name: gravitee-api
description: Review, explain, and validate Gravitee API definitions using reusable governance rules, schemas, examples, and validation tooling. Use when creating, reviewing, troubleshooting, or modifying Gravitee APIs.
---

# Gravitee API Governance Skill

## Purpose

Use this skill when working with Gravitee API definitions, Gravitee Kubernetes
resources, API policies, authentication, rate limiting, headers, or related
governance questions.

## Source of truth

Use these resources in this skill:

- `schemas/api-crd.yaml` for the supplied illustrative CRD reference.
- `examples/` for known-good example patterns.
- `../../../../context/governance-rules.md` for starter governance rules.

For a real organization, replace these starter files with the organization's
approved schemas and rules.

## Review workflow

1. Identify the API resource being reviewed.
2. Determine which schema applies.
3. Check required metadata.
4. Check API naming and versioning.
5. Check authentication.
6. Check rate limiting.
7. Check policies and policy configuration.
8. Check required headers and CORS where applicable.
9. Check security concerns.
10. Compare with known-good examples.
11. Run deterministic validation where available.

## Finding format

Report each issue as:

    Severity:
    File:
    Field:
    Finding:
    Evidence:
    Suggested fix:

Use these severity levels:

- ERROR: likely invalid or mandatory violation.
- WARNING: governance concern requiring review.
- INFO: recommendation or improvement.

## Modification rules

When the user asks to fix an API:

- Make the smallest safe change.
- Do not remove valid configuration unnecessarily.
- Do not invent unsupported fields.
- Re-run validation after changes.
- Clearly state what was changed.

## Important

This skill is guidance and context. Mandatory compliance should be enforced by
deterministic CI checks such as schema validation, Spectral, custom tests, or
other approved tooling.
