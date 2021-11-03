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
    - `supabase link --url $STAGING_DB_URL --setup-staging`
    - create `develop` branch locally
    - push `develop` to origin
    - wait for deploy
- new migration
    - add new migration
    - commit & push
    - wait for deploy
- release to prod
    - create PR to `main`
    - merge PR
    - wait for deploy

## End state

- prod & staging in sync
- main & develop branches
- new migrations deployed & tested on staging first, then deployed to prod

## Limitations

- no setup/teardown of dbs - manually create projects
- manual handling of seed (can't use seed scripts)
