# API Governance Context

These rules are starter examples. Replace them with the organization's approved
API governance policy.

## Required metadata

Every managed API should have:

- API name
- API version
- description
- owner/team
- lifecycle/status
- contact information where applicable

## Naming

Use the organization's approved naming convention.

Example:

    <domain>-<service>-api

Examples:

    customer-profile-api
    shipment-tracking-api

## Versioning

Use an explicit API version.

Prefer semantic or organization-approved versioning.

Do not introduce a breaking change under the same API version.

## Authentication

External APIs must use an approved authentication mechanism.

Do not invent Gravitee policies. Check the approved policy examples and schema.

## Rate limiting

Public/external APIs should use an approved rate-limiting strategy where required.

The exact limit and period must come from the service's approved requirements.

## Documentation

APIs should document:

- purpose
- authentication
- endpoints
- request/response examples
- error responses
- rate limits where applicable

## Security

Check for:

- accidental secrets
- insecure endpoints
- overly broad access
- missing authentication
- unsafe CORS configuration
- inappropriate exposure of internal services

## Change safety

Prefer the smallest change necessary.

Never silently change production behavior.

When a rule is ambiguous, report the ambiguity instead of inventing a policy.
