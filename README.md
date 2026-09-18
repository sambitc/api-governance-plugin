# API Governance Copilot Plugin

A starter GitHub Copilot Agent Plugin for reviewing Gravitee APIs using reusable
governance knowledge, schemas, examples, and validation scripts.

> Important: The Gravitee CRD and policy examples in this package are intentionally
> illustrative starter examples. Replace them with the exact CRDs, policies, schemas,
> and known-good examples used by your organization before production use.

## What is included?

- `com.github.copilot/agents/api-governance.agent.md`
  - Optional Copilot custom agent for interactive investigation/fixing.
- `skills/gravitee-api/SKILL.md`
  - Reusable Gravitee governance workflow and context.
- `skills/gravitee-api/schemas/api-crd.yaml`
  - Small illustrative CRD reference.
- `skills/gravitee-api/examples/`
  - Illustrative OAuth2 and rate-limit examples.
- `skills/gravitee-api/scripts/validate.sh`
  - Starter deterministic validation script.
- `github-actions/api-governance.yml`
  - Example CI workflow for deterministic PR enforcement.
- `context/governance-rules.md`
  - Example organization-level governance rules.

## Recommended architecture

Use GitHub Actions for deterministic enforcement:

    Pull Request
        |
        +--> OpenAPI/Spectral checks
        +--> Kubernetes/CRD validation
        +--> Governance rules
        +--> Security checks
        |
        +--> PASS / FAIL

Use the Copilot skill/agent for developer assistance:

    Developer question
        |
        +--> Gravitee governance skill
        +--> Rules + schema + examples
        +--> Explain / investigate / optionally fix

Do not rely on an LLM alone to enforce mandatory compliance controls.

## Local development

From the parent directory:

    copilot plugin install ./api-governance-plugin

Verify:

    copilot plugin list

Then start Copilot and inspect available plugins/skills/agents.

Exact CLI commands can vary with your installed Copilot CLI version. See:
https://docs.github.com/en/copilot/how-tos/copilot-cli/customize-copilot/plugins-creating

## Production hardening checklist

1. Replace the illustrative CRD with your exact Gravitee CRD schema.
2. Replace sample policies with known-good organizational examples.
3. Add your real Spectral ruleset.
4. Add kubeconform/kubeval or another approved schema validator.
5. Add security checks.
6. Add unit tests for governance rules.
7. Decide which checks are advisory and which block a PR.
8. Version the plugin and document breaking changes.
9. Publish/distribute through your organization's approved Copilot plugin mechanism.
