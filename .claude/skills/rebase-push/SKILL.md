name: Rebase and Push

# Rebase and Push

Standardizes the full pre-push quality gate so bugs don't land on the branch.

## Steps

1. **Lint** — run `npm run lint` (backend) or `flutter analyze` (app/watch_app) depending on what changed; fix all errors before continuing.
2. **Type-check** — run `npm run type-check` for TypeScript changes; fix all errors.
3. **Self-review** — re-read every changed file and check for: null/undefined handling, missing `await`, unhandled error paths, type coercions, and V1 API references that should be V2.
4. **Fix** — patch any issues found in the self-review before moving on.
5. **Rebase** — rebase the branch onto `origin/main`, squashing fixup commits.
6. **Confirm** — show the user the final commit list and the `git diff --stat` summary; ask for explicit confirmation before pushing.
7. **Push** — only after the user confirms, push the branch.
