# Security policy

## Reporting a vulnerability

Please use GitHub's private vulnerability reporting/security-advisory flow. Do not open a public issue containing credentials, personal data, or exploit details.

Include the affected component, reproduction steps, impact, and any suggested mitigation. Maintainers should acknowledge the report, assess severity, and coordinate disclosure after a fix is available.

## Credentials

Do not commit provider keys, Firebase Admin service accounts, signing material, database passwords, SSH keys, environment files, or pre-authenticated storage URLs. Use ignored local env files, GitHub environment secrets, or a dedicated secrets manager.

If a credential reaches Git—even briefly—assume it is compromised:

1. Revoke or rotate it at the provider.
2. Replace it in every deployment environment.
3. Remove it from the current tree.
4. Rewrite Git history before publishing, then force-update all refs and require collaborators to re-clone.
5. Review provider audit logs for unauthorized use.

Run `./scripts/check-secrets.sh` before pushing. The scanner is a guardrail, not a substitute for review or provider-side restrictions.
