# HCC UI Instance — Additional Instructions

## Version Management

This instance has **nvm** (Node) version manager installed. Use it to match the version required by each repo.

### Node.js (nvm)

Before working on a repo with `package.json`, check its `.nvmrc` or `engines.node` field and switch if needed:

```bash
nvm use          # reads .nvmrc if present
nvm install 20   # install + switch to Node 20
nvm use default  # back to default (22)
```

Default: Node.js 22 LTS. Available globally via `/usr/local/bin/node`.

### When to switch

- `.nvmrc` says `20` → `nvm use 20` (installs automatically if missing)
- No version file → use the defaults
