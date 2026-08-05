# Daneel — a second brain

> A second brain operated by Claude Code. It captures what happens in your week —
> conversations, decisions, projects, learnings — routes it to the right place,
> and gives it back when you need it: preparing a 1:1, writing a status update,
> or building the case for your own progression.

Daneel is a **plain-Markdown second brain plus a set of Claude Code skills**. Your
notes stay yours — readable, portable, versionable. Claude reads the folder,
understands the structure, and writes back into it following the conventions
below.

## Why this one

There is a thriving community of "AI second brain" setups (see Credits). Almost
all of them are built around tasks and notes. **Daneel is built for someone whose
week is made of *people and decisions***: recurring 1:1s, a people CRM, a growth
framework, meeting prep, and an evidence ledger for your own progression.

Who that is, concretely: an engineer or a lead at a company, but equally a
consultant with a client roster, a therapist with a caseload, a coach or trainer
with clients. If your work accumulates in conversations and judgment calls rather
than in artifacts, this is for you. Anything company-specific (ticketing,
calendars, a formal competency map) lives in an optional **module** — the core
knows nothing about it.

## What's in the box

```
CLAUDE.md            # how Daneel behaves — the operating contract
docs/                # philosophy, structure conventions, skills, how to customize
skills/              # the gestures: sync, catchup, weekly, notas, prep, review-prep, braindump, status-update, audit
.claude-plugin/      # Claude Code plugin manifest
templates/           # empty scaffolds you copy into your own Daneel
modules/             # optional domain-specific extensions (calendar, ticketing, chat)
install.sh           # registers Daneel as a Claude Code plugin
```

## Quickstart

1. **Clone the repo** into a folder that will be both the framework and your
   live Daneel (single-folder model — see `CONTRIBUTING.md`).
2. **Register the plugin.**
   ```bash
   bash install.sh
   ```
   This creates a symlink at `~/.claude/skills/daneel` so Claude Code
   auto-loads the skills on the next session.
3. **Make it yours.** Open `docs/customize.md` and fill the placeholders in
   `CLAUDE.md` (your role, who you're accountable to, the people you work with,
   current work) and the `growth/` files. Or create a `CLAUDE.local.md` for
   private context (gitignored).
4. **First session.** Restart Claude Code, open the folder, and just talk:
   drop meeting notes, ask what's open, or run a skill (`/notas`, `/sync`,
   `/catchup`).
5. **Need tool integrations?** See `modules/` — optional extensions for
   calendar, ticketing, and chat tools.

## The layers (30-second tour)

- **`tasks.md`** — the index of "what am I working on". Each item references its
  track; details live in the track, not here.
- **`projects/`** — work organized as *area → Epic → track*. Durable context,
  decisions, data.
- **`team/`** — a people CRM. One dossier per person (reports, your referente,
  peers, clients, stakeholders): who they are, where they're growing, a running
  log of 1:1s.
- **`growth/`** — your professional growth as a system: `objectives`,
  `growth-framework` (what you're growing toward), `evidence` (the brag doc for
  reviews or your own case), `principles` (learnings).
- **`reference.md`** — durable general knowledge not tied to a project or person
  (the Resources layer). Promote a big topic to its own file when it grows.
- **`prep/`** — ephemeral meeting prep; its durable residue gets routed out.
- **`archive/`** — closed tracks and dead projects.

See `docs/structure.md` for the full conventions and `docs/skills.md` for the
gestures.

## Credits

Daneel stands on patterns proven by the community:

- **Garry Tan — `gstack` / `gbrain`**: operating gears, brain-first lookup,
  tiered enrichment of people profiles.
- **Cole Medin — [`second-brain-starter`](https://github.com/coleam00/second-brain-starter)**:
  bootstrap wizard, memory-centric design, lifecycle hooks.
- **[`COG-second-brain`](https://github.com/huytieu/COG-second-brain)**:
  framework-vs-content separation, people CRM, model routing.
- **Julia Evans — "Get your work recognized: write a brag document"**: the
  evidence ledger behind `growth/evidence.md`.
- **Andrej Karpathy — the "LLM Wiki" pattern**: plain Markdown you own,
  compiled and linked by the model.

## License

MIT — see `LICENSE`.
