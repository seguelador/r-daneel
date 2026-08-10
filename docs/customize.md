# Customize Daneel to you

Fifteen minutes and you're running.

## The model: single-folder (recommended)

This repo *is* your Daneel. Framework files are tracked by git; your private
content is gitignored and never committed. Your personal context lives in a
`CLAUDE.local.md` — gitignored, yours alone, never touches the framework.

> **Using the two-folder model instead?** See the note at the bottom of this page.

---

## 1. Create your `CLAUDE.local.md`

Copy the example and fill it in — your name, role, referente, team, timezone.
Five minutes.

```bash
cp templates/CLAUDE.local.md.example CLAUDE.local.md
```

Leave the `{{placeholders}}` in `CLAUDE.md` as-is — `CLAUDE.local.md` overrides
them in practice. Daneel reads both files; yours wins.

---

## 2. Seed `growth/`

This is what makes evidence detection work — do it before your first session.

- **`growth-framework.md`** — the anchor. Two options:
  - You have a **formal** framework (a role/competency map from an employer, a
    professional body, a certification or licensing path)? Summarize its
    dimensions and expectations, and map yourself + the people you develop to it.
  - You don't? **Build one from conversation.** Open a session, tell Daneel what
    you're aiming for professionally and toward what, and have it draft the
    framework. Refine from there.
- **`objectives.md`** — your year's objectives.
- Leave `evidence.md` and `principles.md` as empty ledgers — they fill as you work.

---

## 3. Seed `team/`

Create a dossier per person you work with closely — start with whoever recurs
most (reports, your referente, key clients or collaborators). Copy
`team/TEMPLATE.md` for each one. Stubs are fine; they'll mature over time.

---

## 4. First session

Open Claude Code in this folder. To verify the plugin loaded correctly, run:

```
/catchup
```

Daneel will ask what happened in your day and guide you from there. If it
responds with context about the skills and asks what you want to do — it's
working. From here, just use it: drop meeting notes, ask what's open, or prep
a 1:1 with `/prep <name>`.

---

## 5. Optional: add a module

If your context has its own tooling or vocabulary — a ticketing system, a
corporate calendar, a formal competency map, a session format specific to your
practice — that belongs in a **module**, not in the core:

```bash
git clone <module-repo> modules/<name>
```

Then follow the module's own README to compose it onto your `CLAUDE.local.md`.
Modules are gitignored here, so they never leak into the framework. See
`modules/README.md` for the pattern and how to build your own.

---

## Seeding from an existing Daneel

If you already have context you don't want to lose, the "onboarding" is a
one-time seed: copy your existing `team/`, `projects/`, `growth/`, `tasks.md`,
`archive/` into the repo in place, and distill your personal context into
`CLAUDE.local.md`. If your Claude Code memory lived under a different project
path, copy its `memory/` across too.

---

## Note: two-folder model

If you want to keep this repo completely pristine as a framework — no personal
content ever in the same folder — you can run your Daneel from a separate copy:

1. Copy into a new folder: `CLAUDE.md`, `.claude/`, and the **contents** of
   `templates/` (not the `templates/` folder itself). Rename `*.template.md`
   files to drop `.template`.
2. Fill the `{{placeholders}}` directly in the copied `CLAUDE.md`, including
   `{{CLAUDE_MEMORY_DIR}}` — point it at your Claude Code memory dir under
   `~/.claude/projects/<slug>/memory/`.
3. Follow steps 2–5 above in your new folder.

Framework updates reach you by pulling changed files from this repo by hand.
Most people find the single-folder model simpler.
