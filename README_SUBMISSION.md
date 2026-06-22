Submission checklist and remaining tasks

- Add repository secrets (Team Lead):
  - `DOCKERHUB_USERNAME` (repository secret)
  - `DOCKERHUB_TOKEN` (repository secret)

- Create GitHub Environments and add environment secrets (Team Lead):
  - `development` environment: `RENDER_DEPLOY_HOOK_DEV_URL`
  - `staging` environment: `RENDER_DEPLOY_HOOK_STAGING_URL`
  - `production` environment: `RENDER_DEPLOY_HOOK_PROD_URL`

- Verify branch protection rules for `develop`, `staging`, `main` and require corresponding CI checks.

- Ensure `TermProject_Spring2026.docx` is committed to repository root and Table 1 is filled.

- Trigger CI by opening PRs to `develop` (one per team member) and verify images are pushed to Docker Hub with tags:
  - `:dev-latest`, `:dev-<sha>`
  - `:staging-latest`, `:staging-<sha>`
  - `:prod-latest`, `:prod-<sha>`

- Trigger CD by merging to branches and verify Render receives deploy hook POSTs and sites update.

- Take required screenshots for submission (environments, CI runs, Docker tags, CD runs, live Render pages, docx in repo).

Notes:
- I updated CI workflows to use `docker/build-push-action@v5` and added `.gitignore` to keep build artifacts out of the repo.
- I can continue: add PR templates, generate the TermProject docx skeleton, or help the Team Lead configure secrets in the GitHub UI.