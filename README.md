# homebrew-vault

Homebrew tap for [Haex Vault](https://haex.space).

## Install

```sh
brew tap haex-space/vault
brew install --cask haex-vault
```

## Update

```sh
brew upgrade --cask haex-vault
```

## How it stays current

`.github/workflows/sync-cask.yml` polls
[haex-space/haex-vault](https://github.com/haex-space/haex-vault) for new
releases every 30 minutes (configurable via cron) and rewrites
`Casks/haex-vault.rb` with the new version + checksums. A manual run is
also available via the **Sync Cask** workflow's *Run workflow* button.

The workflow runs entirely inside this repo and uses the auto-provisioned
`GITHUB_TOKEN` to push back. No PAT, no cross-repo auth.
