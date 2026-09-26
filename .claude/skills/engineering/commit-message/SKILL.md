---
name: commit-message
description: Derive a repo's commit message conventions from its git history and write a message that matches them. Use before writing ANY git commit message, in any repository — including amends and rewordings.
---

# Commit Messages

There is no default commit style. Every repo has its own, and the history is
the spec.

## 1. Read the history

Run in the repo you're committing to:

    git log -20 --format='---%n%s%n%b'

If the change touches a specific area, also look at that area's own history:

    git log -10 --format='---%n%s%n%b' -- <path>

Ignore merge commits, bot commits (dependabot, CI, release automation) and
auto-generated messages — they don't reflect how humans write here.

## 2. Infer the conventions

- **language** — English / Russian / mixed. Never switch it.
- **title** — prefix convention (`feat:`, `fix:`, `[JIRA-123]`, bare
  imperative), capitalization, typical length, trailing period.
- **body** — do commits have one at all? If yes: typical length, lowercase vs
  sentence case, prose vs bullets, how thoughts are separated.
- **detail level** — what the repo explains (motivation, consequences) vs what
  it omits (file names, variable names, restating the diff).
- **tone** — casual vs formal, first person vs impersonal.
- **trailers and refs** — issue links, `Refs:`, ticket IDs, co-author lines.

## 3. Write it

- Never invent a convention the history doesn't show. No bodies in the log →
  don't write one. Bare titles → don't add a prefix.
- Inconsistent history → follow the most recent commits and the ones touching
  the same area.
- Empty or fresh repo with no usable history → short imperative title, no body
  unless the change actually needs explaining.
- Explain why the change matters, not which files moved.
- Never wrap the commit message in a code block.
- Do not add Co-Authored-By: Claude tags at the end of commit messages.

## Priority

A repo's own `CLAUDE.md` / `AGENTS.md` / `CONTRIBUTING.md` commit convention
overrides everything inferred from history. Check for one before running the
log.
