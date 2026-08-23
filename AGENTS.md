# Repository agent instructions

## Documentation

- Keep docs beside the code or workflow they describe.
- Use `docs/plans/` for cross-component plans and `backend/docs/` for backend
  design, release, metrics, and operational notes.
- Keep component READMEs, `backend/DEPLOYMENT.md`, `SECURITY.md`, and other
  local guidance in their current locations.
- Use one canonical doc per topic; condense superseded or duplicated plans.
- Use lowercase kebab-case names for new docs and update the relevant index.
- Use accurate relative links. Never include secrets, environment contents, or
  temporary investigation notes.

## Before finishing

- Search for duplicate or obsolete Markdown references with `rg`.
- Verify relative links and run `git diff --check`.
- Update [`docs/README.md`](docs/README.md) or the applicable component index.
- Preserve unrelated working-tree changes.
