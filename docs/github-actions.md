# GitHub Actions

Workflows use `Area / Operation` display names and area-prefixed kebab-case
filenames. Public workflows stay focused on one operator intent; repeated step
sequences live in reusable workflows or local composite actions.

## Workflows

| Workflow | Trigger | Purpose |
| --- | --- | --- |
| `CI / GitHub Actions` | Relevant pull requests and `main` pushes | Run actionlint and Zizmor over workflows and local actions. |
| `CI / Backend` | Backend pull requests, manual calls, and reusable calls | Type-check, lint, test, and container-build the backend. |
| `CI / Generated contracts` | Contract-related pull requests and `main` pushes | Regenerate protobuf outputs and reject stale committed contracts. |
| `CI / Flutter` | Flutter-related pull requests and `main` pushes | Verify shared packages, phone app, and watch app. |
| `CI / Secret scan` | Every pull request and `main` push | Reject tracked credential files and common hardcoded-secret patterns. |
| `Backend / Publish and deploy staging` | Backend-related pushes to `main` | Verify and publish the ARM64 image, then deploy its immutable SHA tag to staging. |
| `Backend / Deploy production` | Manual | Deploy an existing immutable SHA tag to production. |
| `Android / Release to Play` | Manual | Verify, build, and upload a new phone release. |
| `Android / Promote Play release` | Manual | Promote a tested Google Play release between tracks. |
| `Android / Shorebird patch` | Manual | Patch an explicitly selected Shorebird release. |

## Shared actions

- [`actions/deploy-backend/action.yml`](../.github/actions/deploy-backend/action.yml) owns
  image validation, GHCR authentication, and VM deployment for both backend
  targets. The caller jobs retain the `production` environment so its secrets
  are resolved before entering the action.
- [`actions/verify-phone/action.yml`](../.github/actions/verify-phone/action.yml) is the
  canonical phone translation, analysis, test, and coverage sequence.
- [`actions/prepare-android-release/action.yml`](../.github/actions/prepare-android-release/action.yml)
  owns Java setup, Android caches, signing-file preparation, credential checks,
  and Shorebird setup for releases and patches.

External actions are pinned to full commit SHAs. The trailing version comments
are retained so Dependabot can update the pins through the weekly
`github-actions` configuration in [`dependabot.yml`](../.github/dependabot.yml).
The contracts workflow installs its pinned protoc archive directly and verifies
the archive checksum before extracting it.

## Required checks

When repository rules require checks by name, use the stable job display names:

- `Lint and audit GitHub Actions`
- `Verify backend`
- `Verify generated contracts`
- `Verify shared packages`
- `Verify phone app`
- `Verify watch app`
- `Scan tracked files for secrets`

Run the same workflow syntax check locally with:

```bash
go run github.com/rhysd/actionlint/cmd/actionlint@v1.7.12
```

Backend deployment behavior and required environment secrets are documented in
the [backend deployment runbook](../backend/DEPLOYMENT.md).
