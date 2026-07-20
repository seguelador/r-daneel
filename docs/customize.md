# Customize Daneel to you

This is manual for now (an onboarding wizard is on the roadmap). Fifteen minutes
and you're running. First pick a model (see `CONTRIBUTING.md` for the details):

- **Single-folder (recommended):** this repo *is* your logbook. Your private
  content and a gitignored `CLAUDE.local.md` live here but are never committed.
  Skip step 1 — you're already in the folder. Do steps 2–5, but put your personal
  context in `CLAUDE.local.md` instead of editing the tracked `CLAUDE.md`, and
  fill the content dirs (`team/`, `growth/`, …) in place.
- **Two-folder:** keep this repo pristine and run your logbook from a separate
  copy. Follow steps 1–5 as written.

### Seeding from an existing logbook
If you already have context you don't want to lose, the "onboarding" is a one-time
seed: copy your existing `team/`, `projects/`, `growth/`, `tasks.md`, `archive/`
into the content dirs, and distill your personal context into `CLAUDE.local.md`
(single-folder) or the copied `CLAUDE.md` (two-folder). If your Claude Code memory
lived under a different project path, copy its `memory/` across too.

## 1. Create your own logbook folder (two-folder model)

Keep it **separate** from this framework repo — your real content shouldn't live
in the framework. Copy in:

- `CLAUDE.md`
- `.claude/` (skills + `settings.local.json.example` → `settings.local.json`)
- the **contents** of `templates/` (not the `templates/` folder itself):
  `tasks.md`, `projects/`, `prep/`, `archive/`, `team/`, `growth/`
- `docs/` (optional — handy in-logbook reference; its paths are logbook-relative)

Rename the `*.template.md` files to drop `.template` (e.g.
`growth/evidence.template.md` → `growth/evidence.md`).

## 2. Fill the placeholders in `CLAUDE.md`

Replace every `{{PLACEHOLDER}}`:

| Placeholder | What it is |
|-------------|-----------|
| `{{NAME}}` | Your name |
| `{{ROLE}}` | Your role (e.g. Technical Leader, EM) |
| `{{AT_COMPANY}}` | " at <Company>" or empty |
| `{{TEAM_OR_PROJECT}}` | What you lead |
| `{{TEAM_DESCRIPTION}}` | e.g. "~5 engineers" |
| `{{MANAGER}}` | Your manager's name |
| `{{MAIN_PROJECT}}` | Your main project |
| `{{ANY_STANDING_CONTEXT}}` | Ramp period, quarter focus, etc. |
| `{{CLAUDE_MEMORY_DIR}}` | Your Claude Code memory dir (see below) |

**Memory dir:** Claude Code keeps per-project memory under
`~/.claude/projects/<slug>/memory/`. Point `{{CLAUDE_MEMORY_DIR}}` at yours, or
just tell Claude "use your memory dir" — it knows its own path. Don't hardcode
someone else's.

## 3. Seed `growth/`

This is what makes evidence detection work — do it first.

- **`growth-framework.md`** — the anchor. Two options:
  - You have a **formal** framework (a role/competency map from your company)?
    Summarize its dimensions and expectations, and map yourself + your team to it.
  - You don't? **Build one from conversation.** Open a session and tell Daneel
    what you're aiming for professionally and toward which role; have it draft the
    framework, then refine.
- **`objectives.md`** — your year's objectives.
- Leave `evidence.md` and `principles.md` as empty ledgers — they fill as you
  work.

## 4. Seed `team/`

Create a dossier per person you work with closely (start with your reports and
your manager) from `team/TEMPLATE.md`. Don't over-invest — stubs are fine;
they'll mature.

## 5. First session

Open Claude Code in your logbook folder and just talk. Drop some meeting notes,
ask "what's open?", or run `/catchup` at the end of a day. Daneel will propose
where things go — you confirm.

## At MELI?

Enable `modules/meli/` — see `modules/meli/README.md`. It layers company-specific
behavior (calendar rules, Jira/Slack, tone) on top of the generic core without
touching it.
