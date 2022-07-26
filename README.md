# Multi env POC

## Start state

- prod db already setup with CLI
- fresh staging db
- only main branch on repo
- CLI installed and migrations already setup on repo
- GH actions for release & staging

## POC steps

- staging setup
    - take `STAGING_DB_URL`
    - GitHub: set secret `STAGING_DB_URL`
    - `supabase db remote set $STAGING_DB_URL`
    - create `develop` branch locally
    - push `develop` to origin
    - wait for staging deploy
- push new migrations to staging/prod
    - create local git branch, e.g. `some-branch`
    - add new migration locally with `supabase db commit` or `supabase migrations new`
    - git commit & push to `origin/some-branch`
    - create PR from `origin/some-branch` to `origin/develop`/`origin/main`
    - merge PR
    - wait for deploy

## End state

- prod & staging in sync
- main & develop branches
- new migrations deployed & tested on staging first, then deployed to prod

## Limitations

- no setup/teardown of dbs - manually create projects
- manual handling of seed (can't use seed scripts)
