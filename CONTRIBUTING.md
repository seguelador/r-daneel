# Contributing & maintenance

Daneel is **both** a shareable framework and, for most users, their live Daneel.
Keeping those two roles clean is the whole game. This doc explains the model, what
you may and may not touch, and how to contribute improvements.

## Two ways to run it

- **Single-folder (recommended):** this repo *is* your Daneel. Framework files
  are tracked; your private content is gitignored; your personal context lives in
  a gitignored `CLAUDE.local.md`. You "live" the framework and contribute back
  in place.
- **Two-folder:** keep this repo pristine as the framework, and run your Daneel
  from a separate copy. More separation, but you sync improvements by hand.

Either way, the rule below holds.

## Tracked vs. gitignored — the line that matters

| Framework — **tracked, shared** (change via branch/PR) | Instance — **gitignored, private** (edit freely) |
|---|---|
| `AGENTS.md`, `CLAUDE.md` | `AGENTS.local.md`, `CLAUDE.local.md` |
| `skills/*`, `.claude/skills/*` | `tasks.md` |
| `.agents/hooks.json`, `.claude/settings.json` | `.claude/settings.local.json` |
| `docs/*` | `projects/`, `team/`, `growth/` |
| `templates/*` | `prep/`, `archive/` |
| `modules/*` | |
| `README.md`, `CONTRIBUTING.md`, `LICENSE`, `.gitignore` | |

The `.gitignore` enforces this: your private content, `CLAUDE.local.md`, and
`AGENTS.local.md` are never seen by git, so they can never be committed to the
framework.

## Guardrails (for you and for Daneel)

1. **During a normal Daneel session, only instance files get written.** Capturing
   a meeting, prepping a 1:1, routing context — all of that touches
   `team/`, `projects/`, `growth/`, `tasks.md`, etc. Never framework files.
2. **Changing a framework file is a deliberate act.** Improving a skill, a doc, a
   template, `AGENTS.md`, or a module is a *framework change* — do it on a
   branch (see below), not as a side effect of daily use.
3. **If a Daneel action seems to need a framework edit, stop and flag it.** It's
   usually a sign the change belongs in `AGENTS.local.md` / `CLAUDE.local.md`
   (personal) or is actually a framework improvement to do deliberately.
4. **Never `git add -f` your private content.** If `git status` ever shows
   `team/`, `growth/`, etc., the `.gitignore` is broken — fix it before committing.

## Contribution workflow

For any framework improvement:

1. Branch: `git checkout -b improve-<thing>`.
2. Make the change to the tracked framework files only.
3. Sanity-check it doesn't leak personal/instance data:
   `git diff --cached` should show only framework files.
4. Commit. When the repo is published to a remote, open a PR; while local, merge
   to your main branch.

### Before publishing (one-time)
- Confirm no private content was ever committed:
  `git log --all --name-only | grep -E '^(team|growth|projects|tasks\.md|prep|archive|CLAUDE\.local)'`
  should return nothing.
- Decide the license/visibility (internal vs public).

## Keeping your instance current with framework updates

In the single-folder model, framework updates are just commits on your main
branch — nothing to sync. In the two-folder model, pull the changed framework
files (skills/docs/templates/`AGENTS.md`) into your instance by hand, the way the
original migration was done in slices.

## Roadmap (deferred, by design)

- Onboarding wizard (auto-generate `CLAUDE.local.md` + seed content).
- Autonomy hooks (SessionStart/End/PreCompact).
- A pre-commit hook that hard-blocks committing instance content and warns on
  framework edits (today the `.gitignore` + these guardrails are enough).
- Worker agents / model routing.
