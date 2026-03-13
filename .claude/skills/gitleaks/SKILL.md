---
name: gitleaks
description: Scan for secrets and sensitive data before committing code. Use this before any git commit to prevent accidentally exposing API keys, tokens, passwords, or other sensitive information.
allowed-tools: Bash, Grep, Glob, Read
---

# Gitleaks - Secret Detection

Scan the codebase for secrets and sensitive data that should not be committed to version control.

## When to Use

- Before committing code changes
- When reviewing code for security issues
- When adding new configuration files
- Periodically as a security audit

## What to Check For

Scan for these patterns in staged files and the codebase:

### API Keys and Tokens
- `api_key`, `apikey`, `api-key`
- `access_token`, `auth_token`, `bearer`
- `secret_key`, `private_key`
- Patterns like `sk-`, `pk_`, `ghp_`, `gho_`, `github_pat_`

### Credentials
- `password`, `passwd`, `pwd`
- `credential`, `credentials`
- `secret`
- Base64-encoded strings that look like credentials

### Cloud Provider Keys
- AWS: `AKIA`, `aws_access_key_id`, `aws_secret_access_key`
- GCP: `-----BEGIN PRIVATE KEY-----`
- Azure: `DefaultEndpointsProtocol`

### Database Connection Strings
- `mongodb://`, `postgres://`, `mysql://`, `redis://`
- Connection strings with embedded passwords

### Files to Always Check
- `.env`, `.env.*` files
- `config.json`, `settings.json`
- Any file with `secret`, `credential`, or `key` in the name

## Scan Process

1. First, check what files are staged:
   ```bash
   git diff --cached --name-only
   ```

2. For each staged file, scan for sensitive patterns

3. Also check for sensitive files that shouldn't be committed:
   - `.env` files (should be in .gitignore)
   - Private key files (`*.pem`, `*.key`)
   - Credential files

4. Report findings with file paths and line numbers

## Output Format

Report any findings as:
```
WARNING: Potential secret found
File: path/to/file.gml
Line: 42
Pattern: api_key = "..."
Recommendation: Remove or use environment variables
```

## For GameMaker Projects

GameMaker-specific files to watch:
- `options/*/options_*.yy` - May contain app IDs or keys
- Any `.gml` files with hardcoded URLs or credentials
- `datafiles/` directory for config files

## Safe Patterns (Ignore These)

- Variable names without values (e.g., `var api_key;`)
- Comments explaining what keys are for
- Placeholder values like `YOUR_API_KEY_HERE`
- Test/mock credentials clearly labeled as such
