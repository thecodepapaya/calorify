# Repository agent instructions

## Documentation

- Keep docs beside the code or workflow they describe.
- Use `docs/plans/` for plans and `backend/docs/` for backend design, tooling,
  deployment, and operational notes.
- Use `backend/evals/` for eval case files and dated evaluation records, and
  `backend/TODO.md` for the backend roadmap and open work.
- A doc describes current behaviour; a plan describes intended work. When a
  plan is implemented, move what was built into the doc, move what is left
  into `backend/TODO.md`, and delete the plan.
- Keep component READMEs and other local guidance in their current locations.
- Use one canonical doc per topic; condense superseded or duplicated plans.
- Use lowercase kebab-case names for new docs and update the relevant index.
- Use accurate relative links. Never include secrets, environment contents, or
  temporary investigation notes.
- Keep responses concise and to the point. No walls of text, sycophancy or flattery.

## Before finishing

- Search for duplicate or obsolete Markdown references with `rg`.
- Verify relative links and run `git diff --check`.
- Update [`docs/README.md`](docs/README.md) or the applicable component index.
- Preserve unrelated working-tree changes.
