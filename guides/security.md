# Guide: Security Protocols

## 1. Secret Management
**Rule**: NEVER commit secrets.
- **Check**: Before `git add`, scan for: `API_KEY`, `PASSWORD`, `SECRET`, `TOKEN`.
- **Action**: If found, add to `.gitignore` and use `.env`.

## 2. Destructive Commands
**Block List**:
- `rm -rf /` (Root wipe)
- `git push --force` (History rewrite - unless explicitly asked)
- `mkfs` (Format disk)

## 3. External Executables
**Rule**: Verify source before running `curl | bash`.
- **Action**: Download -> Inspect -> Execute.
